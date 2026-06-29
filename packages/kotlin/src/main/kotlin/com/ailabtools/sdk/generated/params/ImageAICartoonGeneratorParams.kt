package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Cartoon Generator API. */
public data class ImageAICartoonGeneratorParams(
    /** Task Type. async: Asynchronous tasks. */
    public val taskType: String,
    /** image */
    public val image: FileInput,
    /** Style. Range of values */
    public val type: String,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "task_type" to taskType,
        "image" to image,
        "type" to type,
    )
}
