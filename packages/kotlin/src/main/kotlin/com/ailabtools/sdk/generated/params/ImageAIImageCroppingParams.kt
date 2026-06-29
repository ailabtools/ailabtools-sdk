package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Image Cropping API. */
public data class ImageAIImageCroppingParams(
    /** image */
    public val image: FileInput,
    /** The width of the target. Unit: px. */
    public val width: Int,
    /** The height of the target. Unit: px. */
    public val height: Int,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "width" to width,
        "height" to height,
    )
}
