package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

/** Response data for Remove Objects Advanced API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageRemoveObjectsAdvancedResponseData {
    @JsonProperty("binary_data_base64")
    private List<String> binaryDataBase64;

    public List<String> getBinaryDataBase64() { return binaryDataBase64; }
}
