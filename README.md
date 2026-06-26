# AILabTools SDK - AI Image API for Node.js and Python

Official Node.js, TypeScript, and async Python SDKs for [AILabTools AI Image APIs](https://www.ailabtools.com/docs).

Build AI-powered photo editing features with simple API calls: background removal, image upscaling, object removal, face retouching, hairstyle changer, age and gender swap, cartoon avatar generation, skin analysis, virtual try-on, and more.

- Node.js / TypeScript SDK: `npm install ailabtools`
- Python async SDK: `pip install ailabtools-sdk`
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

## Installation

### Node.js / TypeScript

```bash
npm install ailabtools
```

### Python

```bash
pip install ailabtools-sdk
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

const result = await client.cutout.cutoutUniversalBackgroundRemoval({
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

## Documentation

- [Get your AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API Documentation](https://www.ailabtools.com/docs)
- [Node.js SDK on npm](https://www.npmjs.com/package/ailabtools)
- [Python SDK on PyPI](https://pypi.org/project/ailabtools-sdk/)
- [SDK API reference](https://github.com/ailabtools/ailabtools-sdk/tree/main/docs)

## License

MIT
