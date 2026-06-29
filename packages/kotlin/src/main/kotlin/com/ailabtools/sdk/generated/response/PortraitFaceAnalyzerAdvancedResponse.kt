package com.ailabtools.sdk.generated.response

import com.ailabtools.sdk.ApiResponse
import com.ailabtools.sdk.ErrorDetail
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject

/** Typed response data. */
@Serializable
public data class PortraitFaceAnalyzerAdvancedResponseData(
    @SerialName("pupils")
    public val pupils: List<Double>? = null,
    @SerialName("gender_list")
    public val genderList: List<Int>? = null,
    @SerialName("expressions")
    public val expressions: List<Int>? = null,
    @SerialName("face_count")
    public val faceCount: Int? = null,
    @SerialName("landmarks")
    public val landmarks: List<Double>? = null,
    @SerialName("landmark_count")
    public val landmarkCount: Int? = null,
    @SerialName("beauty_list")
    public val beautyList: List<Double>? = null,
    @SerialName("hat_list")
    public val hatList: List<Int>? = null,
    @SerialName("face_probability_list")
    public val faceProbabilityList: List<Double>? = null,
    @SerialName("glasses")
    public val glasses: List<Int>? = null,
    @SerialName("face_rectangles")
    public val faceRectangles: List<Int>? = null,
    @SerialName("pose_list")
    public val poseList: List<Double>? = null,
    @SerialName("age_list")
    public val ageList: List<Int>? = null,
    @SerialName("dense_feature_length")
    public val denseFeatureLength: Int? = null,
    @SerialName("masks")
    public val masks: List<Int>? = null,
    @SerialName("qualities")
    public val qualities: JsonObject? = null,
    @SerialName("score_list")
    public val scoreList: List<Double>? = null,
    @SerialName("blur_list")
    public val blurList: List<Double>? = null,
    @SerialName("fnf_list")
    public val fnfList: List<Double>? = null,
    @SerialName("glass_list")
    public val glassList: List<Double>? = null,
    @SerialName("illu_list")
    public val illuList: List<Double>? = null,
    @SerialName("mask_list")
    public val maskList: List<Double>? = null,
    @SerialName("noise_list")
    public val noiseList: List<Double>? = null,
)

/** Typed response for Face Analyzer Advanced API. */
@Serializable
public data class PortraitFaceAnalyzerAdvancedResponse(
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
    public val data: PortraitFaceAnalyzerAdvancedResponseData? = null,
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
    @SerialName("pupils")
    public val pupils: List<Double>? = null,
    @SerialName("gender_list")
    public val genderList: List<Int>? = null,
    @SerialName("expressions")
    public val expressions: List<Int>? = null,
    @SerialName("face_count")
    public val faceCount: Int? = null,
    @SerialName("landmarks")
    public val landmarks: List<Double>? = null,
    @SerialName("landmark_count")
    public val landmarkCount: Int? = null,
    @SerialName("beauty_list")
    public val beautyList: List<Double>? = null,
    @SerialName("hat_list")
    public val hatList: List<Int>? = null,
    @SerialName("face_probability_list")
    public val faceProbabilityList: List<Double>? = null,
    @SerialName("glasses")
    public val glasses: List<Int>? = null,
    @SerialName("face_rectangles")
    public val faceRectangles: List<Int>? = null,
    @SerialName("pose_list")
    public val poseList: List<Double>? = null,
    @SerialName("age_list")
    public val ageList: List<Int>? = null,
    @SerialName("dense_feature_length")
    public val denseFeatureLength: Int? = null,
    @SerialName("masks")
    public val masks: List<Int>? = null,
    @SerialName("qualities")
    public val qualities: JsonObject? = null,
    @SerialName("score_list")
    public val scoreList: List<Double>? = null,
    @SerialName("blur_list")
    public val blurList: List<Double>? = null,
    @SerialName("fnf_list")
    public val fnfList: List<Double>? = null,
    @SerialName("glass_list")
    public val glassList: List<Double>? = null,
    @SerialName("illu_list")
    public val illuList: List<Double>? = null,
    @SerialName("mask_list")
    public val maskList: List<Double>? = null,
    @SerialName("noise_list")
    public val noiseList: List<Double>? = null,
) : ApiResponse
