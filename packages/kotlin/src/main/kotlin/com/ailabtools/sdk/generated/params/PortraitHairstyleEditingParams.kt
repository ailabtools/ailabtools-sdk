package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Hairstyle Changer API. */
public data class PortraitHairstyleEditingParams(
    /** image_target */
    public val imageTarget: FileInput,
    /** Hairstyle type. 0: Bangs. 1: Long hair. 2: Bangs with long hair. 3: Increase the number of hair. 901: Straight hair. */
    public val hairType: Int? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image_target" to imageTarget,
        "hair_type" to hairType,
    )
}
