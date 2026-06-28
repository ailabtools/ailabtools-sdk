using System.Collections.Generic;
using System.Text.Json;
using AILabTools.Models;

namespace AILabTools.Exceptions;

public sealed class ApiException : AILabToolsException
{
    public ApiException(
        string message,
        int statusCode,
        int errorCode,
        string? errorCodeString,
        string? requestId,
        string? logId,
        ErrorDetail? detail,
        IReadOnlyDictionary<string, JsonElement>? raw)
        : base(message)
    {
        StatusCode = statusCode;
        ErrorCode = errorCode;
        ErrorCodeString = errorCodeString;
        RequestId = requestId;
        LogId = logId;
        Detail = detail;
        Raw = raw;
    }

    public int StatusCode { get; }

    public int ErrorCode { get; }

    public string? ErrorCodeString { get; }

    public string? RequestId { get; }

    public string? LogId { get; }

    public ErrorDetail? Detail { get; }

    public IReadOnlyDictionary<string, JsonElement>? Raw { get; }
}
