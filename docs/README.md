# AILabTools SDK Documentation

Official SDK documentation for AILabTools AI image and portrait APIs, including Node.js TypeScript, async Python, Go, Dart, Flutter, PHP, Java, C#/.NET, and Swift examples for background removal, image upscaling, object removal, face retouching, hairstyle changer, cartoon avatar generation, skin analysis, virtual try-on, and more.

## Contents

- [Quick Start](#quick-start)
- [SDK Packages](sdk-packages.md)
- [Popular Use Cases](#popular-use-cases)
- [Common Developer-Friendly Aliases](#common-developer-friendly-aliases)
- [Authentication and Configuration](#authentication-and-configuration)
- [Error Handling](#error-handling)
- [Async Task Polling](#async-task-polling)
- [File Uploads](#file-uploads)
- [Examples](#examples)
- [Tutorials](#tutorials)
- [Documentation](#documentation)
- [API Index](#api-index)
- [Complete Method and Alias Reference](method-aliases.md)
- [Legacy API Migration Guide](legacy-migration.md)
- [Security and Data Handling](security.md)
- [Examples for Recently Added APIs](new-api-examples.md)

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
  <version>0.5.4</version>
</dependency>
```

C# / .NET:

```bash
dotnet add package AILabTools --version 0.5.4
```

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

> Python package name is `ailabtools-sdk`, while the import name is `ailabtools`.

[Compare all official SDK packages and installation commands](sdk-packages.md).

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

The SDK uses camelCase parameters and maps them automatically to API field names. For example, `upscaleFactor` maps to `upscale_factor`, and `returnForm` maps to `return_form`.

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

[View the complete AILabTools SDK API index](#api-index).

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

## Authentication and Configuration

- Header: `ailabapi-api-key: <API_KEY>`
- Base URL: `https://www.ailabapi.com` by default

## Error Handling

### Node.js

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

### Python

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
result = await client.wait_for_task(
    task_id,
    interval=5,
    timeout=300,
    raise_on_failed=True,
)

print(result.get("data"))
```

## File Uploads

- Node.js file fields support `Buffer | ArrayBuffer | Uint8Array`.
- Python file fields support file-like objects with `read`, or `bytes` / `bytearray`.
- Go file fields support `FileFromPath`, `FileFromBytes`, or `FileFromReader`.
- Dart and Flutter file fields use `AILabFile.fromBytes`.
- PHP file fields use `FileInput::fromPath`, `FileInput::fromBytes`, or `FileInput::fromResource`.
- Java file fields use `FileInput.fromPath`, `FileInput.fromBytes`, or `FileInput.fromInputStream`.
- C#/.NET file fields use `FileInput.FromPath`, `FileInput.FromBytes`, or `FileInput.FromStream`.
- Swift file fields use `FileInput.fileURL` or `FileInput.data`.

## Examples

Copy-ready Node.js and Python examples are available in [`examples/`](../examples/), including background removal, image upscaling, object removal, async hairstyle generation, Next.js API routes, FastAPI upload servers, and batch folder processing.

## Tutorials

- [Background Removal API with AILabTools SDK](tutorials/background-removal-api.md)
- [Image Upscaler API with AILabTools SDK](tutorials/image-upscaler-api.md)
- [Async Task Polling with AILabTools SDK](tutorials/async-task-polling.md)
- [Legacy API Migration Guide](legacy-migration.md)
- [Examples for Recently Added APIs](new-api-examples.md)
- [Security and Data Handling](security.md)

## Documentation

- [Get your AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API Documentation](https://www.ailabtools.com/docs)
- [Node.js SDK on npm](https://www.npmjs.com/package/ailabtools)
- [Python SDK on PyPI](https://pypi.org/project/ailabtools-sdk/)
- [Go SDK on pkg.go.dev](https://pkg.go.dev/github.com/ailabtools/ailabtools-sdk/packages/go)
- [Dart and Flutter SDK on pub.dev](https://pub.dev/packages/ailabtools)
- [PHP SDK on Packagist](https://packagist.org/packages/ailabtools/ailabtools)
- [Java SDK on Maven Central](https://central.sonatype.com/artifact/com.ailabtools/ailabtools-sdk/0.5.4)
- C#/.NET SDK source and NuGet metadata: [`packages/dotnet`](../packages/dotnet)
- Swift SDK source, SwiftPM manifest, and CocoaPods podspec: [`packages/swift`](../packages/swift)
- [AILabTools SDK on GitHub](https://github.com/ailabtools/ailabtools-sdk)
- [SDK examples](https://github.com/ailabtools/ailabtools-sdk/tree/main/examples)

## API Index

The SDK exposes **93 endpoints**: **87 current APIs** from the [official AILabTools API documentation](https://www.ailabtools.com/docs) plus **6 legacy-compatible endpoints** retained for existing integrations. The legacy endpoints remain available to avoid breaking existing applications, but new integrations should prefer current documented APIs.

### Common

- `common.commonQueryAsyncTaskResult()` (`GET /api/common/query-async-task-result`) — Querying Async Task Results API
- `common.commonQueryCredits()` (`GET /api/common/query-credits`) — Querying Credits API

### Image

- `image.imageQueryingAsyncTaskResults()` (`GET /api/image/asyn-task-results`) — Querying Async Task Results API — Legacy compatibility
- `image.imageAiImageExtender()` (`POST /api/image/editing/ai-image-extender`) — AI Image Extender API
- `image.imageAiObjectReplacer()` (`POST /api/image/editing/ai-object-replacer`) — AI Object Replacer API
- `image.imageAIImageCropping()` (`POST /api/image/editing/image-cropping`) — AI Image Cropping API
- `image.imageErasure()` (`POST /api/image/editing/image-erase`) — Image Erasure API — Legacy compatibility
- `image.imageInvisibleImageWatermark()` (`POST /api/image/editing/image-invisible-image-watermark`) — Image Invisible Picture Watermark API
- `image.imageInvisibleTextWatermark()` (`POST /api/image/editing/image-invisible-text-watermarking`) — Image Invisible Text Watermark API
- `image.imageIntelligentComposition()` (`POST /api/image/editing/intelligent-composition`) — Intelligent Composition API
- `image.imagePhotoEditing()` (`POST /api/image/editing/photo-retouching`) — Photo Retouch API
- `image.imageRemoveObjects()` (`POST /api/image/editing/remove-objects`) — Remove Objects API
- `image.imageRemoveObjectsAdvanced()` (`POST /api/image/editing/remove-objects-advanced`) — Remove Objects Advanced API
- `image.imageRemoveObjectsPro()` (`POST /api/image/editing/remove-objects-pro`) — Remove Objects Pro API
- `image.imageAICartoonGenerator()` (`POST /api/image/effects/ai-anime-generator`) — AI Cartoon Generator API
- `image.imageColoring()` (`POST /api/image/effects/image-colorization`) — AI Photo Colorize API
- `image.imageStyleTransfer()` (`POST /api/image/effects/image-style-conversion`) — Photo to Painting API
- `image.imageStyleMigration()` (`POST /api/image/effects/image-style-migration`) — Style Transfer API — Legacy compatibility
- `image.imageColorEnhancement()` (`POST /api/image/enhance/image-color-enhancement`) — Image Color Enhancement API
- `image.imageContrastEnhancement()` (`POST /api/image/enhance/image-contrast-enhancement`) — Image Contrast Enhancement API
- `image.imageDehaze()` (`POST /api/image/enhance/image-defogging`) — Image Dehaze API
- `image.imageLosslessEnlargement()` (`POST /api/image/enhance/image-lossless-enlargement`) — Image Upscaler API
- `image.imageClarityEnhancement()` (`POST /api/image/enhance/image-sharpness-enhancement`) — Image Sharpness Enhancement API
- `image.imageDistortionCorrection()` (`POST /api/image/enhance/stretch-image-recovery`) — Stretched Image Restoration API
- `image.imageCompositionAestheticsScore()` (`POST /api/image/rating/image-composition-aesthetics-scoring`) — Image Composition Aesthetics Score API
- `image.imageExposureRating()` (`POST /api/image/rating/image-exposure-score`) — Image Exposure Score API
- `image.imageAINailArt()` (`POST /api/image/editing/ai-nail-art`) — AI Nail Art API
- `image.imageAINailArtPro()` (`POST /api/image/editing/ai-nail-art-pro`) — AI Nail Art Pro API
- `image.imageAIPhotography()` (`POST /api/image/effects/ai-photography`) — AI Photography API
- `image.imageAIEmojiGenerator()` (`POST /api/image/effects/photo-to-emoji-grid`) — AI Emoji Generator API
- `image.imagePhotoToColoringPage()` (`POST /api/image/effects/photo-to-line-art`) — Photo to Coloring Page API
- `image.imageAIFlowerWallpaper()` (`POST /api/image/generation/ai-flower-wallpaper`) — AI Flower Wallpaper API

### Portrait

- `portrait.portraitFaceAnalyzer()` (`POST /api/portrait/analysis/face-analyzer`) — Face Analyzer API
- `portrait.portraitFaceAnalyzerAdvanced()` (`POST /api/portrait/analysis/face-analyzer-advanced`) — Face Analyzer Advanced API
- `portrait.portraitFacialLandmarks()` (`POST /api/portrait/analysis/face-key-points`) — Facial Landmarks API
- `portrait.portraitSkinAnalysisBasic()` (`POST /api/portrait/analysis/skin-analysis`) — Skin Analyze API
- `portrait.portraitSkinAnalysisAdvanced()` (`POST /api/portrait/analysis/skin-analysis-advanced`) — Skin Analyze Advanced API
- `portrait.portraitSkinAnalysisProfessional()` (`POST /api/portrait/analysis/skin-analysis-pro`) — Skin Analyze Pro API
- `portrait.portraitSkinDiseaseDetection()` (`POST /api/portrait/analysis/skin-disease-detection`) — Detect Skin Disease API — Legacy compatibility
- `portrait.portraitTryOnClothes()` (`POST /api/portrait/editing/try-on-clothes`) — Try on Clothes API
- `portrait.portraitTryOnClothesPro()` (`POST /api/portrait/editing/try-on-clothes-pro`) — Try on Clothes Pro API
- `portrait.portraitFacialBlurring()` (`POST /api/portrait/effects/blurred-faces`) — Face Blur API
- `portrait.portraitExpressionEditing()` (`POST /api/portrait/effects/emotion-editor`) — Change Facial Expressions API
- `portrait.portraitFaceRestorationEnhancement()` (`POST /api/portrait/effects/enhance-face`) — AI Face Enhancer API
- `portrait.portraitFaceAttributeEditing()` (`POST /api/portrait/effects/face-attribute-editing`) — Age & Gender Swap API
- `portrait.portraitFacialBeautification()` (`POST /api/portrait/effects/face-beauty`) — Face Beauty API
- `portrait.portraitFacialBeautificationAdvanced()` (`POST /api/portrait/effects/face-beauty-advanced`) — Face Beauty Advanced API
- `portrait.portraitFacialBeautificationPro()` (`POST /api/portrait/effects/face-beauty-pro`) — Face Beauty Pro API
- `portrait.portraitFacialFilters()` (`POST /api/portrait/effects/face-filter`) — Face Filters API
- `portrait.portraitFaceFusion()` (`POST /api/portrait/effects/face-fusion`) — Merge Portraits API
- `portrait.portraitHairstyleEditing()` (`POST /api/portrait/effects/hairstyle-editor`) — Hairstyle Changer API — Legacy compatibility
- `portrait.portraitHairstyleEditingPro()` (`POST /api/portrait/effects/hairstyle-editor-pro`) — Hairstyle Changer Pro API
- `portrait.portraitLipsColorChanger()` (`POST /api/portrait/effects/lips-color-changer`) — Lips Color Changer API
- `portrait.portraitLivePhotos()` (`POST /api/portrait/effects/live-photo`) — Live Photos API — Legacy compatibility
- `portrait.portraitCartoonYourself()` (`POST /api/portrait/effects/portrait-animation`) — Cartoon Yourself API
- `portrait.portraitIntelligentBeautification()` (`POST /api/portrait/effects/smart-beauty`) — Smart Beauty API
- `portrait.portraitIntelligentFaceSlimming()` (`POST /api/portrait/effects/smart-face-slimming`) — AI Face Slimming API
- `portrait.portraitIntelligentSkinRetouching()` (`POST /api/portrait/effects/smart-skin`) — AI Skin Beauty API
- `portrait.portraitTryOnClothesRefiner()` (`POST /api/portrait/enhance/try-on-clothes-refiner`) — Try on Clothes Refiner API
- `portrait.portraitAIFaceRating()` (`POST /api/portrait/analysis/ai-face-rating`) — AI Face Rating API
- `portrait.portraitAIBald()` (`POST /api/portrait/editing/ai-bald`) — AI Bald API
- `portrait.portraitAIBeardRemoval()` (`POST /api/portrait/editing/ai-beard-removal`) — AI Beard Removal API
- `portrait.portraitAIBeardStyling()` (`POST /api/portrait/editing/ai-beard-styling`) — AI Beard Styling API
- `portrait.portraitAIBreastExpansion()` (`POST /api/portrait/editing/ai-big-tits`) — AI Breast Expansion API
- `portrait.portraitAIButtEnhancement()` (`POST /api/portrait/editing/ai-butt-enhancement`) — AI Butt Enhancement API
- `portrait.portraitAIColoredContacts()` (`POST /api/portrait/editing/ai-colored-contacts`) — AI Colored Contacts API
- `portrait.portraitAIEyebrows()` (`POST /api/portrait/editing/ai-eyebrows`) — AI Eyebrows API
- `portrait.portraitAIEyelashes()` (`POST /api/portrait/editing/ai-eyelashes`) — AI Eyelashes API
- `portrait.portraitAIEyeshadowTryOn()` (`POST /api/portrait/editing/ai-eyeshadow`) — AI Eyeshadow Try-On API
- `portrait.portraitAIFaceSwap()` (`POST /api/portrait/editing/ai-face-swap`) — AI Face Swap API
- `portrait.portraitAIFatFilter()` (`POST /api/portrait/editing/ai-fat-filter`) — AI Fat Filter API
- `portrait.portraitAIHairColor()` (`POST /api/portrait/editing/ai-hair-color`) — AI Hair Color API
- `portrait.portraitAIHairLossSimulation()` (`POST /api/portrait/editing/ai-hair-loss-simulation`) — AI Hair Loss Simulation API
- `portrait.portraitAILipEnhancement()` (`POST /api/portrait/editing/ai-lip-enhancement`) — AI Lip Enhancement API
- `portrait.portraitAIWaistSlimming()` (`POST /api/portrait/editing/ai-waist-slimming`) — AI Waist Slimming API
- `portrait.portraitTryOnClothesPremium()` (`POST /api/portrait/editing/try-on-clothes-premium`) — Try on Clothes Premium API
- `portrait.portraitAIBigHeadEffect()` (`POST /api/portrait/effects/ai-big-head-effect`) — AI Big Head Effect API
- `portrait.portraitAIHalloweenMask()` (`POST /api/portrait/effects/ai-halloween-mask`) — AI Halloween Mask API
- `portrait.portraitAILipBiteExpressions()` (`POST /api/portrait/effects/ai-lip-bite-expressions`) — AI Lip Bite Expressions API
- `portrait.portraitAIRedLipGloss()` (`POST /api/portrait/effects/ai-red-lip-gloss`) — AI Red Lip Gloss API
- `portrait.portraitAISquareFaceFilter()` (`POST /api/portrait/effects/ai-square-face-filter`) — AI Square Face Filter API
- `portrait.portraitExpressionEditingAdvanced()` (`POST /api/portrait/effects/emotion-editor-advanced`) — Change Facial Expressions Advanced API
- `portrait.portraitHairstyleEditingPremium()` (`POST /api/portrait/effects/hairstyle-editor-premium`) — Hairstyle Changer Premium API
- `portrait.portraitAISkinEnhancementAdvanced()` (`POST /api/portrait/effects/smart-skin-advanced`) — AI Skin Enhancement Advanced API

### Cutout

- `cutout.cutoutClothingBackgroundRemoval()` (`POST /api/cutout/general/apparel-background-removal`) — Costume Background Removal API
- `cutout.cutoutProductBackgroundRemoval()` (`POST /api/cutout/general/commodity-background-removal`) — Product Background Removal API
- `cutout.cutoutFoodBackgroundRemoval()` (`POST /api/cutout/general/food-background-removal`) — Food Background Removal API
- `cutout.cutoutUniversalBackgroundRemoval()` (`POST /api/cutout/general/universal-background-removal`) — Universal Background Removal API
- `cutout.cutoutAvatarExtraction()` (`POST /api/cutout/portrait/avatar-extraction`) — Head Extraction API
- `cutout.cutoutHairExtraction()` (`POST /api/cutout/portrait/hairstyle-extraction`) — Hairstyle Extraction API
- `cutout.cutoutHumanBackgroundRemoval()` (`POST /api/cutout/portrait/portrait-background-removal`) — Human Background Removal API
- `cutout.cutoutHDUniversalBackgroundRemoval()` (`POST /api/cutout/general/hd-universal-background-removal`) — HD Universal Background Removal API
- `cutout.cutoutHdHumanBodyBackgroundRemoval()` (`POST /api/cutout/portrait/hd-portrait-background-removal`) — HD Human Background Removal API

## Reference Documents

- [Official SDK Packages](sdk-packages.md)
- [Common](common.md)
- [Image](image.md)
- [Portrait](portrait.md)
- [Cutout](cutout.md)

## Additional Guides

- [Error Codes and Troubleshooting](errors.md)
- [Full Usage Guide](guide.md)
- [Best Practices and Performance](best-practices.md)
- [Legacy API Migration Guide](legacy-migration.md)
- [Security and Data Handling](security.md)
- [Examples for Recently Added APIs](new-api-examples.md)
