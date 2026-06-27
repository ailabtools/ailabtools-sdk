package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Map;

/** Response data for AI Image Cropping API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageAIImageCroppingResponseData {
    @JsonProperty("url")
    private String url;
    @JsonProperty("retain_location")
    private Map<String, Object> retainLocation;
    @JsonProperty("width")
    private Integer width;
    @JsonProperty("height")
    private Integer height;
    @JsonProperty("y")
    private Integer y;
    @JsonProperty("x")
    private Integer x;

    public String getUrl() { return url; }
    public Map<String, Object> getRetainLocation() { return retainLocation; }
    public Integer getWidth() { return width; }
    public Integer getHeight() { return height; }
    public Integer getY() { return y; }
    public Integer getX() { return x; }
}
