package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

/** Response data for AI Image Extender API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageAiImageExtenderResponseData {
    @JsonProperty("binary_data_base64")
    private List<String> binaryDataBase64;

    public List<String> getBinaryDataBase64() { return binaryDataBase64; }
}
