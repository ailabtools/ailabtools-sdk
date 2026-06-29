package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Eyeshadow Try-On API. */
public data class PortraitAIEyeshadowTryOnParams(
    /** Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val image: FileInput,
    /** Built-in eyeshadow preset. Provide this field or `image_template`. If both are provided, `eyeshadow_style` takes precedence. See [Supported eyeshadow styles](https://www.ailabtools.com/docs/ai-portrait/editing/ai-eyeshadow/api#eyeshadow_style). Allowed values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36. */
    public val eyeshadowStyle: String? = null,
    /** Reference image for eyeshadow transfer. Provide this field or `eyeshadow_style`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val imageTemplate: FileInput? = null,
    /** Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. */
    public val aspectRatio: String? = null,
) : RequestParams {
    init {
        require(eyeshadowStyle != null || imageTemplate != null) { "At least one of eyeshadowStyle, imageTemplate is required" }
    }
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "eyeshadow_style" to eyeshadowStyle,
        "image_template" to imageTemplate,
        "aspect_ratio" to aspectRatio,
    )
}
