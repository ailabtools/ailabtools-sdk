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

const result = await client.background.remove({
  image: readFileSync("./photo.jpg"),
  returnForm: "whiteBK",
});

console.log(result.data?.image_url);
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

Both full API method names and short aliases are supported. For example, `client.background.remove()` calls the same Universal Background Removal API as `client.cutout.cutoutUniversalBackgroundRemoval()`.

| API | Full method | Alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.removeObjects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.changeHairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

## File Uploads

`FileInput` supports `Buffer | ArrayBuffer | Uint8Array`.

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

## API Reference

- [AILabTools API Documentation](https://www.ailabtools.com/docs)
- [Get your AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools SDK Documentation](https://github.com/ailabtools/ailabtools-sdk/tree/main/docs)
- [Python SDK on PyPI](https://pypi.org/project/ailabtools-sdk/)
- [AILabTools SDK on GitHub](https://github.com/ailabtools/ailabtools-sdk)
- [SDK examples](https://github.com/ailabtools/ailabtools-sdk/tree/main/examples)

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

## Testing

```bash
AILAB_API_KEY=xxx npm test
```

## License

MIT
