package com.ailabtools.sdk

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonObject

/** Structured details returned by the AILabTools API. */
@Serializable
public data class ErrorDetail(
    public val message: String? = null,
    public val field: String? = null,
    public val reason: String? = null,
)

/** Base exception for transport, serialization, and task-polling failures. */
public open class AILabToolsException(
    message: String,
    cause: Throwable? = null,
) : RuntimeException(message, cause)

/** Non-successful HTTP or API response. */
public class ApiException(
    message: String,
    public val statusCode: Int,
    public val requestId: String? = null,
    public val logId: String? = null,
    public val errorCode: Int? = null,
    public val detail: ErrorDetail? = null,
    public val raw: JsonObject? = null,
) : AILabToolsException(message)

/** Common response metadata implemented by every generated response model. */
public interface ApiResponse {
    public val requestId: String?
    public val logId: String?
    public val errorCode: Int?
    public val errorCodeString: String?
    public val errorMessage: String?
    public val errorDetail: ErrorDetail?
    public val taskId: String?
    public val taskStatus: Int?
}
