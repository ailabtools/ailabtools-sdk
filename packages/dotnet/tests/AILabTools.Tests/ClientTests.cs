using System.Net;
using System.Net.Http;
using System.Text;
using AILabTools.Exceptions;
using AILabTools.Generated.Params;
using AILabTools.Http;

namespace AILabTools.Tests;

public sealed class ClientTests
{
    [Fact]
    public async Task BackgroundAliasUploadsFileAndMapsResponse()
    {
        string? body = null;
        string? apiKey = null;
        var handler = new StubHandler(async request =>
        {
            body = await request.Content!.ReadAsStringAsync();
            apiKey = request.Headers.GetValues("ailabapi-api-key").Single();
            Assert.Equal("/api/cutout/general/universal-background-removal", request.RequestUri!.AbsolutePath);
            return Json("""{"error_code":0,"request_id":"request-1","data":{"image_url":"https://example.com/result.png"}}""");
        });
        using var client = CreateClient(handler);

        var result = await client.Background.RemoveAsync(new CutoutUniversalBackgroundRemovalParams
        {
            Image = FileInput.FromBytes(Encoding.UTF8.GetBytes("image"), "photo.jpg", "image/jpeg"),
            ReturnForm = "whiteBK",
        });

        Assert.Equal("request-1", result.RequestId);
        Assert.Equal("https://example.com/result.png", result.Data!.ImageUrl);
        Assert.Equal("test-key", apiKey);
        Assert.Contains("name=return_form", body);
        Assert.Contains("whiteBK", body);
        Assert.Contains("filename=photo.jpg", body);
    }

    [Fact]
    public async Task UpscaleMapsPascalCasePropertiesToWireNames()
    {
        string? body = null;
        var handler = new StubHandler(async request =>
        {
            body = await request.Content!.ReadAsStringAsync();
            return Json("""{"error_code":0,"data":{"url":"https://example.com/upscaled.jpg"}}""");
        });
        using var client = CreateClient(handler);

        var result = await client.Image.UpscaleAsync(new ImageLosslessEnlargementParams
        {
            Image = FileInput.FromBytes(new byte[] { 1 }, "photo.jpg"),
            UpscaleFactor = 4,
            OutputFormat = "jpg",
            OutputQuality = 80,
        });

        Assert.Equal("https://example.com/upscaled.jpg", result.Data!.Url);
        Assert.Contains("name=upscale_factor", body);
        Assert.DoesNotContain("upscaleFactor", body);
    }

    [Fact]
    public async Task GetParametersAreEncodedInTheQueryString()
    {
        Uri? requestUri = null;
        var handler = new StubHandler(request =>
        {
            requestUri = request.RequestUri;
            return Task.FromResult(Json("""{"error_code":0,"data":{"task_status":2}}"""));
        });
        using var client = CreateClient(handler);

        await client.Common.CommonQueryAsyncTaskResultAsync(
            new CommonQueryAsyncTaskResultParams { TaskId = "task id/1" });

        Assert.Equal("task_id=task%20id%2F1", requestUri!.Query.TrimStart('?'));
    }

    [Fact]
    public async Task FaceAnalyzerAdvancedDeserializesNumericArrays()
    {
        var handler = new StubHandler(_ => Task.FromResult(Json(
            """
            {
              "error_code": 0,
              "data": {
                "pupils": [10.5, 20.5, 3.2, 30.5, 40.5, 3.1],
                "gender_list": [1],
                "landmarks": [1.1, 2.2],
                "face_count": 1
              }
            }
            """)));
        using var client = CreateClient(handler);

        var result = await client.Portrait.PortraitFaceAnalyzerAdvancedAsync(
            new PortraitFaceAnalyzerAdvancedParams
            {
                Image = FileInput.FromBytes(new byte[] { 1 }, "face.jpg"),
            });

        Assert.Equal(6, result.Data!.Pupils!.Count);
        Assert.Equal(1, result.Data.GenderList![0]);
        Assert.Equal(2.2, result.Data.Landmarks![1]);
        Assert.Equal(1, result.Data.FaceCount);
    }

    [Fact]
    public async Task ApiErrorsExposeRequestAndLogIds()
    {
        var handler = new StubHandler(_ => Task.FromResult(Json(
            """{"error_code":1001,"request_id":"request-2","log_id":"log-2","error_detail":{"message":"Unsupported image format"}}""",
            HttpStatusCode.BadRequest)));
        using var client = CreateClient(handler);

        var error = await Assert.ThrowsAsync<ApiException>(() =>
            client.Common.CommonQueryCreditsAsync(new CommonQueryCreditsParams()));

        Assert.Equal(400, error.StatusCode);
        Assert.Equal(1001, error.ErrorCode);
        Assert.Equal("request-2", error.RequestId);
        Assert.Equal("log-2", error.LogId);
        Assert.Equal("Unsupported image format", error.Message);
    }

    [Fact]
    public async Task PremiumHairstyleRequiresStyleOrTemplate()
    {
        using var client = CreateClient(new StubHandler(_ =>
            Task.FromResult(Json("""{"error_code":0}"""))));

        var error = await Assert.ThrowsAsync<ArgumentException>(() =>
            client.Portrait.PortraitHairstyleEditingPremiumAsync(
                new PortraitHairstyleEditingPremiumParams
                {
                    Image = FileInput.FromBytes(new byte[] { 1 }, "photo.jpg"),
                }));

        Assert.Contains("HairStyle, ImageTemplate", error.Message);
    }

    [Fact]
    public async Task WaitForTaskPollsUntilSuccess()
    {
        var calls = 0;
        var handler = new StubHandler(_ =>
        {
            calls++;
            return Task.FromResult(Json(
                calls == 1
                    ? """{"error_code":0,"data":{"task_status":1}}"""
                    : """{"error_code":0,"data":{"task_status":2,"image_url":"https://example.com/result.png"}}"""));
        });
        using var client = CreateClient(handler);

        var result = await client.WaitForTaskAsync(
            "task-1",
            interval: TimeSpan.Zero,
            timeout: TimeSpan.FromSeconds(1));

        Assert.Equal(2, result.Data!.TaskStatus);
        Assert.Equal(2, calls);
    }

    private static AILabToolsClient CreateClient(HttpMessageHandler handler)
    {
        return new AILabToolsClient(
            "test-key",
            new HttpClient(handler),
            "https://example.test",
            TimeSpan.FromSeconds(5));
    }

    private static HttpResponseMessage Json(string json, HttpStatusCode status = HttpStatusCode.OK)
    {
        return new HttpResponseMessage(status)
        {
            Content = new StringContent(json, Encoding.UTF8, "application/json"),
        };
    }

    private sealed class StubHandler : HttpMessageHandler
    {
        private readonly Func<HttpRequestMessage, Task<HttpResponseMessage>> _handler;

        internal StubHandler(Func<HttpRequestMessage, Task<HttpResponseMessage>> handler)
        {
            _handler = handler;
        }

        protected override Task<HttpResponseMessage> SendAsync(
            HttpRequestMessage request,
            CancellationToken cancellationToken)
        {
            return _handler(request);
        }
    }
}
