package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for HD Universal Background Removal API. */
public data class CutoutHDUniversalBackgroundRemovalParams(
    /** - Image format: `JPEG` `JPG` `BMP` `PNG` - Image size: No more than 40 MB. - Image resolution: Larger than 32x32px, smaller than 10000x10000px. */
    public val image: FileInput,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
    )
}
