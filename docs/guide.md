# AILabTools SDK Full Usage Guide

This guide helps developers use the AILabTools SDKs for Node.js, Python, Go, Dart, Flutter, PHP, and Java to build AI image editing features such as background removal, image upscaling, object removal, face retouching, hairstyle changer, cartoon avatar generation, skin analysis, virtual try-on, and more.

## Quick Start

### 1. Get your API key

Create or copy your API key from the [AILabTools Developer Console](https://www.ailabtools.com/developer). Read the full [AILabTools API Documentation](https://www.ailabtools.com/docs) for endpoint-specific parameters and response fields.

```bash
export AILAB_API_KEY="your_api_key_here"
```

### 2. Install the SDK

Node.js:

```bash
npm install ailabtools
```

Python:

```bash
pip install ailabtools-sdk
```

Go:

```bash
go get github.com/ailabtools/ailabtools-sdk/packages/go
```

Dart / Flutter:

```bash
flutter pub add ailabtools
```

PHP:

```bash
composer require ailabtools/ailabtools
```

Java:

```xml
<dependency>
  <groupId>com.ailabtools</groupId>
  <artifactId>ailabtools-sdk</artifactId>
  <version>0.5.3</version>
</dependency>
```

> Python package name is `ailabtools-sdk`, while the import name is `ailabtools`.

### 3. Remove an image background

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

#### Python (async)

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

#### Java

```java
AILabClient client = new AILabClient(System.getenv("AILAB_API_KEY"));
var result = client.background().remove(
        CutoutUniversalBackgroundRemovalParams.builder()
                .image(FileInput.fromPath(Path.of("./photo.jpg")))
                .returnForm("whiteBK")
                .build());

System.out.println(result.getData().getImageUrl());
```

The SDK uses camelCase parameters and maps them automatically to API field names. For example, `upscaleFactor` maps to `upscale_factor`, and `returnForm` maps to `return_form`.

## Popular Use Cases

| Popular API | Typical use case | SDK method |
| --- | --- | --- |
| [Cartoon Yourself API](https://www.ailabtools.com/docs/ai-portrait/effects/portrait-animation/api) | Create cartoon portraits and avatars from photos. | `client.portrait.portraitCartoonYourself()` |
| [Change Facial Expressions API](https://www.ailabtools.com/docs/ai-portrait/effects/emotion-editor/api) | Edit smiles, grins, sadness, and other facial expressions. | `client.portrait.portraitExpressionEditing()` |
| [Hairstyle Changer Premium API](https://www.ailabtools.com/docs/ai-portrait/effects/hairstyle-editor-premium/api) | Preview preset hairstyles or transfer a hairstyle from a reference image. | `client.portrait.portraitHairstyleEditingPremium()` |
| [Try on Clothes Premium API](https://www.ailabtools.com/docs/ai-portrait/editing/try-on-clothes-premium/api) | Generate high-quality virtual clothing try-on results. | `client.portrait.portraitTryOnClothesPremium()` |
| [Skin Analyze Pro API](https://www.ailabtools.com/docs/ai-portrait/analysis/skin-analysis-pro/api) | Analyze skin condition, texture, tone, acne, pores, and wrinkles. | `client.portrait.portraitSkinAnalysisProfessional()` |
| [Face Beauty Pro API](https://www.ailabtools.com/docs/ai-portrait/effects/face-beauty-pro/api) | Apply advanced portrait beautification and face shaping. | `client.portrait.portraitFacialBeautificationPro()` |
| [AI Face Swap API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-face-swap/api) | Swap a face into a target portrait while preserving the scene. | `client.portrait.portraitAIFaceSwap()` |
| [AI Breast Expansion API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-breast-expansion/api) | Apply a controlled bust-area adjustment to a portrait. | `client.portrait.portraitAIBreastExpansion()` |

[View the complete AILabTools SDK API index](README.md#api-index).

## Common Developer-Friendly Aliases

Both full API method names and short aliases are supported. The full names map directly to the official API docs, while aliases are easier to use in application code.

| API | Full method | Alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.removeObjects()` / `client.image.remove_objects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.changeHairstyle()` / `client.portrait.change_hairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

[View the complete method and alias reference](method-aliases.md).

## File Uploads

- Node.js: `Buffer | ArrayBuffer | Uint8Array`
- Python: file-like objects, `bytes`, or `bytearray`
- Go: `FileFromPath`, `FileFromBytes`, or `FileFromReader`
- Dart / Flutter: `AILabFile.fromBytes`
- PHP: `FileInput::fromPath`, `FileInput::fromBytes`, or `FileInput::fromResource`
- Java: `FileInput.fromPath`, `FileInput.fromBytes`, or `FileInput.fromInputStream`

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
result = await client.wait_for_task(
    task_id,
    interval=5,
    timeout=300,
    raise_on_failed=True,
)

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

## Error Handling

API errors raise `AILabApiError`, which includes troubleshooting fields such as `request_id` and `log_id`.

```py
try:
    with open("./photo.jpg", "rb") as image:
        result = await client.background.remove({
            "image": image,
            "returnForm": "whiteBK",
        })
    print(result["data"]["image_url"])
except Exception as error:
    print("AILabTools API Error:", error)
    # Send request_id and log_id to support if you need help.
```

## Examples

See [`examples/`](../examples/) for Next.js, FastAPI, background removal, image upscaling, object removal, async hairstyle generation, and batch folder processing examples.

## Tutorials

- [Background Removal API with AILabTools SDK](tutorials/background-removal-api.md)
- [Image Upscaler API with AILabTools SDK](tutorials/image-upscaler-api.md)
- [Async Task Polling with AILabTools SDK](tutorials/async-task-polling.md)

## Documentation

- [Get your AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API Documentation](https://www.ailabtools.com/docs)
- [Node.js SDK on npm](https://www.npmjs.com/package/ailabtools)
- [Python SDK on PyPI](https://pypi.org/project/ailabtools-sdk/)
- [Go SDK module](https://github.com/ailabtools/ailabtools-sdk/tree/main/packages/go)
- [AILabTools SDK on GitHub](https://github.com/ailabtools/ailabtools-sdk)
- [SDK examples](https://github.com/ailabtools/ailabtools-sdk/tree/main/examples)

## API Index

See `docs/common.md`, `docs/image.md`, `docs/portrait.md`, and `docs/cutout.md` for the full API reference.
