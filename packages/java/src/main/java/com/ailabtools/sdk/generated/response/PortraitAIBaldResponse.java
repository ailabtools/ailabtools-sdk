package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Bald API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIBaldResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIBaldResponseData data;

    public PortraitAIBaldResponseData getData() { return data; }
}
