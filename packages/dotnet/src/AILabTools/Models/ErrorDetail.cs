using System.Collections.Generic;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace AILabTools.Models;

public sealed class ErrorDetail
{
    [JsonPropertyName("status_code")]
    public int? StatusCode { get; set; }

    [JsonPropertyName("code")]
    public string? Code { get; set; }

    [JsonPropertyName("code_message")]
    public string? CodeMessage { get; set; }

    [JsonPropertyName("message")]
    public string? Message { get; set; }

    [JsonExtensionData]
    public IDictionary<string, JsonElement>? AdditionalData { get; set; }
}
