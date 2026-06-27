package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Skin Analyze Advanced API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitSkinAnalysisAdvancedResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitSkinAnalysisAdvancedResponseData data;

    public PortraitSkinAnalysisAdvancedResponseData getData() { return data; }
}
