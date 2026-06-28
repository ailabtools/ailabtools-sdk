using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using AILabTools.Exceptions;
using AILabTools.Models;

namespace AILabTools.Http;

internal sealed class Requester
{
    private readonly HttpClient _httpClient;
    private readonly string _apiKey;
    private readonly string _baseUrl;
    private readonly JsonSerializerOptions _jsonOptions;

    internal Requester(HttpClient httpClient, string apiKey, string baseUrl)
    {
        _httpClient = httpClient;
        _apiKey = apiKey;
        _baseUrl = baseUrl.TrimEnd('/');
        _jsonOptions = new JsonSerializerOptions { PropertyNameCaseInsensitive = true };
    }

    internal async Task<TResponse> RequestAsync<TResponse>(
        HttpMethod method,
        string path,
        RequestParams parameters,
        bool multipart,
        CancellationToken cancellationToken)
    {
        parameters.Validate();
        var query = parameters.ToQuery();
        var body = parameters.ToBody();
        var url = _baseUrl + "/" + path.TrimStart('/');
        if (query.Count > 0) url += "?" + EncodeQuery(query);

        using var request = new HttpRequestMessage(method, url);
        request.Headers.TryAddWithoutValidation("ailabapi-api-key", _apiKey);
        if (method != HttpMethod.Get)
        {
            request.Content = multipart ? CreateMultipart(body) : CreateJson(body);
        }

        using var response = await _httpClient.SendAsync(request, cancellationToken).ConfigureAwait(false);
        var payload = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
        JsonDocument document;
        try
        {
            document = JsonDocument.Parse(payload);
        }
        catch (Exception error) when (error is JsonException || error is ArgumentException)
        {
            throw new ApiException(
                string.IsNullOrEmpty(payload) ? "Empty response from AILabTools." : "Invalid JSON response from AILabTools.",
                (int)response.StatusCode,
                0,
                null,
                null,
                null,
                null,
                null);
        }

        using (document)
        {
            var root = document.RootElement;
            var errorCode = ReadErrorCode(root);
            if (!response.IsSuccessStatusCode || errorCode != 0)
            {
                var detail = TryDeserialize<ErrorDetail>(root, "error_detail");
                var message = detail?.Message ?? ReadString(root, "error_msg") ?? "AILabTools API error.";
                throw new ApiException(
                    message,
                    (int)response.StatusCode,
                    errorCode,
                    ReadString(root, "error_code_str"),
                    ReadString(root, "request_id"),
                    ReadString(root, "log_id"),
                    detail,
                    ToDictionary(root));
            }
        }

        try
        {
            return JsonSerializer.Deserialize<TResponse>(payload, _jsonOptions)
                ?? throw new AILabToolsException("AILabTools returned an empty response object.");
        }
        catch (JsonException error)
        {
            throw new AILabToolsException("Unable to deserialize the AILabTools response.", error);
        }
    }

    private StringContent CreateJson(IReadOnlyDictionary<string, object?> body)
    {
        return new StringContent(JsonSerializer.Serialize(body, _jsonOptions), Encoding.UTF8, "application/json");
    }

    private static MultipartFormDataContent CreateMultipart(IReadOnlyDictionary<string, object?> body)
    {
        var content = new MultipartFormDataContent("----AILabTools-" + Guid.NewGuid().ToString("N"));
        foreach (var pair in body)
        {
            if (pair.Value == null) continue;
            if (pair.Value is FileInput file)
            {
                var fileContent = new StreamContent(file.OpenRead());
                fileContent.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue(file.ContentType);
                content.Add(fileContent, pair.Key, file.FileName);
            }
            else
            {
                content.Add(new StringContent(Stringify(pair.Value), Encoding.UTF8), pair.Key);
            }
        }
        return content;
    }

    private static string EncodeQuery(IReadOnlyDictionary<string, object?> query)
    {
        return string.Join("&", query
            .Where(pair => pair.Value != null)
            .Select(pair => Uri.EscapeDataString(pair.Key) + "=" + Uri.EscapeDataString(Stringify(pair.Value!))));
    }

    private static string Stringify(object value)
    {
        if (value is string text) return text;
        if (value is IEnumerable items)
        {
            var values = new List<string>();
            foreach (var item in items) values.Add(Convert.ToString(item, CultureInfo.InvariantCulture) ?? string.Empty);
            return string.Join(",", values);
        }
        return Convert.ToString(value, CultureInfo.InvariantCulture) ?? string.Empty;
    }

    private T? TryDeserialize<T>(JsonElement root, string name)
    {
        if (!root.TryGetProperty(name, out var value) || value.ValueKind == JsonValueKind.Null) return default;
        return value.Deserialize<T>(_jsonOptions);
    }

    private static int ReadErrorCode(JsonElement root)
    {
        if (!root.TryGetProperty("error_code", out var value)) return 0;
        if (value.ValueKind == JsonValueKind.Number && value.TryGetInt32(out var number)) return number;
        return value.ValueKind == JsonValueKind.String
            && int.TryParse(value.GetString(), NumberStyles.Integer, CultureInfo.InvariantCulture, out number)
            ? number
            : 0;
    }

    private static string? ReadString(JsonElement root, string name)
    {
        return root.TryGetProperty(name, out var value) && value.ValueKind != JsonValueKind.Null
            ? value.ToString()
            : null;
    }

    private static IReadOnlyDictionary<string, JsonElement> ToDictionary(JsonElement root)
    {
        var result = new Dictionary<string, JsonElement>();
        foreach (var property in root.EnumerateObject()) result[property.Name] = property.Value.Clone();
        return result;
    }
}
