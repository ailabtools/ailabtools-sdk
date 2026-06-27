package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for AI Photo Colorize API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageColoringResponseData {
    @JsonProperty("image")
    private String image;

    public String getImage() { return image; }
}
