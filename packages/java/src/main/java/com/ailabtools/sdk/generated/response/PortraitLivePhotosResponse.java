package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Live Photos API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitLivePhotosResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitLivePhotosResponseData data;

    public PortraitLivePhotosResponseData getData() { return data; }
}
