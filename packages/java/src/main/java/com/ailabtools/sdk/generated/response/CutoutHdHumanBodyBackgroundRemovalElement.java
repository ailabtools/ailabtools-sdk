package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Element returned by HD Human Background Removal API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CutoutHdHumanBodyBackgroundRemovalElement {
    @JsonProperty("image_url")
    private String imageUrl;
    public String getImageUrl() { return imageUrl; }
}
