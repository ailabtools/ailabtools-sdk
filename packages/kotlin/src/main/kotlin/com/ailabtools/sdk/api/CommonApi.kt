package com.ailabtools.sdk.api

import com.ailabtools.sdk.Requester
import com.ailabtools.sdk.generated.params.CommonQueryAsyncTaskResultParams
import com.ailabtools.sdk.generated.response.CommonQueryAsyncTaskResultResponse
import com.ailabtools.sdk.generated.params.CommonQueryCreditsParams
import com.ailabtools.sdk.generated.response.CommonQueryCreditsResponse

/** Common API operations. */
public class CommonApi internal constructor(private val requester: Requester) {
    /** Calls [Querying Async Task Results API](https://www.ailabtools.com/docs/ai-common/async-task-results/api). */
    public suspend fun commonQueryAsyncTaskResult(parameters: CommonQueryAsyncTaskResultParams): CommonQueryAsyncTaskResultResponse =
        requester.request("GET", "/api/common/query-async-task-result", parameters, CommonQueryAsyncTaskResultResponse.serializer())

    /** Calls [Querying Credits API](https://www.ailabtools.com/docs/ai-common/querying-credits/api). */
    public suspend fun commonQueryCredits(parameters: CommonQueryCreditsParams): CommonQueryCreditsResponse =
        requester.request("GET", "/api/common/query-credits", parameters, CommonQueryCreditsResponse.serializer())

}
