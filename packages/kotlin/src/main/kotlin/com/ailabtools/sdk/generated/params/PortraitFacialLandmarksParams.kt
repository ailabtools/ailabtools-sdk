package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Facial Landmarks API. */
public data class PortraitFacialLandmarksParams(
    /** image */
    public val image: FileInput,
    /** The maximum number of faces to process. The default value is 1 (only the face with the largest area in the image is detected). */
    public val maxFaceNum: Int? = null,
    /** Returns more information about the face (by default only face_token, face frame, probability and rotation angle are returned). age: Age information. gender: Gender information. landmark4: 4 feature points. landmark72: 72 feature points. landmark150: 150 feature points. landmark201: 201 feature points. */
    public val faceField: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "max_face_num" to maxFaceNum,
        "face_field" to faceField,
    )
}
