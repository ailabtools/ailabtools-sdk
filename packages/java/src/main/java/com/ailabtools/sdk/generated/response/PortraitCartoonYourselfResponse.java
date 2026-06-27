package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Cartoon Yourself API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitCartoonYourselfResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitCartoonYourselfResponseData data;

    public PortraitCartoonYourselfResponseData getData() { return data; }
}
