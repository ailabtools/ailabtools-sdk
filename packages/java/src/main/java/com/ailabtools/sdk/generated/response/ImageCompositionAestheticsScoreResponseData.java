package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Image Composition Aesthetics Score API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageCompositionAestheticsScoreResponseData {
    @JsonProperty("score")
    private Double score;

    public Double getScore() { return score; }
}
