package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

/** Response data for Hairstyle Extraction API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CutoutHairExtractionResponseData {
    @JsonProperty("elements")
    private List<Object> elements;
    @JsonProperty("image_url")
    private String imageUrl;
    @JsonProperty("width")
    private Integer width;
    @JsonProperty("height")
    private Integer height;
    @JsonProperty("x")
    private Integer x;
    @JsonProperty("y")
    private Integer y;

    public List<Object> getElements() { return elements; }
    public String getImageUrl() { return imageUrl; }
    public Integer getWidth() { return width; }
    public Integer getHeight() { return height; }
    public Integer getX() { return x; }
    public Integer getY() { return y; }
}
