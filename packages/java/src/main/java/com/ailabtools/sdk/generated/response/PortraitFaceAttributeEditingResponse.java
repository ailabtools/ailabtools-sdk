package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Age &amp; Gender Swap API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFaceAttributeEditingResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitFaceAttributeEditingResponseData data;

    public PortraitFaceAttributeEditingResponseData getData() { return data; }
}
