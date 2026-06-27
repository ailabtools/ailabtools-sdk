package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Hairstyle Changer API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitHairstyleEditingResponseData {
    @JsonProperty("image")
    private String image;

    public String getImage() { return image; }
}
