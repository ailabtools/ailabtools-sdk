package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Lips Color Changer API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitLipsColorChangerResponseData {
    @JsonProperty("result_image")
    private String resultImage;

    public String getResultImage() { return resultImage; }
}
