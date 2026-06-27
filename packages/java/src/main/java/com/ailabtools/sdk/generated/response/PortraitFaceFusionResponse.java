package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Merge Portraits API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFaceFusionResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitFaceFusionResponseData data;

    public PortraitFaceFusionResponseData getData() { return data; }
}
