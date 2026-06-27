package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Face Beauty Pro API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFacialBeautificationProResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitFacialBeautificationProResponseData data;

    public PortraitFacialBeautificationProResponseData getData() { return data; }
}
