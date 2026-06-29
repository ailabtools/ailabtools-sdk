package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Lips Color Changer API. */
public data class PortraitLipsColorChangerParams(
    /** image */
    public val image: FileInput,
    /** Lip Color Info. You can enter up to 3 lip_color_info to enable changing the lip color for up to 3 faces in a graph. Description */
    public val lipColorInfos: String,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "lip_color_infos" to lipColorInfos,
    )
}
