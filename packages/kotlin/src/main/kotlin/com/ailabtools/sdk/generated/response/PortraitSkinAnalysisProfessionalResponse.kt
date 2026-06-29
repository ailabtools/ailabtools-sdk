package com.ailabtools.sdk.generated.response

import com.ailabtools.sdk.ApiResponse
import com.ailabtools.sdk.ErrorDetail
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject

/** Typed response data. */
@Serializable
public data class PortraitSkinAnalysisProfessionalResponseData(
    @SerialName("left_side_result")
    public val leftSideResult: String? = null,
    @SerialName("right_side_result")
    public val rightSideResult: String? = null,
    @SerialName("face_rectangle")
    public val faceRectangle: JsonObject? = null,
    @SerialName("result")
    public val result: JsonObject? = null,
)

/** Typed response for Skin Analyze Pro API. */
@Serializable
public data class PortraitSkinAnalysisProfessionalResponse(
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
    public val data: PortraitSkinAnalysisProfessionalResponseData? = null,
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
    @SerialName("left_side_result")
    public val leftSideResult: String? = null,
    @SerialName("right_side_result")
    public val rightSideResult: String? = null,
    @SerialName("face_rectangle")
    public val faceRectangle: JsonObject? = null,
    @SerialName("result")
    public val result: JsonObject? = null,
) : ApiResponse
