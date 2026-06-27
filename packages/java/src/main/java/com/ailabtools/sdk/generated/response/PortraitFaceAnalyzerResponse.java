package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Face Analyzer API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFaceAnalyzerResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitFaceAnalyzerResponseData data;

    public PortraitFaceAnalyzerResponseData getData() { return data; }
}
