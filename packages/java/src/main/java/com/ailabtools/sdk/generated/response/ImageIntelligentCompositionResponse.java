package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Intelligent Composition API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageIntelligentCompositionResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageIntelligentCompositionResponseData data;

    public ImageIntelligentCompositionResponseData getData() { return data; }
}
