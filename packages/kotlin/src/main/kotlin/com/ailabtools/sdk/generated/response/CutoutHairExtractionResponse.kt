package com.ailabtools.sdk.generated.response

import com.ailabtools.sdk.ApiResponse
import com.ailabtools.sdk.ErrorDetail
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject

/** Typed response data. */
@Serializable
public data class CutoutHairExtractionResponseData(
    @SerialName("elements")
    public val elements: List<JsonElement>? = null,
    @SerialName("image_url")
    public val imageUrl: String? = null,
    @SerialName("width")
    public val width: Int? = null,
    @SerialName("height")
    public val height: Int? = null,
    @SerialName("x")
    public val x: Int? = null,
    @SerialName("y")
    public val y: Int? = null,
)

/** Typed response for Hairstyle Extraction API. */
@Serializable
public data class CutoutHairExtractionResponse(
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
    public val data: CutoutHairExtractionResponseData? = null,
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
    @SerialName("elements")
    public val elements: List<JsonElement>? = null,
    @SerialName("image_url")
    public val imageUrl: String? = null,
    @SerialName("width")
    public val width: Int? = null,
    @SerialName("height")
    public val height: Int? = null,
    @SerialName("x")
    public val x: Int? = null,
    @SerialName("y")
    public val y: Int? = null,
) : ApiResponse
