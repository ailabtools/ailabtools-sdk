package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Face Analyzer API. */
public data class PortraitFaceAnalyzerParams(
    /** image */
    public val image: FileInput,
    /** The maximum number of faces processed. When set to 1, only the largest face in the image is detected. A smaller value leads to faster processing speed. */
    public val maxFaceNum: Int? = null,
    /** Whether to return attributes such as age, gender, mood, etc. AttributesInfo is returned for up to 5 faces with the largest area, and AttributesInfo for more than 5 faces (the 6th and later faces) are not referenced. */
    public val faceAttributesType: String? = null,
    /** Whether to enable image rotation recognition support. When the face in the picture is rotated and there is no exif information in the picture, if you don't turn on the picture rotation recognition support, you can't detect and recognize the face in the picture correctly. If you are sure that the picture contains exif information or you are sure that the face in the input picture will not be rotated, please do not turn on this parameter. If this parameter is turned on, the overall time required may increase by hundreds of milliseconds. 0: Close. 1: Open. */
    public val needRotateDetection: Int? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "max_face_num" to maxFaceNum,
        "face_attributes_type" to faceAttributesType,
        "need_rotate_detection" to needRotateDetection,
    )
}
