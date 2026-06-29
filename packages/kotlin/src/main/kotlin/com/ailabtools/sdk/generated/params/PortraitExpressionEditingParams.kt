package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Change Facial Expressions API. */
public data class PortraitExpressionEditingParams(
    /** image_target */
    public val imageTarget: FileInput,
    /** Expression type. 0: Big laugh. 1: Pouting. 2: Feel sad. 3: Smile. 100: Opening eyes. */
    public val serviceChoice: Int,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image_target" to imageTarget,
        "service_choice" to serviceChoice,
    )
}
