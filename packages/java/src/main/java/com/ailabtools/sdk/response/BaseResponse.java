package com.ailabtools.sdk.response;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Collections;
import java.util.Map;

/** Common metadata included in every API response. */
@JsonIgnoreProperties(ignoreUnknown = true)
public abstract class BaseResponse {
    @JsonProperty("request_id")
    private String requestId;
    @JsonProperty("log_id")
    private String logId;
    @JsonProperty("error_code")
    private Integer errorCode;
    @JsonProperty("error_code_str")
    private String errorCodeString;
    @JsonProperty("error_msg")
    private String errorMessage;
    @JsonProperty("error_detail")
    private ErrorDetail errorDetail;
    private String image;
    private Object ratio;
    @JsonProperty("task_type")
    private String taskType;
    @JsonProperty("task_id")
    private String taskId;
    @JsonProperty("task_status")
    private Integer taskStatus;
    @JsonIgnore
    private Map<String, Object> raw = Collections.emptyMap();

    public String getRequestId() { return requestId; }
    public String getLogId() { return logId; }
    public Integer getErrorCode() { return errorCode; }
    public String getErrorCodeString() { return errorCodeString; }
    public String getErrorMessage() { return errorMessage; }
    public ErrorDetail getErrorDetail() { return errorDetail; }
    public String getImage() { return image; }
    public Object getRatio() { return ratio; }
    public String getTaskType() { return taskType; }
    public String getTaskId() { return taskId; }
    public Integer getTaskStatus() { return taskStatus; }
    public Map<String, Object> getRaw() { return raw; }

    public final void setRaw(Map<String, Object> raw) {
        this.raw = Collections.unmodifiableMap(raw);
    }
}
