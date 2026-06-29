package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Emoji Generator API. */
public data class ImageAIEmojiGeneratorParams(
    /** Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val image: FileInput,
    /** Expression (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
    public val expression: String,
    /** Style (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
    public val style: String,
    /** Scene (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
    public val scene: String,
    /** Filler Text (English only). Max 20 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
    public val filler: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "expression" to expression,
        "style" to style,
        "scene" to scene,
        "filler" to filler,
    )
}
