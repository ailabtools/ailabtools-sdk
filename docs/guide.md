# AILabTools SDK Full Usage Guide

This guide helps developers use the AILabTools SDKs for Node.js, Python, and Go to build AI image editing features such as background removal, image upscaling, object removal, face retouching, hairstyle changer, cartoon avatar generation, skin analysis, virtual try-on, and more.

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

The SDK uses camelCase parameters and maps them automatically to API field names. For example, `upscaleFactor` maps to `upscale-factor`, and `returnForm` maps to `return_form`.

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

## File Uploads

- Node.js: `Buffer | ArrayBuffer | Uint8Array`
- Python: file-like objects, `bytes`, or `bytearray`
- Go: `FileFromPath`, `FileFromBytes`, or `FileFromReader`

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
