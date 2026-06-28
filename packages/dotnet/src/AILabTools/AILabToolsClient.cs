using System;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using AILabTools.Api;
using AILabTools.Exceptions;
using AILabTools.Generated.Params;
using AILabTools.Generated.Responses;
using AILabTools.Http;

namespace AILabTools;

/// <summary>Entry point for the asynchronous AILabTools C#/.NET SDK.</summary>
public sealed class AILabToolsClient : IDisposable
{
    private readonly HttpClient _httpClient;
    private readonly bool _ownsHttpClient;

    public AILabToolsClient(
        string apiKey,
        HttpClient? httpClient = null,
        string baseUrl = "https://www.ailabapi.com",
        TimeSpan? timeout = null)
    {
        if (string.IsNullOrWhiteSpace(apiKey)) throw new ArgumentException("AILabTools API key must not be empty.", nameof(apiKey));
        if (string.IsNullOrWhiteSpace(baseUrl)) throw new ArgumentException("Base URL must not be empty.", nameof(baseUrl));

        _ownsHttpClient = httpClient == null;
        _httpClient = httpClient ?? new HttpClient();
        if (timeout.HasValue) _httpClient.Timeout = timeout.Value;

        var requester = new Requester(_httpClient, apiKey, baseUrl);
        Common = new CommonApi(requester);
        Cutout = new CutoutApi(requester);
        Image = new ImageApi(requester);
        Portrait = new PortraitApi(requester);
        Background = new BackgroundApi(Cutout);
    }

    public CommonApi Common { get; }

    public CutoutApi Cutout { get; }

    public ImageApi Image { get; }

    public PortraitApi Portrait { get; }

    public BackgroundApi Background { get; }

    public async Task<CommonQueryAsyncTaskResultResponse> WaitForTaskAsync(
        string taskId,
        TimeSpan? interval = null,
        TimeSpan? timeout = null,
        bool throwOnFailed = true,
        CancellationToken cancellationToken = default)
    {
        if (string.IsNullOrWhiteSpace(taskId)) throw new ArgumentException("Task ID must not be empty.", nameof(taskId));
        var pollingInterval = interval ?? TimeSpan.FromSeconds(5);
        var pollingTimeout = timeout ?? TimeSpan.FromMinutes(5);
        var deadline = DateTimeOffset.UtcNow + pollingTimeout;

        while (DateTimeOffset.UtcNow <= deadline)
        {
            var result = await Common.CommonQueryAsyncTaskResultAsync(
                new CommonQueryAsyncTaskResultParams { TaskId = taskId },
                cancellationToken).ConfigureAwait(false);
            var status = result.Data?.TaskStatus ?? result.TaskStatus;
            if (status == 2) return result;
            if (status == 3)
            {
                if (throwOnFailed) throw new AILabToolsException("AILabTools task failed: " + taskId);
                return result;
            }
            await Task.Delay(pollingInterval, cancellationToken).ConfigureAwait(false);
        }

        throw new TimeoutException("AILabTools task timed out: " + taskId);
    }

    public void Dispose()
    {
        if (_ownsHttpClient) _httpClient.Dispose();
    }
}
