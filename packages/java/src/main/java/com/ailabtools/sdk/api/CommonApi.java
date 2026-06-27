package com.ailabtools.sdk.api;

import com.ailabtools.sdk.http.Requester;
import com.ailabtools.sdk.generated.params.CommonQueryAsyncTaskResultParams;
import com.ailabtools.sdk.generated.response.CommonQueryAsyncTaskResultResponse;
import com.ailabtools.sdk.generated.params.CommonQueryCreditsParams;
import com.ailabtools.sdk.generated.response.CommonQueryCreditsResponse;

/** AILabTools common API methods. */
public final class CommonApi {
    private final Requester requester;

    public CommonApi(Requester requester) {
        this.requester = requester;
    }

    public CommonQueryAsyncTaskResultResponse commonQueryAsyncTaskResult(CommonQueryAsyncTaskResultParams params) {
        return requester.request("GET", "/api/common/query-async-task-result", params.toMap(), false, CommonQueryAsyncTaskResultResponse.class);
    }

    public CommonQueryCreditsResponse commonQueryCredits(CommonQueryCreditsParams params) {
        return requester.request("GET", "/api/common/query-credits", params.toMap(), false, CommonQueryCreditsResponse.class);
    }

}
