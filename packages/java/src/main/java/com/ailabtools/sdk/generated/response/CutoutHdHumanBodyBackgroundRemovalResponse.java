package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for HD Human Background Removal API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CutoutHdHumanBodyBackgroundRemovalResponse extends BaseResponse {
    @JsonProperty("data")
    private CutoutHdHumanBodyBackgroundRemovalResponseData data;

    public CutoutHdHumanBodyBackgroundRemovalResponseData getData() { return data; }
}
