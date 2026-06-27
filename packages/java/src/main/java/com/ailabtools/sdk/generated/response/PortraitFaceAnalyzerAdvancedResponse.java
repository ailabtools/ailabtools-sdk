package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Face Analyzer Advanced API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFaceAnalyzerAdvancedResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitFaceAnalyzerAdvancedResponseData data;

    public PortraitFaceAnalyzerAdvancedResponseData getData() { return data; }
}
