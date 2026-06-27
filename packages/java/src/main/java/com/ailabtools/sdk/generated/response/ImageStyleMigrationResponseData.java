package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Style Transfer API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageStyleMigrationResponseData {
    @JsonProperty("url")
    private String url;
    @JsonProperty("major_url")
    private String majorUrl;

    public String getUrl() { return url; }
    public String getMajorUrl() { return majorUrl; }
}
