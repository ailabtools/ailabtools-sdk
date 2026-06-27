package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Facial Landmarks API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFacialLandmarksResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitFacialLandmarksResponseData data;

    public PortraitFacialLandmarksResponseData getData() { return data; }
}
