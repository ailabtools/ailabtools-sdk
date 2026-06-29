package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Photography API. */
public data class ImageAIPhotographyParams(
    /** Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val image: FileInput,
    /** Style name (English only). Max 500 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
    public val styleTitle: String,
    /** Style description (English only). Max 1000 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
    public val styleDesc: String,
    /** Output Image Aspect Ratio. Allowed values: auto, 1:1, 2:3, 3:2, 3:4, 4:3, 4:5, 5:4, 9:16, 16:9, 21:9. Default: auto. */
    public val imageSize: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "style_title" to styleTitle,
        "style_desc" to styleDesc,
        "image_size" to imageSize,
    )
}
