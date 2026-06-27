package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Beard Styling API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIBeardStylingResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIBeardStylingResponseData data;

    public PortraitAIBeardStylingResponseData getData() { return data; }
}
