package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Face Beauty Advanced API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFacialBeautificationAdvancedResponseData {
    @JsonProperty("result_image")
    private String resultImage;

    public String getResultImage() { return resultImage; }
}
