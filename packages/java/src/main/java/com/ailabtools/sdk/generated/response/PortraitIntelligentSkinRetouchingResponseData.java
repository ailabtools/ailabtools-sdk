package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for AI Skin Beauty API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitIntelligentSkinRetouchingResponseData {
    @JsonProperty("image_url")
    private String imageUrl;

    public String getImageUrl() { return imageUrl; }
}
