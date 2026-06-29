package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Intelligent Composition API. */
public data class ImageIntelligentCompositionParams(
    /** image */
    public val image: FileInput,
    /** The number of output boxes. */
    public val numBoxes: Int? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "num_boxes" to numBoxes,
    )
}
