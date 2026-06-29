package com.ailabtools.sdk.generated.response

import com.ailabtools.sdk.ApiResponse
import com.ailabtools.sdk.ErrorDetail
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject

/** Typed response data. */
@Serializable
public data class ImageAINailArtResponseData(
    @SerialName("request_id")
    public val requestId: String? = null,
    @SerialName("log_id")
    public val logId: String? = null,
    @SerialName("error_code")
    public val errorCode: Int? = null,
    @SerialName("error_code_str")
    public val errorCodeStr: String? = null,
    @SerialName("error_msg")
    public val errorMsg: String? = null,
    @SerialName("error_detail")
    public val errorDetail: JsonObject? = null,
    @SerialName("task_type")
    public val taskType: String? = null,
    @SerialName("task_id")
    public val taskId: String? = null,
)

/** Typed response for AI Nail Art API. */
@Serializable
public data class ImageAINailArtResponse(
    @SerialName("request_id")
    public override val requestId: String? = null,
    @SerialName("log_id")
    public override val logId: String? = null,
    @SerialName("error_code")
    public override val errorCode: Int? = null,
    @SerialName("error_code_str")
    public override val errorCodeString: String? = null,
    @SerialName("error_msg")
    public override val errorMessage: String? = null,
    @SerialName("error_detail")
    public override val errorDetail: ErrorDetail? = null,
    @SerialName("data")
    public val data: ImageAINailArtResponseData? = null,
    @SerialName("image")
    public val image: String? = null,
    @SerialName("ratio")
    public val ratio: JsonElement? = null,
    @SerialName("task_type")
    public val taskType: String? = null,
    @SerialName("task_id")
    public override val taskId: String? = null,
    @SerialName("task_status")
    public override val taskStatus: Int? = null,
) : ApiResponse
