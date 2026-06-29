package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Age & Gender Swap API. */
public data class PortraitFaceAttributeEditingParams(
    /** image */
    public val image: FileInput,
    /** Face editing method. TO_KID: V1 version becomes a child. TO_OLD: V1 version becomes old man. TO_FEMALE: V1 version becomes girls. TO_MALE: V1 version becomes boys. V2_AGE: V2 version age change. V2_GENDER: v2 version gender shift. */
    public val actionType: String,
    /** Image quality (image field image quality). Please select the appropriate option based on quality information such as masking, lighting, blurriness, and integrity of the face. If selecting a higher quality causes the image to be unprocessable, please select a lower quality to try. NONE: No control is performed. LOW: Lower quality requirements. NORMAL: General quality requirements. HIGH: Higher quality requirements. More Details */
    public val qualityControl: String? = null,
    /** When multiple faces are detected in the image, use this parameter to specify the position of the face to be edited in the image, or default to the largest face in the image if not specified. More Details */
    public val faceLocation: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "action_type" to actionType,
        "quality_control" to qualityControl,
        "face_location" to faceLocation,
    )
}
