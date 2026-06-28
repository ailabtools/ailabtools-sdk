# AILabTools SDK for C# and .NET

Official asynchronous C#/.NET SDK for the [AILabTools AI image APIs](https://www.ailabtools.com/docs). It provides strongly typed parameters and responses for all 93 supported endpoints.

## Requirements

- .NET 8 or any runtime compatible with .NET Standard 2.0

## Installation

```bash
dotnet add package AILabTools --version 0.5.4
```

## Quick Start

Create or copy an API key from the [AILabTools Developer Console](https://www.ailabtools.com/developer).

```csharp
using AILabTools;
using AILabTools.Generated.Params;
using AILabTools.Http;

using var client = new AILabToolsClient(
    Environment.GetEnvironmentVariable("AILAB_API_KEY")!);

var result = await client.Background.RemoveAsync(
    new CutoutUniversalBackgroundRemovalParams
    {
        Image = FileInput.FromPath("./photo.jpg"),
        ReturnForm = "whiteBK",
    });

Console.WriteLine(result.Data?.ImageUrl);
```

## Features

- Strong Params and Response types for all 93 endpoints
- Asynchronous APIs with `Task<T>` and `CancellationToken`
- `HttpClient` injection for ASP.NET Core and dependency-injection applications
- File uploads from paths, byte arrays, and streams
- PascalCase properties mapped to API wire names such as `UpscaleFactor` to `upscale_factor`
- Structured exceptions containing HTTP status, request ID, log ID, and API details
- Polling helper for asynchronous tasks
- Targets `netstandard2.0` and `net8.0`

## ASP.NET Core and HttpClient

Pass an application-managed `HttpClient` when the SDK is used in a long-running service:

```csharp
using var client = new AILabToolsClient(
    apiKey: configuration["AILabTools:ApiKey"]!,
    httpClient: httpClient);
```

The SDK only disposes `HttpClient` instances it creates itself.

## File Uploads

```csharp
var fromPath = FileInput.FromPath("./photo.jpg");
var fromBytes = FileInput.FromBytes(bytes, "photo.jpg", "image/jpeg");
var fromStream = FileInput.FromStream(stream, "photo.jpg", leaveOpen: true);
```

## Async Tasks

```csharp
var result = await client.WaitForTaskAsync(
    taskId,
    interval: TimeSpan.FromSeconds(5),
    timeout: TimeSpan.FromMinutes(5),
    cancellationToken: cancellationToken);
```

## Error Handling

```csharp
try
{
    var result = await client.Background.RemoveAsync(parameters);
}
catch (AILabTools.Exceptions.ApiException error)
{
    Console.WriteLine(error.StatusCode);
    Console.WriteLine(error.RequestId);
    Console.WriteLine(error.LogId);
}
```

## Links

- [Get an AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API documentation](https://www.ailabtools.com/docs)
- [AILabTools SDK source code](https://github.com/ailabtools/ailabtools-sdk)
- [Report a .NET SDK issue](https://github.com/ailabtools/ailabtools-sdk/issues)

## License

[MIT](LICENSE)
