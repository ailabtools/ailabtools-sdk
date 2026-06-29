package com.ailabtools.sdk

import com.ailabtools.sdk.generated.params.CommonQueryCreditsParams
import com.ailabtools.sdk.generated.params.ImageLosslessEnlargementParams
import com.ailabtools.sdk.generated.params.PortraitFaceAnalyzerAdvancedParams
import com.ailabtools.sdk.generated.params.PortraitHairstyleEditingPremiumParams
import java.util.concurrent.TimeUnit
import kotlinx.coroutines.runBlocking
import okhttp3.OkHttpClient
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.jupiter.api.AfterEach
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Assertions.assertFalse
import org.junit.jupiter.api.Assertions.assertThrows
import org.junit.jupiter.api.Assertions.assertTrue
import org.junit.jupiter.api.Test

internal class ClientTest {
    private var server: MockWebServer? = null

    @AfterEach
    fun stopServer() {
        server?.shutdown()
    }

    @Test
    fun `required-any-of validation rejects incomplete parameters`() {
        val error = assertThrows(IllegalArgumentException::class.java) {
            PortraitHairstyleEditingPremiumParams(
                image = FileInput.fromBytes(byteArrayOf(1), "photo.jpg"),
            )
        }

        assertEquals(
            "At least one of hairStyle, imageTemplate is required",
            error.message,
        )
    }

    @Test
    fun `upscale alias maps camel case fields to multipart wire names`() = runBlocking {
        val server = start()
        server.enqueue(success("""{"url":"https://example.com/upscaled.jpg"}"""))
        val client = client(server)

        val response = client.image.upscale(
            ImageLosslessEnlargementParams(
                image = FileInput.fromBytes(
                    "image".toByteArray(),
                    "photo.jpg",
                    "image/jpeg",
                ),
                upscaleFactor = 4,
                outputFormat = "jpg",
                outputQuality = 80,
            ),
        )
        val request = server.takeRequest(1, TimeUnit.SECONDS)!!
        val body = request.body.readUtf8()

        assertEquals("https://example.com/upscaled.jpg", response.data?.url)
        assertEquals("test-key", request.getHeader("ailabapi-api-key"))
        assertTrue(body.contains("name=\"upscale_factor\""))
        assertTrue(body.contains("name=\"output_format\""))
        assertTrue(body.contains("filename=\"photo.jpg\""))
        assertFalse(body.contains("name=\"upscaleFactor\""))
    }

    @Test
    fun `typed numeric arrays deserialize`() = runBlocking {
        val server = start()
        server.enqueue(
            success(
                """{"pupils":[1,2.5],"gender_list":[0,1],"face_count":1}""",
            ),
        )

        val response = client(server).portrait.portraitFaceAnalyzerAdvanced(
            PortraitFaceAnalyzerAdvancedParams(
                image = FileInput.fromBytes(byteArrayOf(1), "face.jpg"),
            ),
        )

        assertEquals(listOf(1.0, 2.5), response.data?.pupils)
        assertEquals(listOf(0, 1), response.data?.genderList)
        assertEquals(1, response.data?.faceCount)
    }

    @Test
    fun `API errors expose request and log identifiers`() {
        val server = start()
        server.enqueue(
            MockResponse()
                .setResponseCode(400)
                .setBody(
                    """{"error_code":1001,"request_id":"request-2","log_id":"log-2","error_detail":{"message":"Unsupported image format"}}""",
                ),
        )

        val error = assertThrows(ApiException::class.java) {
            runBlocking {
                client(server).common.commonQueryCredits(CommonQueryCreditsParams())
            }
        }

        assertEquals(400, error.statusCode)
        assertEquals(1001, error.errorCode)
        assertEquals("request-2", error.requestId)
        assertEquals("log-2", error.logId)
        assertEquals("Unsupported image format", error.message)
    }

    @Test
    fun `waitForTask polls until success`() = runBlocking {
        val server = start()
        server.enqueue(success("""{"task_status":1}"""))
        server.enqueue(success("""{"task_status":2}"""))

        val result = client(server).waitForTask(
            taskId = "task-1",
            intervalMillis = 0,
            timeoutMillis = 1_000,
        )

        assertEquals(2, result.data?.taskStatus)
        assertEquals("task_id=task-1", server.takeRequest().requestUrl?.query)
        assertEquals("task_id=task-1", server.takeRequest().requestUrl?.query)
    }

    @Test
    fun `invalid API key is rejected locally`() {
        assertThrows(IllegalArgumentException::class.java) {
            AILabClient(" ")
        }
    }

    @Test
    fun `client timeout overrides shorter injected OkHttp timeouts`() = runBlocking {
        val server = start()
        server.enqueue(
            success("[]").setBodyDelay(50, TimeUnit.MILLISECONDS),
        )
        val restrictiveClient = OkHttpClient.Builder()
            .readTimeout(1, TimeUnit.MILLISECONDS)
            .build()
        val client = AILabClient(
            apiKey = "test-key",
            baseUrl = server.url("/").toString(),
            timeoutMillis = 1_000,
            httpClient = restrictiveClient,
        )

        val response = client.common.commonQueryCredits(CommonQueryCreditsParams())

        assertEquals(0, response.errorCode)
    }

    private fun start(): MockWebServer = MockWebServer().also {
        it.start()
        server = it
    }

    private fun client(server: MockWebServer): AILabClient =
        AILabClient(
            apiKey = "test-key",
            baseUrl = server.url("/").toString(),
            timeoutMillis = 5_000,
        )

    private fun success(data: String): MockResponse =
        MockResponse().setBody("""{"error_code":0,"data":$data}""")
}
