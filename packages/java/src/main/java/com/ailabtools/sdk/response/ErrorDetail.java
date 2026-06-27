package com.ailabtools.sdk.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Structured error details returned by the AILabTools API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ErrorDetail {
    @JsonProperty("status_code")
    private Integer statusCode;
    private String code;
    @JsonProperty("code_message")
    private String codeMessage;
    private String message;

    public Integer getStatusCode() { return statusCode; }
    public String getCode() { return code; }
    public String getCodeMessage() { return codeMessage; }
    public String getMessage() { return message; }
}
