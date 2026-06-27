package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Skin Analyze API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitSkinAnalysisBasicResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitSkinAnalysisBasicResponseData data;

    public PortraitSkinAnalysisBasicResponseData getData() { return data; }
}
