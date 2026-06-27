package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Face Beauty Advanced API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFacialBeautificationAdvancedResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitFacialBeautificationAdvancedResponseData data;

    public PortraitFacialBeautificationAdvancedResponseData getData() { return data; }
}
