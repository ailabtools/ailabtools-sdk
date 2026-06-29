package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Skin Analyze Advanced API. */
public data class PortraitSkinAnalysisAdvancedParams(
    /** image */
    public val image: FileInput,
    /** Whether to restrict the quality of faces in incoming images. 0: No face quality control is performed, and skin measurement results are returned as long as the face can be detected. 1: Perform face quality control, if the face quality does not pass it will prompt an error. */
    public val faceQualityControl: Int? = null,
    /** The confidence level of the area whether to return acne, occlusion, blemishes and moles. 0: No regional confidence is returned. 1: Returns the regional confidence. */
    public val returnRectConfidence: Int? = null,
    /** Enter a comma-separated string containing the type of skin chromatography image to be returned. More Details */
    public val returnMaps: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "face_quality_control" to faceQualityControl,
        "return_rect_confidence" to returnRectConfidence,
        "return_maps" to returnMaps,
    )
}
