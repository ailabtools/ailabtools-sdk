package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Face Slimming API. */
public data class PortraitIntelligentFaceSlimmingParams(
    /** image */
    public val image: FileInput,
    /** Standard strength. The higher the value, the more pronounced the face slimming effect. */
    public val slimDegree: Double? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "slim_degree" to slimDegree,
    )
}
