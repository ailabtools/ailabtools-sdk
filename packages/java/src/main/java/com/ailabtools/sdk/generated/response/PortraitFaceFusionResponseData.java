package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Merge Portraits API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFaceFusionResponseData {
    @JsonProperty("image")
    private String image;

    public String getImage() { return image; }
}
