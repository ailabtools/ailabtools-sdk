package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Image Exposure Score API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageExposureRatingResponseData {
    @JsonProperty("exposure")
    private Double exposure;

    public Double getExposure() { return exposure; }
}
