package com.ailabtools.sdk.generated.response

import com.ailabtools.sdk.ApiResponse
import com.ailabtools.sdk.ErrorDetail
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject

/** Typed response data. */
@Serializable
public data class CutoutClothingBackgroundRemovalResponseData(
    @SerialName("elements")
    public val elements: List<JsonElement>? = null,
    @SerialName("0")
    public val field0: JsonObject? = null,
    @SerialName("image_url")
    public val imageUrl: String? = null,
    @SerialName("1")
    public val field1: JsonObject? = null,
    @SerialName("class_url")
    public val classUrl: JsonObject? = null,
    @SerialName("tops")
    public val tops: String? = null,
    @SerialName("coat")
    public val coat: String? = null,
    @SerialName("skirt")
    public val skirt: String? = null,
    @SerialName("pants")
    public val pants: String? = null,
    @SerialName("bag")
    public val bag: String? = null,
    @SerialName("shoes")
    public val shoes: String? = null,
    @SerialName("hat")
    public val hat: String? = null,
)

/** Typed response for Costume Background Removal API. */
@Serializable
public data class CutoutClothingBackgroundRemovalResponse(
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
    public val data: CutoutClothingBackgroundRemovalResponseData? = null,
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
    @SerialName("0")
    public val field0: JsonObject? = null,
    @SerialName("image_url")
    public val imageUrl: String? = null,
    @SerialName("1")
    public val field1: JsonObject? = null,
    @SerialName("class_url")
    public val classUrl: JsonObject? = null,
    @SerialName("tops")
    public val tops: String? = null,
    @SerialName("coat")
    public val coat: String? = null,
    @SerialName("skirt")
    public val skirt: String? = null,
    @SerialName("pants")
    public val pants: String? = null,
    @SerialName("bag")
    public val bag: String? = null,
    @SerialName("shoes")
    public val shoes: String? = null,
    @SerialName("hat")
    public val hat: String? = null,
) : ApiResponse
