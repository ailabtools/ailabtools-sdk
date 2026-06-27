package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Image Exposure Score API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageExposureRatingResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageExposureRatingResponseData data;

    public ImageExposureRatingResponseData getData() { return data; }
}
