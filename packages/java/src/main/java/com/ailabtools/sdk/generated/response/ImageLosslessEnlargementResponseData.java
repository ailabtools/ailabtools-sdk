package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Image Upscaler API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageLosslessEnlargementResponseData {
    @JsonProperty("url")
    private String url;

    public String getUrl() { return url; }
}
