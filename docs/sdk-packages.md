# Official AILabTools SDK Packages

AILabTools provides official SDKs for Node.js, TypeScript, Python, Go, Dart, Flutter, PHP, Java, Kotlin/Android, C#/.NET, and Swift. Every SDK covers the same AI image APIs for background removal, image enhancement, object removal, portrait editing, hairstyle changes, skin analysis, and virtual try-on.

## Package Directory

| Language | Official package | Installation |
| --- | --- | --- |
| Node.js / TypeScript | [AILabTools Node.js SDK on npm](https://www.npmjs.com/package/ailabtools) | `npm install ailabtools` |
| Async Python | [AILabTools Python SDK on PyPI](https://pypi.org/project/ailabtools-sdk/) | `pip install ailabtools-sdk` |
| Go | [AILabTools Go SDK on pkg.go.dev](https://pkg.go.dev/github.com/ailabtools/ailabtools-sdk/packages/go) | `go get github.com/ailabtools/ailabtools-sdk/packages/go` |
| Dart / Flutter | [AILabTools Dart and Flutter SDK on pub.dev](https://pub.dev/packages/ailabtools) | `flutter pub add ailabtools` |
| PHP | [AILabTools PHP SDK on Packagist](https://packagist.org/packages/ailabtools/ailabtools) | `composer require ailabtools/ailabtools` |
| Java | [AILabTools Java SDK on Maven Central](https://central.sonatype.com/artifact/com.ailabtools/ailabtools-sdk/0.5.4) | `com.ailabtools:ailabtools-sdk:0.5.4` |
| Kotlin / Android | Maven Central package `ailabtools-kotlin` | `com.ailabtools:ailabtools-kotlin:0.5.4` |
| C# / .NET | NuGet package `AILabTools` | `dotnet add package AILabTools --version 0.5.4` |
| Swift | Swift Package Manager / CocoaPods package `AILabTools` | `.package(url: "https://github.com/ailabtools/ailabtools-sdk.git", from: "0.5.4")` |

The current published package version is `0.5.4`. The Python distribution name is `ailabtools-sdk`, while its import name is `ailabtools`.

## Compatibility Matrix

| SDK | Minimum runtime | Request model | File inputs | Client lifecycle |
| --- | --- | --- | --- | --- |
| Node.js / TypeScript | Node.js 18 | Promise-based async | `Buffer`, `ArrayBuffer`, `Uint8Array`, stream | No explicit close method |
| Python | Python 3.8 | `async` / `await` | bytes or binary file-like object | Call `await client.aclose()` |
| Go | Go 1.20 | Context-aware blocking calls | path, bytes, or `io.Reader` | Shared `http.Client`; no SDK close method |
| Dart / Flutter | Dart 3.0 | `Future`-based async | cross-platform byte data | Call `client.close()` for the SDK-owned HTTP client |
| PHP | PHP 8.1 | Blocking calls | path, byte string, or resource | Managed by Guzzle |
| Java | Java 11 | Blocking calls | `Path`, byte array, or `InputStream` | Managed by Java `HttpClient` |
| Kotlin / Android | Android API 21 or Java 8 | Coroutine `suspend` calls | `File`, byte array, or `InputStream` | Call `client.close()` to cancel active SDK calls |
| C# / .NET | .NET Standard 2.0 or .NET 8 | `Task<T>` async with cancellation | path, byte array, or `Stream` | Dispose the client only when it owns `HttpClient` |
| Swift | Swift 5.8 | `async` / `await` with task cancellation | file `URL` or `Data` | Call `client.close()` for the SDK-owned `URLSession` |

All SDKs use the same API paths and wire parameter names. Public identifiers
follow each language's naming conventions.

## Java Maven Dependency

```xml
<dependency>
  <groupId>com.ailabtools</groupId>
  <artifactId>ailabtools-sdk</artifactId>
  <version>0.5.4</version>
</dependency>
```

## Kotlin / Android Dependency

```kotlin
dependencies {
    implementation("com.ailabtools:ailabtools-kotlin:0.5.4")
}
```

## C#/.NET NuGet Dependency

```bash
dotnet add package AILabTools --version 0.5.4
```

## Swift Package Manager

```swift
.package(
  url: "https://github.com/ailabtools/ailabtools-sdk.git",
  from: "0.5.4"
)
```

## CocoaPods

```ruby
pod 'AILabTools', '~> 0.5.4'
```

## API Coverage

Each language SDK exposes **93 endpoints**: **87 current APIs** listed in the official API documentation and **6 legacy-compatible endpoints** retained for existing integrations. See the [complete SDK API index](README.md#api-index) for methods and HTTP paths.

## Official Resources

- [AILabTools API Documentation](https://www.ailabtools.com/docs) contains endpoint parameters and response schemas.
- [AILabTools Developer Console](https://www.ailabtools.com/developer) creates and manages API keys.
- [AILabTools SDK GitHub Repository](https://github.com/ailabtools/ailabtools-sdk) contains the Node.js, Python, Go, Dart, Flutter, PHP, Java, Kotlin/Android, C#/.NET, and Swift SDK source.
- [AILabTools PHP SDK GitHub Repository](https://github.com/ailabtools/ailabtools-php) is the Packagist source repository for the standalone PHP package.

## Notes

- The Node.js SDK is written in TypeScript and includes complete type definitions.
- The Python SDK uses an asynchronous HTTP client and supports `async` / `await`.
- The Dart package supports both standalone Dart and Flutter applications.
- The Kotlin/Android SDK uses coroutine `suspend` methods and OkHttp.
- The C#/.NET SDK is asynchronous and accepts an application-managed `HttpClient`.
- The Swift SDK supports both Swift Package Manager and CocoaPods and accepts an application-managed `URLSession`.
- All SDKs authenticate with the `ailabapi-api-key` request header.
- Result image URLs can expire; download and store generated files promptly.
- See [Security and Data Handling](security.md) before processing user images.
