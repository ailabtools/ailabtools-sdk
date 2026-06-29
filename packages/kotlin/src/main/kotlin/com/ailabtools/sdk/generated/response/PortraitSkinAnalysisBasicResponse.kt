package com.ailabtools.sdk.generated.response

import com.ailabtools.sdk.ApiResponse
import com.ailabtools.sdk.ErrorDetail
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject

/** Typed response data. */
@Serializable
public data class PortraitSkinAnalysisBasicResponseData(
    @SerialName("warning")
    public val warning: List<JsonElement>? = null,
    @SerialName("face_rectangle")
    public val faceRectangle: JsonObject? = null,
    @SerialName("top")
    public val top: Double? = null,
    @SerialName("left")
    public val left: Double? = null,
    @SerialName("width")
    public val width: Double? = null,
    @SerialName("height")
    public val height: Double? = null,
    @SerialName("result")
    public val result: JsonObject? = null,
    @SerialName("left_eyelids")
    public val leftEyelids: JsonObject? = null,
    @SerialName("value")
    public val value: Int? = null,
    @SerialName("confidence")
    public val confidence: Double? = null,
    @SerialName("right_eyelids")
    public val rightEyelids: JsonObject? = null,
    @SerialName("eye_pouch")
    public val eyePouch: JsonObject? = null,
    @SerialName("dark_circle")
    public val darkCircle: JsonObject? = null,
    @SerialName("forehead_wrinkle")
    public val foreheadWrinkle: JsonObject? = null,
    @SerialName("crows_feet")
    public val crowsFeet: JsonObject? = null,
    @SerialName("eye_finelines")
    public val eyeFinelines: JsonObject? = null,
    @SerialName("glabella_wrinkle")
    public val glabellaWrinkle: JsonObject? = null,
    @SerialName("nasolabial_fold")
    public val nasolabialFold: JsonObject? = null,
    @SerialName("skin_type")
    public val skinType: JsonObject? = null,
    @SerialName("details")
    public val details: JsonObject? = null,
    @SerialName("0")
    public val field0: JsonObject? = null,
    @SerialName("1")
    public val field1: JsonObject? = null,
    @SerialName("2")
    public val field2: JsonObject? = null,
    @SerialName("3")
    public val field3: JsonObject? = null,
    @SerialName("pores_forehead")
    public val poresForehead: JsonObject? = null,
    @SerialName("pores_left_cheek")
    public val poresLeftCheek: JsonObject? = null,
    @SerialName("pores_right_cheek")
    public val poresRightCheek: JsonObject? = null,
    @SerialName("pores_jaw")
    public val poresJaw: JsonObject? = null,
    @SerialName("blackhead")
    public val blackhead: JsonObject? = null,
    @SerialName("acne")
    public val acne: JsonObject? = null,
    @SerialName("mole")
    public val mole: JsonObject? = null,
    @SerialName("skin_spot")
    public val skinSpot: JsonObject? = null,
)

/** Typed response for Skin Analyze API. */
@Serializable
public data class PortraitSkinAnalysisBasicResponse(
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
    public val data: PortraitSkinAnalysisBasicResponseData? = null,
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
    @SerialName("warning")
    public val warning: List<JsonElement>? = null,
    @SerialName("face_rectangle")
    public val faceRectangle: JsonObject? = null,
    @SerialName("top")
    public val top: Double? = null,
    @SerialName("left")
    public val left: Double? = null,
    @SerialName("width")
    public val width: Double? = null,
    @SerialName("height")
    public val height: Double? = null,
    @SerialName("result")
    public val result: JsonObject? = null,
    @SerialName("left_eyelids")
    public val leftEyelids: JsonObject? = null,
    @SerialName("value")
    public val value: Int? = null,
    @SerialName("confidence")
    public val confidence: Double? = null,
    @SerialName("right_eyelids")
    public val rightEyelids: JsonObject? = null,
    @SerialName("eye_pouch")
    public val eyePouch: JsonObject? = null,
    @SerialName("dark_circle")
    public val darkCircle: JsonObject? = null,
    @SerialName("forehead_wrinkle")
    public val foreheadWrinkle: JsonObject? = null,
    @SerialName("crows_feet")
    public val crowsFeet: JsonObject? = null,
    @SerialName("eye_finelines")
    public val eyeFinelines: JsonObject? = null,
    @SerialName("glabella_wrinkle")
    public val glabellaWrinkle: JsonObject? = null,
    @SerialName("nasolabial_fold")
    public val nasolabialFold: JsonObject? = null,
    @SerialName("skin_type")
    public val skinType: JsonObject? = null,
    @SerialName("details")
    public val details: JsonObject? = null,
    @SerialName("0")
    public val field0: JsonObject? = null,
    @SerialName("1")
    public val field1: JsonObject? = null,
    @SerialName("2")
    public val field2: JsonObject? = null,
    @SerialName("3")
    public val field3: JsonObject? = null,
    @SerialName("pores_forehead")
    public val poresForehead: JsonObject? = null,
    @SerialName("pores_left_cheek")
    public val poresLeftCheek: JsonObject? = null,
    @SerialName("pores_right_cheek")
    public val poresRightCheek: JsonObject? = null,
    @SerialName("pores_jaw")
    public val poresJaw: JsonObject? = null,
    @SerialName("blackhead")
    public val blackhead: JsonObject? = null,
    @SerialName("acne")
    public val acne: JsonObject? = null,
    @SerialName("mole")
    public val mole: JsonObject? = null,
    @SerialName("skin_spot")
    public val skinSpot: JsonObject? = null,
) : ApiResponse
