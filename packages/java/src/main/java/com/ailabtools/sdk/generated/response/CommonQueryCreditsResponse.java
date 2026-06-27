package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

/** Typed response for Querying Credits API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CommonQueryCreditsResponse extends BaseResponse {
    @JsonProperty("data")
    private List<CommonQueryCreditsResponseData> data;

    public List<CommonQueryCreditsResponseData> getData() { return data; }
}
