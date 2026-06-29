package com.ailabtools.sdk

import java.io.IOException
import java.util.Collections
import java.util.concurrent.TimeUnit
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.serialization.DeserializationStrategy
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.JsonObject
import kotlinx.serialization.json.contentOrNull
import kotlinx.serialization.json.intOrNull
import kotlinx.serialization.json.jsonObject
import kotlinx.serialization.json.jsonPrimitive
import okhttp3.Call
import okhttp3.Callback
import okhttp3.HttpUrl.Companion.toHttpUrl
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.Response

internal class Requester(
    client: OkHttpClient,
    private val json: Json,
    private val apiKey: String,
    baseUrl: String,
    timeoutMillis: Long,
) {
    private val baseUrl = baseUrl.trimEnd('/')
    private val client = client.newBuilder()
        .connectTimeout(timeoutMillis, TimeUnit.MILLISECONDS)
        .readTimeout(timeoutMillis, TimeUnit.MILLISECONDS)
        .writeTimeout(timeoutMillis, TimeUnit.MILLISECONDS)
        .callTimeout(timeoutMillis, TimeUnit.MILLISECONDS)
        .build()
    private val activeCalls = Collections.synchronizedSet(mutableSetOf<Call>())

    suspend fun <T> request(
        method: String,
        path: String,
        parameters: RequestParams,
        serializer: DeserializationStrategy<T>,
    ): T {
        val query = parameters.queryFields().filterValues { it != null }
        val body = parameters.bodyFields().filterValues { it != null }
        val urlBuilder = (baseUrl + "/" + path.trimStart('/')).toHttpUrl().newBuilder()
        query.forEach { (name, value) -> urlBuilder.addQueryParameter(name, stringify(value)) }

        val requestBuilder = Request.Builder()
            .url(urlBuilder.build())
            .header("ailabapi-api-key", apiKey)
        if (method.equals("GET", ignoreCase = true)) {
            requestBuilder.get()
        } else {
            val multipart = MultipartBody.Builder().setType(MultipartBody.FORM)
            body.forEach { (name, value) ->
                when (value) {
                    is FileInput -> multipart.addFormDataPart(
                        name,
                        value.filename,
                        value.bytes.toRequestBody(value.contentType.toMediaType()),
                    )
                    else -> multipart.addFormDataPart(name, stringify(value))
                }
            }
            requestBuilder.method(method, multipart.build())
        }

        val call = client.newCall(requestBuilder.build())
        activeCalls += call
        val response = try {
            call.await()
        } catch (error: IOException) {
            val reason = error.message ?: error.javaClass.simpleName
            throw AILabToolsException("AILabTools request failed: $reason", error)
        } finally {
            activeCalls -= call
        }

        response.use {
            val text = it.body?.string().orEmpty()
            val payload = try {
                json.parseToJsonElement(text).jsonObject
            } catch (error: Exception) {
                throw ApiException(
                    message = if (text.isBlank()) "Empty response" else "Invalid JSON response",
                    statusCode = it.code,
                )
            }
            validateResponse(it, payload)
            return try {
                json.decodeFromString(serializer, text)
            } catch (error: Exception) {
                throw AILabToolsException("Unable to deserialize AILabTools response", error)
            }
        }
    }

    fun close() {
        activeCalls.toList().forEach(Call::cancel)
    }

    private fun validateResponse(response: Response, payload: JsonObject) {
        val errorCode = payload["error_code"]?.jsonPrimitive?.intOrNull ?: 0
        if (response.isSuccessful && errorCode == 0) return
        val detail = payload["error_detail"]?.let {
            runCatching { json.decodeFromJsonElement(ErrorDetail.serializer(), it) }.getOrNull()
        }
        val message = detail?.message
            ?: payload["error_msg"]?.jsonPrimitive?.contentOrNull
            ?: "AILabTools API Error"
        throw ApiException(
            message = message,
            statusCode = response.code,
            requestId = payload["request_id"]?.jsonPrimitive?.contentOrNull,
            logId = payload["log_id"]?.jsonPrimitive?.contentOrNull,
            errorCode = errorCode,
            detail = detail,
            raw = payload,
        )
    }

    private fun stringify(value: Any?): String = when (value) {
        is Iterable<*> -> value.joinToString(",")
        is Array<*> -> value.joinToString(",")
        else -> value.toString()
    }

    private suspend fun Call.await(): Response = suspendCancellableCoroutine { continuation ->
        continuation.invokeOnCancellation { cancel() }
        enqueue(object : Callback {
            override fun onFailure(call: Call, error: IOException) {
                if (continuation.isActive) continuation.resumeWithException(error)
            }

            override fun onResponse(call: Call, response: Response) {
                if (continuation.isActive) {
                    continuation.resume(response)
                } else {
                    response.close()
                }
            }
        })
    }
}
