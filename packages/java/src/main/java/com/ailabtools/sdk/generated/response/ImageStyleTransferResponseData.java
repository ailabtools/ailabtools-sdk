package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Photo to Painting API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageStyleTransferResponseData {
    @JsonProperty("image")
    private String image;

    public String getImage() { return image; }
}
