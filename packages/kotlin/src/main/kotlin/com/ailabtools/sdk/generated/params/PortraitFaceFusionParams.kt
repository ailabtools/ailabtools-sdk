package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Merge Portraits API. */
public data class PortraitFaceFusionParams(
    /** Target image. */
    public val imageTarget: FileInput,
    /** Template images. */
    public val imageTemplate: FileInput,
    /** Face similarity, where a higher numerical value indicates greater similarity. 0: Consistent with the original template. 1: Maximum similarity with the target image. */
    public val sourceSimilarity: Double? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image_target" to imageTarget,
        "image_template" to imageTemplate,
        "source_similarity" to sourceSimilarity,
    )
}
