package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Square Face Filter API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAISquareFaceFilterResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAISquareFaceFilterResponseData data;

    public PortraitAISquareFaceFilterResponseData getData() { return data; }
}
