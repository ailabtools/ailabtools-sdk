package com.ailabtools.sdk

import com.ailabtools.sdk.api.BackgroundApi
import com.ailabtools.sdk.api.CommonApi
import com.ailabtools.sdk.api.CutoutApi
import com.ailabtools.sdk.api.ImageApi
import com.ailabtools.sdk.api.PortraitApi
import com.ailabtools.sdk.generated.params.CommonQueryAsyncTaskResultParams
import com.ailabtools.sdk.generated.response.CommonQueryAsyncTaskResultResponse
import java.io.Closeable
import kotlinx.coroutines.delay
import kotlinx.serialization.json.Json
import okhttp3.OkHttpClient

/** Coroutine-based entry point for the AILabTools Kotlin and Android SDK. */
public class AILabClient @JvmOverloads constructor(
    apiKey: String,
    baseUrl: String = "https://www.ailabapi.com",
    timeoutMillis: Long = 120_000,
    httpClient: OkHttpClient = OkHttpClient(),
    json: Json = defaultJson(),
) : Closeable {
    private val requester: Requester

    public val common: CommonApi
    public val cutout: CutoutApi
    public val image: ImageApi
    public val portrait: PortraitApi
    public val background: BackgroundApi

    init {
        require(apiKey.isNotBlank()) { "AILabTools API key must not be blank" }
        require(timeoutMillis > 0) { "timeoutMillis must be greater than zero" }
        requester = Requester(httpClient, json, apiKey, baseUrl, timeoutMillis)
        common = CommonApi(requester)
        cutout = CutoutApi(requester)
        image = ImageApi(requester)
        portrait = PortraitApi(requester)
        background = BackgroundApi(cutout)
    }

    /**
     * Polls an asynchronous task until completion or timeout.
     *
     * A status of `2` is successful and `3` is failed.
     */
    @JvmOverloads
    public suspend fun waitForTask(
        taskId: String,
        intervalMillis: Long = 5_000,
        timeoutMillis: Long = 300_000,
        throwOnFailure: Boolean = true,
    ): CommonQueryAsyncTaskResultResponse {
        require(taskId.isNotBlank()) { "taskId must not be blank" }
        require(intervalMillis >= 0) { "intervalMillis must not be negative" }
        require(timeoutMillis > 0) { "timeoutMillis must be greater than zero" }
        val deadline = System.nanoTime() + timeoutMillis * 1_000_000
        while (System.nanoTime() <= deadline) {
            val response = common.commonQueryAsyncTaskResult(
                CommonQueryAsyncTaskResultParams(taskId = taskId),
            )
            val status = response.data?.taskStatus ?: response.taskStatus
            if (status == 2) return response
            if (status == 3) {
                if (throwOnFailure) {
                    throw AILabToolsException("AILabTools task failed: $taskId")
                }
                return response
            }
            if (intervalMillis > 0) delay(intervalMillis)
        }
        throw AILabToolsException("AILabTools task timed out: $taskId")
    }

    /** Cancels requests currently owned by this client without shutting down a shared OkHttp client. */
    override fun close() {
        requester.close()
    }

    public companion object {
        private fun defaultJson(): Json = Json {
            ignoreUnknownKeys = true
            explicitNulls = false
            isLenient = true
        }
    }
}
