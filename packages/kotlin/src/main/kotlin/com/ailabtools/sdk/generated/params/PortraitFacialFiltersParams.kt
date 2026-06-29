package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Face Filters API. */
public data class PortraitFacialFiltersParams(
    /** image */
    public val image: FileInput,
    /** Picture style. More Details */
    public val resourceType: String,
    /** Filter intensity. */
    public val strength: Double,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "resource_type" to resourceType,
        "strength" to strength,
    )
}
