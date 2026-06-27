package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Eyebrows API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIEyebrowsResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIEyebrowsResponseData data;

    public PortraitAIEyebrowsResponseData getData() { return data; }
}
