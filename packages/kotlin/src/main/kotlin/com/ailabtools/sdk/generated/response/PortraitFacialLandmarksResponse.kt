package com.ailabtools.sdk.generated.response

import com.ailabtools.sdk.ApiResponse
import com.ailabtools.sdk.ErrorDetail
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject

/** Typed response data. */
@Serializable
public data class PortraitFacialLandmarksResponseData(
    @SerialName("result")
    public val result: JsonObject? = null,
    @SerialName("face_num")
    public val faceNum: Int? = null,
    @SerialName("face_list")
    public val faceList: List<JsonElement>? = null,
    @SerialName("face_token")
    public val faceToken: String? = null,
    @SerialName("location")
    public val location: JsonObject? = null,
    @SerialName("left")
    public val left: Double? = null,
    @SerialName("top")
    public val top: Double? = null,
    @SerialName("width")
    public val width: Double? = null,
    @SerialName("height")
    public val height: Double? = null,
    @SerialName("rotation")
    public val rotation: Int? = null,
    @SerialName("face_probability")
    public val faceProbability: Double? = null,
    @SerialName("angle")
    public val angle: JsonObject? = null,
    @SerialName("yaw")
    public val yaw: Double? = null,
    @SerialName("pitch")
    public val pitch: Double? = null,
    @SerialName("roll")
    public val roll: Double? = null,
    @SerialName("age")
    public val age: Double? = null,
    @SerialName("gender")
    public val gender: JsonObject? = null,
    @SerialName("type")
    public val type: String? = null,
    @SerialName("probability")
    public val probability: Double? = null,
    @SerialName("landmark4")
    public val landmark4: List<JsonElement>? = null,
    @SerialName("landmark72")
    public val landmark72: List<JsonElement>? = null,
    @SerialName("landmark150")
    public val landmark150: JsonObject? = null,
    @SerialName("landmark201")
    public val landmark201: JsonObject? = null,
)

/** Typed response for Facial Landmarks API. */
@Serializable
public data class PortraitFacialLandmarksResponse(
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
    public val data: PortraitFacialLandmarksResponseData? = null,
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
    @SerialName("result")
    public val result: JsonObject? = null,
    @SerialName("face_num")
    public val faceNum: Int? = null,
    @SerialName("face_list")
    public val faceList: List<JsonElement>? = null,
    @SerialName("face_token")
    public val faceToken: String? = null,
    @SerialName("location")
    public val location: JsonObject? = null,
    @SerialName("left")
    public val left: Double? = null,
    @SerialName("top")
    public val top: Double? = null,
    @SerialName("width")
    public val width: Double? = null,
    @SerialName("height")
    public val height: Double? = null,
    @SerialName("rotation")
    public val rotation: Int? = null,
    @SerialName("face_probability")
    public val faceProbability: Double? = null,
    @SerialName("angle")
    public val angle: JsonObject? = null,
    @SerialName("yaw")
    public val yaw: Double? = null,
    @SerialName("pitch")
    public val pitch: Double? = null,
    @SerialName("roll")
    public val roll: Double? = null,
    @SerialName("age")
    public val age: Double? = null,
    @SerialName("gender")
    public val gender: JsonObject? = null,
    @SerialName("type")
    public val type: String? = null,
    @SerialName("probability")
    public val probability: Double? = null,
    @SerialName("landmark4")
    public val landmark4: List<JsonElement>? = null,
    @SerialName("landmark72")
    public val landmark72: List<JsonElement>? = null,
    @SerialName("landmark150")
    public val landmark150: JsonObject? = null,
    @SerialName("landmark201")
    public val landmark201: JsonObject? = null,
) : ApiResponse
