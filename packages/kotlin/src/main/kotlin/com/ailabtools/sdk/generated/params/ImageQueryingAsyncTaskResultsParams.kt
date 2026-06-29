package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Querying Async Task Results API. */
public data class ImageQueryingAsyncTaskResultsParams(
    /** The request_id returned by the asynchronous API. */
    public val jobId: String,
    /** Asynchronous task type. HD_COLOUR_MIGRATION: HD Color Migration GENERATE_CARTOONIZED_IMAGE: AI Cartoon Generator */
    public val type: String,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = mapOf(
        "job_id" to jobId,
        "type" to type,
    )

    override fun bodyFields(): Map<String, Any?> = emptyMap()
}
