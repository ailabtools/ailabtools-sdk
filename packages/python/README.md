# AILabTools SDK - Async Python SDK for AI Image APIs

Official async Python SDK for [AILabTools AI Image APIs](https://www.ailabtools.com/docs).

Build AI-powered photo editing features with simple API calls: background removal, image upscaling, object removal, face retouching, hairstyle changer, age and gender swap, cartoon avatar generation, skin analysis, virtual try-on, and more.

- Install from PyPI: `pip install ailabtools-sdk`
- Import in Python: `from ailabtools import AILabClient`
- 60+ active AI image, cutout, and portrait APIs
- Supports file uploads, URL input, async tasks, and temporary result URLs
- Get started with the [AILabTools Developer Console](https://www.ailabtools.com/developer)

## Installation

Install the Python SDK:

```bash
pip install ailabtools-sdk
```

Import it in Python:

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

```py
import os
import asyncio
from ailabtools import AILabClient

async def main():
    client = AILabClient(api_key=os.environ["AILAB_API_KEY"])

    with open("./photo.jpg", "rb") as image:
        result = await client.cutout.cutoutUniversalBackgroundRemoval({
            "image": image,
            "returnForm": "whiteBK",
        })

    print(result["data"]["image_url"])
    await client.aclose()

asyncio.run(main())
```

The SDK uses camelCase parameters and maps them automatically to API field names. For example, `upscaleFactor` maps to `upscale-factor`, and `returnForm` maps to `return_form`.

## Popular Use Cases

| Use case | API | SDK method |
| --- | --- | --- |
| Remove image background | Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` |
| Upscale image 2x / 4x | Image Upscaler | `client.image.imageLosslessEnlargement()` |
| Change hairstyle | Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` |
| Retouch portrait | Smart Beauty | `client.portrait.portraitIntelligentBeautification()` |
| Remove objects | Image Erasure | `client.image.imageErasure()` |
| Generate cartoon avatar | Cartoon Yourself | `client.portrait.portraitCartoonYourself()` |
| Analyze face attributes | Face Analyzer | `client.portrait.portraitFaceAnalyzer()` |
| Virtual try-on | Try on Clothes Pro | `client.portrait.portraitTryOnClothesPro()` |

## File Uploads

File parameters support file-like objects with a `read` method, or `bytes` / `bytearray`.

## Async Tasks

Async APIs return `task_id`. Poll results with `commonQueryAsyncTaskResult({"taskId": ...})`.

## API Reference

- [AILabTools API Documentation](https://www.ailabtools.com/docs)
- [Get your AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools SDK Documentation](https://github.com/ailabtools/ailabtools-sdk/tree/main/docs)
- [Node.js SDK on npm](https://www.npmjs.com/package/ailabtools)
- [AILabTools SDK on GitHub](https://github.com/ailabtools/ailabtools-sdk)

## Testing

```bash
AILAB_API_KEY=xxx pytest -q
```

## License

MIT
