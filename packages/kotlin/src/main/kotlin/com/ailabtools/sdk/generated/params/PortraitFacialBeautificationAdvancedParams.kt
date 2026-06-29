package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Face Beauty Advanced API. */
public data class PortraitFacialBeautificationAdvancedParams(
    /** image */
    public val image: FileInput,
    /** Whitening level: 0 means no whitening, 100 represents the highest level. */
    public val whitening: Int? = null,
    /** Skin smoothing level: 0 means no skin smoothing, 100 represents the highest level. */
    public val smoothing: Int? = null,
    /** Face slimming level: 0 means no face slimming, 100 represents the highest level. */
    public val faceLifting: Int? = null,
    /** Eye enlargement level: 0 means no eye enlargement, 100 represents the highest level. */
    public val eyeEnlarging: Int? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "whitening" to whitening,
        "smoothing" to smoothing,
        "face_lifting" to faceLifting,
        "eye_enlarging" to eyeEnlarging,
    )
}
