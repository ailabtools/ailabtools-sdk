package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Map;

/** Response data for Age &amp; Gender Swap API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFaceAttributeEditingResponseData {
    @JsonProperty("result")
    private Map<String, Object> result;
    @JsonProperty("image")
    private String image;

    public Map<String, Object> getResult() { return result; }
    public String getImage() { return image; }
}
