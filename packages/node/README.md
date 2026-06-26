# AILabTools SDK - AI Image API for Node.js and TypeScript

Official Node.js and TypeScript SDK for [AILabTools AI Image APIs](https://www.ailabtools.com/docs).

Build AI-powered photo editing features with simple API calls: background removal, image upscaling, object removal, face retouching, hairstyle changer, age and gender swap, cartoon avatar generation, skin analysis, virtual try-on, and more.

- Install from npm: `npm install ailabtools`
- 60+ active AI image, cutout, and portrait APIs
- Supports file uploads, URL input, async tasks, and temporary result URLs
- Get started with the [AILabTools Developer Console](https://www.ailabtools.com/developer)

## Installation

```bash
npm install ailabtools
```

## Quick Start

### 1. Get your API key

Create or copy your API key from the [AILabTools Developer Console](https://www.ailabtools.com/developer).

```bash
export AILAB_API_KEY="your_api_key_here"
```

### 2. Remove an image background

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

`FileInput` supports `Buffer | ArrayBuffer | Uint8Array`.

## Async Tasks

Async APIs return `task_id`. Poll results with `commonQueryAsyncTaskResult({ taskId })`.

## API Reference

- [AILabTools API Documentation](https://www.ailabtools.com/docs)
- [Get your AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools SDK Documentation](https://github.com/ailabtools/ailabtools-sdk/tree/main/docs)
- [Python SDK on PyPI](https://pypi.org/project/ailabtools-sdk/)
- [AILabTools SDK on GitHub](https://github.com/ailabtools/ailabtools-sdk)

## Error Handling

API errors throw `AILabApiError`, which includes troubleshooting fields such as `requestId` and `logId`.

## Testing

```bash
AILAB_API_KEY=xxx npm test
```

## License

MIT
