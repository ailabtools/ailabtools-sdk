package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Lip Bite Expressions API. */
public data class PortraitAILipBiteExpressionsParams(
    /** - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val image: FileInput,
    /** Specifies the number of emoji stickers to generate in a single image. Allowed values: 1, 4, 6, 9. Default: 1. */
    public val gridCount: Int? = null,
    /** Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. */
    public val aspectRatio: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "grid_count" to gridCount,
        "aspect_ratio" to aspectRatio,
    )
}
