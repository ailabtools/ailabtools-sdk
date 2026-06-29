package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Skin Beauty API. */
public data class PortraitIntelligentSkinRetouchingParams(
    /** image */
    public val image: FileInput,
    /** Dermabrasion intensity. The higher the value, the less visible the skin texture. */
    public val retouchDegree: Double? = null,
    /** Whitening strength. The higher the value, the whiter the skin. */
    public val whiteningDegree: Double? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "retouch_degree" to retouchDegree,
        "whitening_degree" to whiteningDegree,
    )
}
