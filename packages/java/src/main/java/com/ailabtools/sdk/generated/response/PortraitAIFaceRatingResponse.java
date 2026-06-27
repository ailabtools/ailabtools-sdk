package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Face Rating API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIFaceRatingResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIFaceRatingResponseData data;

    public PortraitAIFaceRatingResponseData getData() { return data; }
}
