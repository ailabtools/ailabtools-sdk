# AILabTools SDK for Swift

Official asynchronous Swift SDK for the [AILabTools AI image APIs](https://www.ailabtools.com/docs). The package provides strongly typed parameters and responses for all 93 supported endpoints.

## Requirements

- Swift 5.8 or later
- iOS 13+, macOS 10.15+, tvOS 13+, or watchOS 6+

## Swift Package Manager

In Xcode, add:

```text
https://github.com/ailabtools/ailabtools-sdk.git
```

Or add the dependency to `Package.swift`:

```swift
.package(
    url: "https://github.com/ailabtools/ailabtools-sdk.git",
    from: "0.5.4"
)
```

Then add `AILabTools` to the target dependencies.

## CocoaPods

```ruby
pod 'AILabTools', '~> 0.5.4'
```

Run:

```bash
pod install
```

## Quick Start

Create or copy an API key from the [AILabTools Developer Console](https://www.ailabtools.com/developer).

```swift
import AILabTools

let client = try AILabToolsClient(
    apiKey: ProcessInfo.processInfo.environment["AILAB_API_KEY"]!
)

let result = try await client.background.remove(
    CutoutUniversalBackgroundRemovalParams(
        image: .fileURL(URL(fileURLWithPath: "./photo.jpg")),
        returnForm: "whiteBK"
    )
)

print(result.data?.imageUrl ?? "")
client.close()
```

## Features

- Strong Params and Response types for all 93 endpoints
- Native Swift concurrency with `async` / `await` and task cancellation
- Injectable `URLSession`
- File uploads from file URLs or `Data`
- camelCase properties mapped to API wire names
- Structured API errors with HTTP status, API code, request ID, and log ID
- Async task polling helper
- Swift Package Manager and CocoaPods support

## File Uploads

```swift
let fromURL = FileInput.fileURL(URL(fileURLWithPath: "./photo.jpg"))
let fromData = FileInput.data(
    imageData,
    filename: "photo.jpg",
    mimeType: "image/jpeg"
)
```

## Async Tasks

```swift
let result = try await client.waitForTask(
    taskId,
    interval: 5,
    timeout: 300
)
```

## Error Handling

```swift
do {
    let result = try await client.background.remove(parameters)
} catch let error as APIError {
    print(error.statusCode)
    print(error.errorCode)
    print(error.requestId ?? "")
    print(error.logId ?? "")
}
```

## Links

- [Get an AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API documentation](https://www.ailabtools.com/docs)
- [AILabTools SDK source code](https://github.com/ailabtools/ailabtools-sdk)
- [Report a Swift SDK issue](https://github.com/ailabtools/ailabtools-sdk/issues)

## License

[MIT](LICENSE)
