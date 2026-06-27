package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Fat Filter API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIFatFilterResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIFatFilterResponseData data;

    public PortraitAIFatFilterResponseData getData() { return data; }
}
