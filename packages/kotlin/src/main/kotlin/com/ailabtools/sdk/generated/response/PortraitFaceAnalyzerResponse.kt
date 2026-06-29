package com.ailabtools.sdk.generated.response

import com.ailabtools.sdk.ApiResponse
import com.ailabtools.sdk.ErrorDetail
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject

/** Typed response data. */
@Serializable
public data class PortraitFaceAnalyzerResponseData(
    @SerialName("image_width")
    public val imageWidth: Int? = null,
    @SerialName("image_height")
    public val imageHeight: Int? = null,
    @SerialName("face_detail_infos")
    public val faceDetailInfos: List<JsonElement>? = null,
    @SerialName("face_rect")
    public val faceRect: JsonObject? = null,
    @SerialName("x")
    public val x: Int? = null,
    @SerialName("y")
    public val y: Int? = null,
    @SerialName("width")
    public val width: Int? = null,
    @SerialName("height")
    public val height: Int? = null,
    @SerialName("face_detail_attributes_info")
    public val faceDetailAttributesInfo: JsonObject? = null,
    @SerialName("age")
    public val age: Int? = null,
    @SerialName("beauty")
    public val beauty: Int? = null,
    @SerialName("emotion")
    public val emotion: JsonObject? = null,
    @SerialName("type")
    public val type: Int? = null,
    @SerialName("probability")
    public val probability: Double? = null,
    @SerialName("eye")
    public val eye: JsonObject? = null,
    @SerialName("glass")
    public val glass: JsonObject? = null,
    @SerialName("eye_open")
    public val eyeOpen: JsonObject? = null,
    @SerialName("eyelid_type")
    public val eyelidType: JsonObject? = null,
    @SerialName("eye_size")
    public val eyeSize: JsonObject? = null,
    @SerialName("eyebrow")
    public val eyebrow: JsonObject? = null,
    @SerialName("eyebrow_density")
    public val eyebrowDensity: JsonObject? = null,
    @SerialName("eyebrow_curve")
    public val eyebrowCurve: JsonObject? = null,
    @SerialName("eyebrow_length")
    public val eyebrowLength: JsonObject? = null,
    @SerialName("gender")
    public val gender: JsonObject? = null,
    @SerialName("hair")
    public val hair: JsonObject? = null,
    @SerialName("length")
    public val length: JsonObject? = null,
    @SerialName("bang")
    public val bang: JsonObject? = null,
    @SerialName("color")
    public val color: JsonObject? = null,
    @SerialName("hat")
    public val hat: JsonObject? = null,
    @SerialName("style")
    public val style: JsonObject? = null,
    @SerialName("head_pose")
    public val headPose: JsonObject? = null,
    @SerialName("pitch")
    public val pitch: Int? = null,
    @SerialName("yaw")
    public val yaw: Int? = null,
    @SerialName("mask")
    public val mask: JsonObject? = null,
    @SerialName("mouth")
    public val mouth: JsonObject? = null,
    @SerialName("mouth_open")
    public val mouthOpen: JsonObject? = null,
    @SerialName("moustache")
    public val moustache: JsonObject? = null,
    @SerialName("nose")
    public val nose: JsonObject? = null,
    @SerialName("shape")
    public val shape: JsonObject? = null,
    @SerialName("skin")
    public val skin: JsonObject? = null,
    @SerialName("smile")
    public val smile: Int? = null,
)

/** Typed response for Face Analyzer API. */
@Serializable
public data class PortraitFaceAnalyzerResponse(
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
    public val data: PortraitFaceAnalyzerResponseData? = null,
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
    @SerialName("image_width")
    public val imageWidth: Int? = null,
    @SerialName("image_height")
    public val imageHeight: Int? = null,
    @SerialName("face_detail_infos")
    public val faceDetailInfos: List<JsonElement>? = null,
    @SerialName("face_rect")
    public val faceRect: JsonObject? = null,
    @SerialName("x")
    public val x: Int? = null,
    @SerialName("y")
    public val y: Int? = null,
    @SerialName("width")
    public val width: Int? = null,
    @SerialName("height")
    public val height: Int? = null,
    @SerialName("face_detail_attributes_info")
    public val faceDetailAttributesInfo: JsonObject? = null,
    @SerialName("age")
    public val age: Int? = null,
    @SerialName("beauty")
    public val beauty: Int? = null,
    @SerialName("emotion")
    public val emotion: JsonObject? = null,
    @SerialName("type")
    public val type: Int? = null,
    @SerialName("probability")
    public val probability: Double? = null,
    @SerialName("eye")
    public val eye: JsonObject? = null,
    @SerialName("glass")
    public val glass: JsonObject? = null,
    @SerialName("eye_open")
    public val eyeOpen: JsonObject? = null,
    @SerialName("eyelid_type")
    public val eyelidType: JsonObject? = null,
    @SerialName("eye_size")
    public val eyeSize: JsonObject? = null,
    @SerialName("eyebrow")
    public val eyebrow: JsonObject? = null,
    @SerialName("eyebrow_density")
    public val eyebrowDensity: JsonObject? = null,
    @SerialName("eyebrow_curve")
    public val eyebrowCurve: JsonObject? = null,
    @SerialName("eyebrow_length")
    public val eyebrowLength: JsonObject? = null,
    @SerialName("gender")
    public val gender: JsonObject? = null,
    @SerialName("hair")
    public val hair: JsonObject? = null,
    @SerialName("length")
    public val length: JsonObject? = null,
    @SerialName("bang")
    public val bang: JsonObject? = null,
    @SerialName("color")
    public val color: JsonObject? = null,
    @SerialName("hat")
    public val hat: JsonObject? = null,
    @SerialName("style")
    public val style: JsonObject? = null,
    @SerialName("head_pose")
    public val headPose: JsonObject? = null,
    @SerialName("pitch")
    public val pitch: Int? = null,
    @SerialName("yaw")
    public val yaw: Int? = null,
    @SerialName("mask")
    public val mask: JsonObject? = null,
    @SerialName("mouth")
    public val mouth: JsonObject? = null,
    @SerialName("mouth_open")
    public val mouthOpen: JsonObject? = null,
    @SerialName("moustache")
    public val moustache: JsonObject? = null,
    @SerialName("nose")
    public val nose: JsonObject? = null,
    @SerialName("shape")
    public val shape: JsonObject? = null,
    @SerialName("skin")
    public val skin: JsonObject? = null,
    @SerialName("smile")
    public val smile: Int? = null,
) : ApiResponse
