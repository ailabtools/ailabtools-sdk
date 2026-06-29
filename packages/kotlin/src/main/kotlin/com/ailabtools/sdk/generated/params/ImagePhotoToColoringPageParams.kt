package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Photo to Coloring Page API. */
public data class ImagePhotoToColoringPageParams(
    /** Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val image: FileInput,
    /** Prompt (English only). Max 3000 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
    public val prompt: String? = null,
    /** Output Image Aspect Ratio. Allowed values: A4, auto, 1:1, 2:3, 3:2, 3:4, 4:3, 4:5, 5:4, 9:16, 16:9, 21:9. Default: A4. */
    public val imageSize: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "prompt" to prompt,
        "image_size" to imageSize,
    )
}
