# AILabTools Multi-Language SDK Architecture

This document describes the current architecture and maintenance rules for the
official AILabTools SDKs.

## Scope

The repository contains SDKs for:

| Platform | Package | Minimum runtime |
| --- | --- | --- |
| Node.js / TypeScript | `ailabtools` | Node.js 18 |
| Python async | `ailabtools-sdk` | Python 3.8 |
| Go | `github.com/ailabtools/ailabtools-sdk/packages/go` | Go 1.20 |
| Dart / Flutter | `ailabtools` | Dart 3.0 |
| PHP | `ailabtools/ailabtools-php` | PHP 8.1 |
| Java | `com.ailabtools:ailabtools-sdk` | Java 11 |
| Kotlin / Android | `com.ailabtools:ailabtools-kotlin` | Android API 21 or Java 8 |
| C# / .NET | `AILabTools` | .NET Standard 2.0 or .NET 8 |
| Swift | `AILabTools` | Swift 5.8 |

Every SDK exposes the same 93 endpoints:

- 87 current APIs from the official AILabTools documentation.
- 6 legacy-compatible endpoints retained for existing integrations.

The canonical endpoint inventory and parameter schema is
[`packages/spec.json`](packages/spec.json). Do not maintain a second handwritten
copy of all endpoint fields in this document.

## Repository Layout

| Path | Purpose |
| --- | --- |
| `packages/spec.json` | Canonical endpoint, parameter, response, and validation schema |
| `packages/node/` | Node.js and TypeScript package |
| `packages/python/` | Async Python package |
| `packages/go/` | Go module |
| `packages/dart/` | Dart and Flutter package |
| `packages/php/` | Composer package source |
| `packages/java/` | Maven package source |
| `packages/kotlin/` | Kotlin and Android Maven package source |
| `packages/dotnet/` | NuGet package source |
| `packages/swift/` | Swift Package Manager and CocoaPods source |
| `docs/` | Shared API reference, guides, and tutorials |
| `examples/` | Executable examples for each language |

## API Modules

Endpoints are grouped consistently in every SDK:

| Module | Responsibility |
| --- | --- |
| `common` | Credits and asynchronous task status |
| `cutout` | Background removal and extraction |
| `image` | Image editing, enhancement, effects, analysis, and generation |
| `portrait` | Face analysis, portrait editing, effects, and virtual try-on |

Language naming follows native conventions:

| Language | Parameter style | Example |
| --- | --- | --- |
| Node.js / TypeScript | `camelCase` | `upscaleFactor` |
| Python | `camelCase` dictionary keys | `upscaleFactor` |
| Go | exported fields | `UpscaleFactor` |
| Dart | `camelCase` | `upscaleFactor` |
| PHP | `camelCase` | `$upscaleFactor` |
| Java | builder methods | `.upscaleFactor(...)` |
| Kotlin / Android | `camelCase` | `upscaleFactor` |
| C# / .NET | PascalCase properties | `UpscaleFactor` |
| Swift | `camelCase` | `upscaleFactor` |

Wire names always match the API documentation, such as `upscale_factor`.

## Requests

- The base URL defaults to `https://www.ailabapi.com`.
- Authentication uses the `ailabapi-api-key` request header.
- File fields use `multipart/form-data`.
- Non-file requests use query parameters or JSON/form fields as defined by the
  canonical schema.
- File inputs accept local files, byte arrays, buffers, or language-native
  streams. Remote URL strings are not accepted as file inputs.
- Each SDK exposes configurable request timeouts.

## Responses and Errors

- SDK return types preserve the common API envelope and expose typed response
  data.
- API errors include the HTTP status, API error code, message, `request_id`, and
  `log_id` when supplied by the service.
- Asynchronous APIs return a task ID. SDK polling helpers wait for completion
  with configurable interval and timeout values.
- Result URLs are temporary and should be downloaded promptly.

## Validation

Generated request types enforce:

- Required fields.
- Primitive and file input types.
- Enumerated values.
- Numeric ranges where documented.
- Conditional requirements represented by `required_any_of`.

Validation errors must be raised before network I/O whenever the invalid input
can be detected locally.

## Documentation Sources

- [SDK documentation](docs/README.md)
- [Complete method and alias reference](docs/method-aliases.md)
- [Common API reference](docs/common.md)
- [Cutout API reference](docs/cutout.md)
- [Image API reference](docs/image.md)
- [Portrait API reference](docs/portrait.md)
- [Official AILabTools API documentation](https://www.ailabtools.com/docs)

## Maintenance Workflow

1. Compare the official API documentation with `packages/spec.json`.
2. Update the canonical schema for added, changed, or retired endpoints.
3. Regenerate or update all eight SDK packages from the same schema.
4. Regenerate shared API and method documentation.
5. Run unit tests and schema parity checks for every SDK.
6. Run live API smoke tests only with explicit approval because they consume
   credits.
7. Update examples, changelogs, package versions, and release links.

## Compatibility Policy

- New integrations should use current documented endpoints.
- Legacy-compatible endpoints remain available only to avoid breaking existing
  applications.
- Removal of a legacy endpoint requires a deprecation notice and migration
  guidance before a major-version release.
- Public method names and parameter mappings must remain consistent across all
  languages unless a language convention requires a documented difference.
