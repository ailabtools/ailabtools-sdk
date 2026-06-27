package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Live Photos API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitLivePhotosResponseData {
    @JsonProperty("video")
    private String video;

    public String getVideo() { return video; }
}
