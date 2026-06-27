package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Skin Enhancement Advanced API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAISkinEnhancementAdvancedResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAISkinEnhancementAdvancedResponseData data;

    public PortraitAISkinEnhancementAdvancedResponseData getData() { return data; }
}
