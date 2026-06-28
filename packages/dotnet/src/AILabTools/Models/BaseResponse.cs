using System.Collections.Generic;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace AILabTools.Models;

public class BaseResponse<TData>
{
    [JsonPropertyName("request_id")]
    public string? RequestId { get; set; }

    [JsonPropertyName("log_id")]
    public string? LogId { get; set; }

    [JsonPropertyName("error_code")]
    public int ErrorCode { get; set; }

    [JsonPropertyName("error_code_str")]
    public string? ErrorCodeString { get; set; }

    [JsonPropertyName("error_msg")]
    public string? ErrorMessage { get; set; }

    [JsonPropertyName("error_detail")]
    public ErrorDetail? ErrorDetail { get; set; }

    [JsonPropertyName("data")]
    public TData? Data { get; set; }

    [JsonPropertyName("image")]
    public string? Image { get; set; }

    [JsonPropertyName("ratio")]
    public JsonElement? Ratio { get; set; }

    [JsonPropertyName("task_type")]
    public string? TaskType { get; set; }

    [JsonPropertyName("task_id")]
    public string? TaskId { get; set; }

    [JsonPropertyName("task_status")]
    public int? TaskStatus { get; set; }

    [JsonExtensionData]
    public IDictionary<string, JsonElement>? AdditionalData { get; set; }
}
