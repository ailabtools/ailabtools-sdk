package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Remove Objects Pro API. */
public data class ImageRemoveObjectsProParams(
    /** Original image. */
    public val image: FileInput,
    /** Mask image. */
    public val mask: FileInput,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "mask" to mask,
    )
}
