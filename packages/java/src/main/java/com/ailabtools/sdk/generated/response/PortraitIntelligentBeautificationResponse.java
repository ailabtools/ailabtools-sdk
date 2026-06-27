package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Smart Beauty API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitIntelligentBeautificationResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitIntelligentBeautificationResponseData data;

    public PortraitIntelligentBeautificationResponseData getData() { return data; }
}
