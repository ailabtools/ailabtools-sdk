package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Live Photos API. */
public data class PortraitLivePhotosParams(
    /** image_target */
    public val imageTarget: FileInput,
    /** Live photo type. 0: Avatar version. 1: Full body version. */
    public val type: Int? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image_target" to imageTarget,
        "type" to type,
    )
}
