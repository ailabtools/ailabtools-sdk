package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Stretched Image Restoration API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageDistortionCorrectionResponseData {
    @JsonProperty("image")
    private String image;
    @JsonProperty("ratio")
    private Double ratio;

    public String getImage() { return image; }
    public Double getRatio() { return ratio; }
}
