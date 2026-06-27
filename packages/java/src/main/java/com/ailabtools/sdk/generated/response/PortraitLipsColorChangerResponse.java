package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Lips Color Changer API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitLipsColorChangerResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitLipsColorChangerResponseData data;

    public PortraitLipsColorChangerResponseData getData() { return data; }
}
