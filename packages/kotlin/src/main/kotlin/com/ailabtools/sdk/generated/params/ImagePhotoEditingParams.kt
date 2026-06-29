package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Photo Retouch API. */
public data class ImagePhotoEditingParams(
    /** Images that require a style transformation. */
    public val image: FileInput,
    /** Reference image. */
    public val style: FileInput,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "style" to style,
    )
}
