package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

/** Response data for Intelligent Composition API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageIntelligentCompositionResponseData {
    @JsonProperty("elements")
    private List<Object> elements;
    @JsonProperty("min_x")
    private Integer minX;
    @JsonProperty("max_x")
    private Integer maxX;
    @JsonProperty("min_y")
    private Integer minY;
    @JsonProperty("max_y")
    private Integer maxY;
    @JsonProperty("score")
    private Double score;

    public List<Object> getElements() { return elements; }
    public Integer getMinX() { return minX; }
    public Integer getMaxX() { return maxX; }
    public Integer getMinY() { return minY; }
    public Integer getMaxY() { return maxY; }
    public Double getScore() { return score; }
}
