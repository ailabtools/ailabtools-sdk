package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Breast Expansion API. */
public data class PortraitAIBreastExpansionParams(
    /** Task Type. <li>`async`: Asynchronous tasks.</li> */
    public val taskType: String? = null,
    /** person_image */
    public val personImage: FileInput,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "task_type" to taskType,
        "person_image" to personImage,
    )
}
