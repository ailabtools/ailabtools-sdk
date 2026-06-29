package com.ailabtools.sdk.generated.response

import com.ailabtools.sdk.ApiResponse
import com.ailabtools.sdk.ErrorDetail
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject

/** Typed response data. */
@Serializable
public data class ImageAIImageCroppingResponseData(
    @SerialName("url")
    public val url: String? = null,
    @SerialName("retain_location")
    public val retainLocation: JsonObject? = null,
    @SerialName("width")
    public val width: Int? = null,
    @SerialName("height")
    public val height: Int? = null,
    @SerialName("y")
    public val y: Int? = null,
    @SerialName("x")
    public val x: Int? = null,
)

/** Typed response for AI Image Cropping API. */
@Serializable
public data class ImageAIImageCroppingResponse(
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
    public val data: ImageAIImageCroppingResponseData? = null,
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
    @SerialName("url")
    public val url: String? = null,
    @SerialName("retain_location")
    public val retainLocation: JsonObject? = null,
    @SerialName("width")
    public val width: Int? = null,
    @SerialName("height")
    public val height: Int? = null,
    @SerialName("y")
    public val y: Int? = null,
    @SerialName("x")
    public val x: Int? = null,
) : ApiResponse
