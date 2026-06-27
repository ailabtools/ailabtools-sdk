package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Change Facial Expressions API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitExpressionEditingResponseData {
    @JsonProperty("image")
    private String image;

    public String getImage() { return image; }
}
