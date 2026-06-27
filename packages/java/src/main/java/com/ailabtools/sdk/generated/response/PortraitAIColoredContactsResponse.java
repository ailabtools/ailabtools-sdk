package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Colored Contacts API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIColoredContactsResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIColoredContactsResponseData data;

    public PortraitAIColoredContactsResponseData getData() { return data; }
}
