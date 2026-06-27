# AILabTools SDK - AI Image API for Node.js, Python, Go, Dart, and Flutter

Official Node.js, TypeScript, async Python, Go, Dart, and Flutter SDKs for [AILabTools AI Image APIs](https://www.ailabtools.com/docs).

Build AI-powered photo editing features with simple API calls: background removal, image upscaling, object removal, face retouching, hairstyle changer, age and gender swap, cartoon avatar generation, skin analysis, virtual try-on, and more.

- Node.js / TypeScript SDK: `npm install ailabtools`
- Python async SDK: `pip install ailabtools-sdk`
- Go SDK: `go get github.com/ailabtools/ailabtools-sdk/packages/go`
- Dart / Flutter SDK: `flutter pub add ailabtools`
- 60+ active AI image, cutout, and portrait APIs
- Supports file uploads, URL input, async tasks, and temporary result URLs
- Get started with the [AILabTools Developer Console](https://www.ailabtools.com/developer)

## Features

- Background removal API for products, portraits, food, clothing, and general images
- Image upscaler API for 2x / 4x lossless enlargement
- AI photo editing API for object removal, image erasure, cropping, retouching, and watermarking
- AI portrait API for face retouching, hairstyle changer, cartoon avatar generation, skin analysis, and virtual try-on
- Node.js SDK with TypeScript definitions
- Async Python SDK for modern Python applications
- Cross-platform Dart and Flutter SDK with strongly typed models

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

The SDK uses camelCase parameters and maps them automatically to API field names. For example, `upscaleFactor` maps to `upscale_factor`, and `returnForm` maps to `return_form`.

## Popular Use Cases

| Use case | API | SDK method |
| --- | --- | --- |
| Remove image background | Universal Background Removal | `client.background.remove()` |
| Upscale image 2x / 4x | Image Upscaler | `client.image.upscale()` |
| Change hairstyle | Hairstyle Changer Pro | `client.portrait.changeHairstyle()` |
| Retouch portrait | Smart Beauty | `client.portrait.retouch()` |
| Remove objects | Remove Objects | `client.image.removeObjects()` |
| Generate cartoon avatar | Cartoon Yourself | `client.portrait.portraitCartoonYourself()` |
| Analyze face attributes | Face Analyzer | `client.portrait.portraitFaceAnalyzer()` |
| Virtual try-on | Try on Clothes Pro | `client.portrait.portraitTryOnClothesPro()` |

## Developer-Friendly Aliases

Both full API method names and short aliases are supported. The full names map directly to the official API docs, while aliases are easier to use in application code.

| API | Full method | Alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.removeObjects()` / `client.image.remove_objects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.changeHairstyle()` / `client.portrait.change_hairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

## Async Task Example

Some APIs return `task_id` for long-running image generation or enhancement jobs. Use `waitForTask` to poll until the task succeeds, fails, or times out.

```ts
const task = await client.portrait.changeHairstyle({
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
- [Go SDK module](https://github.com/ailabtools/ailabtools-sdk/tree/main/packages/go)
- [Dart and Flutter SDK](https://github.com/ailabtools/ailabtools-sdk/tree/main/packages/dart)
- [SDK API reference](https://github.com/ailabtools/ailabtools-sdk/tree/main/docs)
- [SDK examples](https://github.com/ailabtools/ailabtools-sdk/tree/main/examples)

## License

MIT
