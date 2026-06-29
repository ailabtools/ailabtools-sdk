# AILabTools SDK - AI Image API for Node.js, Python, Go, Dart, Flutter, PHP, Ruby, Java, Kotlin/Android, .NET, and Swift

Official Node.js, TypeScript, async Python, Go, Dart, Flutter, PHP, Ruby, Java, Kotlin/Android, C#/.NET, and Swift SDKs for [AILabTools AI Image APIs](https://www.ailabtools.com/docs).

Build AI-powered photo editing features with simple API calls: background removal, image upscaling, object removal, face retouching, hairstyle changer, age and gender swap, cartoon avatar generation, skin analysis, virtual try-on, and more.

- [Node.js and TypeScript SDK on npm](https://www.npmjs.com/package/ailabtools): `npm install ailabtools`
- [Async Python SDK on PyPI](https://pypi.org/project/ailabtools-sdk/): `pip install ailabtools-sdk`
- [Go SDK on pkg.go.dev](https://pkg.go.dev/github.com/ailabtools/ailabtools-sdk/packages/go): `go get github.com/ailabtools/ailabtools-sdk/packages/go`
- [Dart and Flutter SDK on pub.dev](https://pub.dev/packages/ailabtools): `flutter pub add ailabtools`
- [PHP SDK on Packagist](https://packagist.org/packages/ailabtools/ailabtools): `composer require ailabtools/ailabtools`
- Ruby SDK for RubyGems: `gem install ailabtools`
- [Java SDK on Maven Central](https://central.sonatype.com/artifact/com.ailabtools/ailabtools-sdk/0.5.4): `com.ailabtools:ailabtools-sdk:0.5.4`
- Kotlin/Android SDK for Maven Central: `com.ailabtools:ailabtools-kotlin:0.5.4`
- C#/.NET SDK for NuGet: `dotnet add package AILabTools --version 0.5.4`
- Swift SDK for SwiftPM and CocoaPods: `.package(url: "https://github.com/ailabtools/ailabtools-sdk.git", from: "0.5.4")`
- 87 current APIs plus 6 legacy-compatible endpoints
- Supports file and in-memory uploads, async tasks, and temporary result URLs
- Get started with the [AILabTools Developer Console](https://www.ailabtools.com/developer)

## Features

- Background removal API for products, portraits, food, clothing, and general images
- Image upscaler API for 2x / 4x lossless enlargement
- AI photo editing API for object removal, image erasure, cropping, retouching, and watermarking
- AI portrait API for face retouching, hairstyle changer, cartoon avatar generation, skin analysis, and virtual try-on
- Node.js SDK with TypeScript definitions
- Async Python SDK for modern Python applications
- Cross-platform Dart and Flutter SDK with strongly typed models
- PHP SDK with PSR-4 autoloading and strongly typed DTOs
- Ruby SDK with RubyGems packaging and typed parameter/response objects
- Java 11 SDK with typed builders and Maven Central release metadata
- Coroutine-based Kotlin/Android SDK with typed models and Maven Central release metadata
- Asynchronous C#/.NET SDK targeting .NET Standard 2.0 and .NET 8
- Native asynchronous Swift SDK supporting Swift Package Manager and CocoaPods

## API Coverage

Every language SDK exposes the same **93 endpoints**: **87 current APIs** from the [official AILabTools API documentation](https://www.ailabtools.com/docs) and **6 legacy-compatible endpoints** retained for existing integrations. See the [complete SDK API index](docs/README.md#api-index) for method names, HTTP paths, and compatibility status.

## Installation

### Node.js / TypeScript

```bash
npm install ailabtools
```

### Python

```bash
pip install ailabtools-sdk
```

### Go

```bash
go get github.com/ailabtools/ailabtools-sdk/packages/go
```

### Dart / Flutter

```bash
flutter pub add ailabtools
```

### PHP

```bash
composer require ailabtools/ailabtools
```

### Ruby

```bash
gem install ailabtools
```

### Java

```xml
<dependency>
  <groupId>com.ailabtools</groupId>
  <artifactId>ailabtools-sdk</artifactId>
  <version>0.5.4</version>
</dependency>
```

### Kotlin / Android

```kotlin
dependencies {
    implementation("com.ailabtools:ailabtools-kotlin:0.5.4")
}
```

### C# / .NET

```bash
dotnet add package AILabTools --version 0.5.4
```

### Swift

Swift Package Manager:

```swift
.package(
  url: "https://github.com/ailabtools/ailabtools-sdk.git",
  from: "0.5.4"
)
```

CocoaPods:

```ruby
pod 'AILabTools', '~> 0.5.4'
```

Import it in Python as `ailabtools`:

```py
from ailabtools import AILabClient
```

> Note: The PyPI package name is `ailabtools-sdk`, while the Python import name is `ailabtools`.

## Quick Start

### 1. Get your API key

Create or copy your API key from the [AILabTools Developer Console](https://www.ailabtools.com/developer).

```bash
export AILAB_API_KEY="your_api_key_here"
```

### 2. Remove an image background

#### Node.js

```ts
import { readFileSync } from "node:fs";
import { AILabClient } from "ailabtools";

const client = new AILabClient({
  apiKey: process.env.AILAB_API_KEY!,
});

const result = await client.background.remove({
  image: readFileSync("./photo.jpg"),
  returnForm: "whiteBK",
});

console.log(result.data?.image_url);
```

#### Python

```py
import os
import asyncio
from ailabtools import AILabClient

async def main():
    client = AILabClient(api_key=os.environ["AILAB_API_KEY"])

    with open("./photo.jpg", "rb") as image:
        result = await client.background.remove({
            "image": image,
            "returnForm": "whiteBK",
        })

    print(result["data"]["image_url"])
    await client.aclose()

asyncio.run(main())
```

#### Go

```go
package main

import (
    "context"
    "fmt"
    "os"

    ailabtools "github.com/ailabtools/ailabtools-sdk/packages/go"
)

func main() {
    client := ailabtools.NewClient(os.Getenv("AILAB_API_KEY"))

    result, err := client.Background.Remove(context.Background(), ailabtools.CutoutUniversalBackgroundRemovalParams{
        Image:      ailabtools.FileFromPath("./photo.jpg"),
        ReturnForm: "whiteBK",
    })
    if err != nil {
        panic(err)
    }

    fmt.Println(result.Data.ImageURL)
}
```

#### Dart / Flutter

```dart
import 'dart:io';

import 'package:ailabtools/ailabtools.dart';

Future<void> main() async {
  final client = AILabClient(
    apiKey: Platform.environment['AILAB_API_KEY']!,
  );
  try {
    final bytes = await File('./photo.jpg').readAsBytes();
    final result = await client.background.remove(
      CutoutUniversalBackgroundRemovalParams(
        image: AILabFile.fromBytes(bytes, filename: 'photo.jpg'),
        returnForm: 'whiteBK',
      ),
    );
    print(result.data?.imageUrl);
  } finally {
    client.close();
  }
}
```

#### PHP

```php
<?php

require __DIR__ . '/vendor/autoload.php';

use AILabTools\AILabClient;
use AILabTools\Generated\Params\CutoutUniversalBackgroundRemovalParams;
use AILabTools\Http\FileInput;

$client = new AILabClient(apiKey: getenv('AILAB_API_KEY'));
$result = $client->background->remove(
    new CutoutUniversalBackgroundRemovalParams(
        image: FileInput::fromPath('./photo.jpg'),
        returnForm: 'whiteBK',
    ),
);

echo $result->data?->imageUrl;
```

#### Ruby

```ruby
require "ailabtools"

client = AILabTools::Client.new(api_key: ENV.fetch("AILAB_API_KEY"))
params = AILabTools::Generated::Params::CutoutUniversalBackgroundRemovalParams.new(
  image: AILabTools::FileInput.from_path("./photo.jpg", content_type: "image/jpeg"),
  return_form: "whiteBK"
)

result = client.background.remove(params)
puts result.data&.image_url
```

#### Java

```java
import com.ailabtools.sdk.AILabClient;
import com.ailabtools.sdk.generated.params.CutoutUniversalBackgroundRemovalParams;
import com.ailabtools.sdk.http.FileInput;
import java.nio.file.Path;

AILabClient client = new AILabClient(System.getenv("AILAB_API_KEY"));
var result = client.background().remove(
        CutoutUniversalBackgroundRemovalParams.builder()
                .image(FileInput.fromPath(Path.of("./photo.jpg")))
                .returnForm("whiteBK")
                .build());

System.out.println(result.getData().getImageUrl());
```

#### C# / .NET

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

#### Swift

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

The SDKs use language-native property names and map them automatically to API field names. For example, `upscaleFactor` or `UpscaleFactor` maps to `upscale_factor`.

## Popular Use Cases

| Popular API | Typical use case | SDK method | Try online |
| --- | --- | --- | --- |
| [Cartoon Yourself API](https://www.ailabtools.com/docs/ai-portrait/effects/portrait-animation/api) | Create cartoon portraits and avatars from photos. | `client.portrait.portraitCartoonYourself()` | [Try Cartoon Yourself online](https://www.ailabtools.com/face-anime-converter) |
| [Change Facial Expressions API](https://www.ailabtools.com/docs/ai-portrait/effects/emotion-editor/api) | Edit smiles, grins, sadness, and other facial expressions. | `client.portrait.portraitExpressionEditing()` | [Try Change Facial Expressions online](https://www.ailabtools.com/change-facial-expressions) |
| [Hairstyle Changer Premium API](https://www.ailabtools.com/docs/ai-portrait/effects/hairstyle-editor-premium/api) | Preview preset hairstyles or transfer a hairstyle from a reference image. | `client.portrait.portraitHairstyleEditingPremium()` | [Try Hairstyle Changer online](https://www.ailabtools.com/hairstyle-changer) |
| [Try on Clothes Premium API](https://www.ailabtools.com/docs/ai-portrait/editing/try-on-clothes-premium/api) | Generate high-quality virtual clothing try-on results. | `client.portrait.portraitTryOnClothesPremium()` | [Try Virtual Clothes Try-On online](https://www.ailabtools.com/virtual-try-on-clothes) |
| [Skin Analyze Pro API](https://www.ailabtools.com/docs/ai-portrait/analysis/skin-analysis-pro/api) | Analyze skin condition, texture, tone, acne, pores, and wrinkles. | `client.portrait.portraitSkinAnalysisProfessional()` | [Try AI Skin Analyzer online](https://www.ailabtools.com/ai-skin-analyze) |
| [Face Beauty Pro API](https://www.ailabtools.com/docs/ai-portrait/effects/face-beauty-pro/api) | Apply advanced portrait beautification and face shaping. | `client.portrait.portraitFacialBeautificationPro()` | [Try Retouch Portraits online](https://www.ailabtools.com/retouch-portraits) |
| [AI Face Swap API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-face-swap/api) | Swap a face into a target portrait while preserving the scene. | `client.portrait.portraitAIFaceSwap()` | [Try AI Face Swap online](https://www.ailabtools.com/face-swap) |
| [AI Breast Expansion API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-breast-expansion/api) | Apply a controlled bust-area adjustment to a portrait. | `client.portrait.portraitAIBreastExpansion()` | [Try AI Breast Expansion online](https://www.ailabtools.com/ai-breast-expansion) |

Browse more demos in [AILabTools AI Portrait Tools](https://www.ailabtools.com/ai-portrait-tools) and [AILabTools AI Image Tools](https://www.ailabtools.com/ai-image-tools).

[View the complete AILabTools SDK API index](docs/README.md#api-index).

## Common Developer-Friendly Aliases

Both full API method names and short aliases are supported. The full names map directly to the official API docs, while aliases are easier to use in application code.

| API | Full method | Alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.removeObjects()` / `client.image.remove_objects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.changeHairstyle()` / `client.portrait.change_hairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

[View the complete method and alias reference](docs/method-aliases.md).

## Async Task Example

Some APIs return `task_id` for long-running image generation or enhancement jobs. Use `waitForTask` to poll until the task succeeds, fails, or times out.

```ts
const task = await client.portrait.changeHairstyle({
  taskType: "async",
  image: readFileSync("./portrait.jpg"),
  hairStyle: "BuzzCut",
  color: "blonde",
});

const taskId = task.task_id || task.data?.task_id;
const result = await client.waitForTask(taskId!, {
  intervalMs: 5000,
  timeoutMs: 300000,
  throwOnFailed: true,
});

console.log(result.data);
```
Python async:

```py
task = await client.portrait.change_hairstyle({
    "taskType": "async",
    "image": image,
    "hairStyle": "BuzzCut",
    "color": "blonde",
})

task_id = task.get("task_id") or task.get("data", {}).get("task_id")
result = await client.wait_for_task(task_id, interval=5, timeout=300)
print(result.get("data"))
```

## Error Handling

API errors throw `AILabApiError`, which includes troubleshooting fields such as `requestId` and `logId`.

```ts
try {
  const result = await client.background.remove({
    image: readFileSync("./photo.jpg"),
    returnForm: "whiteBK",
  });

  console.log(result.data?.image_url);
} catch (error) {
  console.error("AILabTools API Error:", error);
  // Send request_id and log_id to support if you need help.
}
```

## Documentation

- [Get your AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API Documentation](https://www.ailabtools.com/docs)
- [Node.js SDK on npm](https://www.npmjs.com/package/ailabtools)
- [Python SDK on PyPI](https://pypi.org/project/ailabtools-sdk/)
- [Go SDK on pkg.go.dev](https://pkg.go.dev/github.com/ailabtools/ailabtools-sdk/packages/go)
- [Dart and Flutter SDK on pub.dev](https://pub.dev/packages/ailabtools)
- [PHP SDK on Packagist](https://packagist.org/packages/ailabtools/ailabtools)
- Ruby SDK source and RubyGems metadata: [`packages/ruby`](packages/ruby)
- [Java SDK on Maven Central](https://central.sonatype.com/artifact/com.ailabtools/ailabtools-sdk/0.5.4)
- Kotlin/Android SDK source and Maven Central metadata: [`packages/kotlin`](packages/kotlin)
- C#/.NET SDK source and NuGet metadata: [`packages/dotnet`](packages/dotnet)
- Swift SDK source, SwiftPM manifest, and CocoaPods podspec: [`packages/swift`](packages/swift)
- [All official SDK package links](docs/sdk-packages.md)
- [Complete method and alias reference](docs/method-aliases.md)
- [Legacy API migration guide](docs/legacy-migration.md)
- [Security and data handling](docs/security.md)
- [SDK best practices](docs/best-practices.md)
- [SDK API reference](https://github.com/ailabtools/ailabtools-sdk/tree/main/docs)
- [SDK examples](https://github.com/ailabtools/ailabtools-sdk/tree/main/examples)

## License

MIT
