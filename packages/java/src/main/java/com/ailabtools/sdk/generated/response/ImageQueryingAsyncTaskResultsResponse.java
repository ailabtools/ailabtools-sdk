package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Querying Async Task Results API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageQueryingAsyncTaskResultsResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageQueryingAsyncTaskResultsResponseData data;

    public ImageQueryingAsyncTaskResultsResponseData getData() { return data; }
}
