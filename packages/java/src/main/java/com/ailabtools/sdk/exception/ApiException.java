package com.ailabtools.sdk.exception;

import com.ailabtools.sdk.response.ErrorDetail;
import java.util.Collections;
import java.util.Map;

/** An HTTP or business error returned by the AILabTools API. */
public final class ApiException extends RuntimeException {
    private final Integer statusCode;
    private final String requestId;
    private final String logId;
    private final ErrorDetail detail;
    private final Map<String, Object> raw;

    public ApiException(
            String message,
            Integer statusCode,
            String requestId,
            String logId,
            ErrorDetail detail,
            Map<String, Object> raw) {
        super(message);
        this.statusCode = statusCode;
        this.requestId = requestId;
        this.logId = logId;
        this.detail = detail;
        this.raw = raw == null ? Collections.emptyMap() : Collections.unmodifiableMap(raw);
    }

    public Integer getStatusCode() { return statusCode; }
    public String getRequestId() { return requestId; }
    public String getLogId() { return logId; }
    public ErrorDetail getDetail() { return detail; }
    public Map<String, Object> getRaw() { return raw; }
}
