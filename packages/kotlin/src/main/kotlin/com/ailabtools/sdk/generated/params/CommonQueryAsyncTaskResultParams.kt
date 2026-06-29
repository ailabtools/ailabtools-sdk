package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Querying Async Task Results API. */
public data class CommonQueryAsyncTaskResultParams(
    /** The task_id returned by the asynchronous API. */
    public val taskId: String,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = mapOf(
        "task_id" to taskId,
    )

    override fun bodyFields(): Map<String, Any?> = emptyMap()
}
