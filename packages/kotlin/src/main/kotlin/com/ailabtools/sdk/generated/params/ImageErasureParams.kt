package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Image Erasure API. */
public data class ImageErasureParams(
    /** The image to be erased. */
    public val image: FileInput,
    /** Mask image. */
    public val userMask: FileInput,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "user_mask" to userMask,
    )
}
