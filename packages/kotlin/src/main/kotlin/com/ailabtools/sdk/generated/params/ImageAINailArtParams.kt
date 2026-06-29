package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Nail Art API. */
public data class ImageAINailArtParams(
    /** Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val image: FileInput,
    /** Nail Name (English only). Max 500 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
    public val nailName: String,
    /** Nail Description (English only). Max 1000 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
    public val nailDesc: String,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "nail_name" to nailName,
        "nail_desc" to nailDesc,
    )
}
