# AILabTools SDK Documentation

Official SDK documentation for AILabTools AI image and portrait APIs, including Node.js TypeScript and async Python examples for background removal, image upscaling, object removal, face retouching, hairstyle changer, cartoon avatar generation, skin analysis, virtual try-on, and more.

## Contents

- [Quick Start](#quick-start)
- [Popular Use Cases](#popular-use-cases)
- [Authentication and Configuration](#authentication-and-configuration)
- [Error Handling](#error-handling)
- [Async Task Polling](#async-task-polling)
- [File Uploads and URL Inputs](#file-uploads-and-url-inputs)
- [Examples](#examples)
- [Tutorials](#tutorials)
- [Documentation](#documentation)
- [API Index](#api-index)

## Quick Start

### 1. Get your API key

Create or copy your API key from the [AILabTools Developer Console](https://www.ailabtools.com/developer).

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

## Authentication and Configuration

- Header: `ailabapi-api-key: <API_KEY>`
- Base URL: `https://www.ailabapi.com` by default

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

## File Uploads and URL Inputs

- Node.js file fields support `Buffer | ArrayBuffer | Uint8Array`.
- Python file fields support file-like objects with `read`, or `bytes` / `bytearray`.


## Examples

Copy-ready Node.js and Python examples are available in [`examples/`](../examples/), including background removal, image upscaling, object removal, async hairstyle generation, Next.js API routes, FastAPI upload servers, and batch folder processing.

## Tutorials

- [Background Removal API with AILabTools SDK](tutorials/background-removal-api.md)
- [Image Upscaler API with AILabTools SDK](tutorials/image-upscaler-api.md)
- [Async Task Polling with AILabTools SDK](tutorials/async-task-polling.md)

## Documentation

- [Get your AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API Documentation](https://www.ailabtools.com/docs)
- [Node.js SDK on npm](https://www.npmjs.com/package/ailabtools)
- [Python SDK on PyPI](https://pypi.org/project/ailabtools-sdk/)
- [AILabTools SDK on GitHub](https://github.com/ailabtools/ailabtools-sdk)
- [SDK examples](https://github.com/ailabtools/ailabtools-sdk/tree/main/examples)

## API Index

The current SDK documents `60` active endpoints. Disabled platform endpoints are not included.

### Common

- `common.commonQueryAsyncTaskResult()`  (GET /api/common/query-async-task-result)  - Querying Async Task Results API
- `common.commonQueryCredits()`  (GET /api/common/query-credits)  - Querying Credits API

### Image

- `image.imageQueryingAsyncTaskResults()`  (GET /api/image/asyn-task-results)  - Querying Async Task Results API
- `image.imageAiImageExtender()`  (POST /api/image/editing/ai-image-extender)  - AI Image Extender API
- `image.imageAiObjectReplacer()`  (POST /api/image/editing/ai-object-replacer)  - AI Object Replacer API
- `image.imageAIImageCropping()`  (POST /api/image/editing/image-cropping)  - AI Image Cropping API
- `image.imageErasure()`  (POST /api/image/editing/image-erase)  - Image Erasure API
- `image.imageInvisibleImageWatermark()`  (POST /api/image/editing/image-invisible-image-watermark)  - Image Invisible Picture Watermark API
- `image.imageInvisibleTextWatermark()`  (POST /api/image/editing/image-invisible-text-watermarking)  - Image Invisible Text Watermark API
- `image.imageIntelligentComposition()`  (POST /api/image/editing/intelligent-composition)  - Intelligent Composition API
- `image.imagePhotoEditing()`  (POST /api/image/editing/photo-retouching)  - Photo Retouch API
- `image.imageRemoveObjects()`  (POST /api/image/editing/remove-objects)  - Remove Objects API
- `image.imageRemoveObjectsAdvanced()`  (POST /api/image/editing/remove-objects-advanced)  - Remove Objects Advanced API
- `image.imageRemoveObjectsPro()`  (POST /api/image/editing/remove-objects-pro)  - Remove Objects Pro API
- `image.imageAICartoonGenerator()`  (POST /api/image/effects/ai-anime-generator)  - AI Cartoon Generator API
- `image.imageColoring()`  (POST /api/image/effects/image-colorization)  - AI Photo Colorize API
- `image.imageStyleTransfer()`  (POST /api/image/effects/image-style-conversion)  - Photo to Painting API
- `image.imageStyleMigration()`  (POST /api/image/effects/image-style-migration)  - Style Transfer API
- `image.imageColorEnhancement()`  (POST /api/image/enhance/image-color-enhancement)  - Image Color Enhancement API
- `image.imageContrastEnhancement()`  (POST /api/image/enhance/image-contrast-enhancement)  - Image Contrast Enhancement API
- `image.imageDehaze()`  (POST /api/image/enhance/image-defogging)  - Image Dehaze API
- `image.imageLosslessEnlargement()`  (POST /api/image/enhance/image-lossless-enlargement)  - Image Upscaler API
- `image.imageClarityEnhancement()`  (POST /api/image/enhance/image-sharpness-enhancement)  - Image Sharpness Enhancement API
- `image.imageDistortionCorrection()`  (POST /api/image/enhance/stretch-image-recovery)  - Stretched Image Restoration API
- `image.imageCompositionAestheticsScore()`  (POST /api/image/rating/image-composition-aesthetics-scoring)  - Image Composition Aesthetics Score API
- `image.imageExposureRating()`  (POST /api/image/rating/image-exposure-score)  - Image Exposure Score API

### Portrait

- `portrait.portraitFaceAnalyzer()`  (POST /api/portrait/analysis/face-analyzer)  - Face Analyzer API
- `portrait.portraitFaceAnalyzerAdvanced()`  (POST /api/portrait/analysis/face-analyzer-advanced)  - Face Analyzer Advanced API
- `portrait.portraitFacialLandmarks()`  (POST /api/portrait/analysis/face-key-points)  - Facial Landmarks API
- `portrait.portraitSkinAnalysisBasic()`  (POST /api/portrait/analysis/skin-analysis)  - Skin Analyze API
- `portrait.portraitSkinAnalysisAdvanced()`  (POST /api/portrait/analysis/skin-analysis-advanced)  - Skin Analyze Advanced API
- `portrait.portraitSkinAnalysisProfessional()`  (POST /api/portrait/analysis/skin-analysis-pro)  - Skin Analyze Pro API
- `portrait.portraitSkinDiseaseDetection()`  (POST /api/portrait/analysis/skin-disease-detection)  - Detect Skin Disease API
- `portrait.portraitTryOnClothes()`  (POST /api/portrait/editing/try-on-clothes)  - Try on Clothes API
- `portrait.portraitTryOnClothesPro()`  (POST /api/portrait/editing/try-on-clothes-pro)  - Try on Clothes Pro API
- `portrait.portraitFacialBlurring()`  (POST /api/portrait/effects/blurred-faces)  - Face Blur API
- `portrait.portraitExpressionEditing()`  (POST /api/portrait/effects/emotion-editor)  - Change Facial Expressions API
- `portrait.portraitFaceRestorationEnhancement()`  (POST /api/portrait/effects/enhance-face)  - AI Face Enhancer API
- `portrait.portraitFaceAttributeEditing()`  (POST /api/portrait/effects/face-attribute-editing)  - Age & Gender Swap API
- `portrait.portraitFacialBeautification()`  (POST /api/portrait/effects/face-beauty)  - Face Beauty API
- `portrait.portraitFacialBeautificationAdvanced()`  (POST /api/portrait/effects/face-beauty-advanced)  - Face Beauty Advanced API
- `portrait.portraitFacialBeautificationPro()`  (POST /api/portrait/effects/face-beauty-pro)  - Face Beauty Pro API
- `portrait.portraitFacialFilters()`  (POST /api/portrait/effects/face-filter)  - Face Filters API
- `portrait.portraitFaceFusion()`  (POST /api/portrait/effects/face-fusion)  - Merge Portraits API
- `portrait.portraitHairstyleEditing()`  (POST /api/portrait/effects/hairstyle-editor)  - Hairstyle Changer API
- `portrait.portraitHairstyleEditingPro()`  (POST /api/portrait/effects/hairstyle-editor-pro)  - Hairstyle Changer Pro API
- `portrait.portraitLipsColorChanger()`  (POST /api/portrait/effects/lips-color-changer)  - Lips Color Changer API
- `portrait.portraitLivePhotos()`  (POST /api/portrait/effects/live-photo)  - Live Photos API
- `portrait.portraitCartoonYourself()`  (POST /api/portrait/effects/portrait-animation)  - Cartoon Yourself API
- `portrait.portraitIntelligentBeautification()`  (POST /api/portrait/effects/smart-beauty)  - Smart Beauty API
- `portrait.portraitIntelligentFaceSlimming()`  (POST /api/portrait/effects/smart-face-slimming)  - AI Face Slimming API
- `portrait.portraitIntelligentSkinRetouching()`  (POST /api/portrait/effects/smart-skin)  - AI Skin Beauty API
- `portrait.portraitTryOnClothesRefiner()`  (POST /api/portrait/enhance/try-on-clothes-refiner)  - Try on Clothes Refiner API

### Cutout

- `cutout.cutoutClothingBackgroundRemoval()`  (POST /api/cutout/general/apparel-background-removal)  - Costume Background Removal API
- `cutout.cutoutProductBackgroundRemoval()`  (POST /api/cutout/general/commodity-background-removal)  - Product Background Removal API
- `cutout.cutoutFoodBackgroundRemoval()`  (POST /api/cutout/general/food-background-removal)  - Food Background Removal API
- `cutout.cutoutUniversalBackgroundRemoval()`  (POST /api/cutout/general/universal-background-removal)  - Universal Background Removal API
- `cutout.cutoutAvatarExtraction()`  (POST /api/cutout/portrait/avatar-extraction)  - Head Extraction API
- `cutout.cutoutHairExtraction()`  (POST /api/cutout/portrait/hairstyle-extraction)  - Hairstyle Extraction API
- `cutout.cutoutHumanBackgroundRemoval()`  (POST /api/cutout/portrait/portrait-background-removal)  - Human Background Removal API

## Reference Documents

- [Common](common.md)
- [Image](image.md)
- [Portrait](portrait.md)
- [Cutout](cutout.md)

## Additional Guides

- [Error Codes and Troubleshooting](errors.md)
- [Full Usage Guide](guide.md)
- [Best Practices and Performance](best-practices.md)
