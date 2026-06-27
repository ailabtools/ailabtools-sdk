# AILabTools SDK - Async Python SDK for AI Image APIs

Official async Python SDK for [AILabTools AI Image APIs](https://www.ailabtools.com/docs).

Build AI-powered photo editing features with simple API calls: background removal, image upscaling, object removal, face retouching, hairstyle changer, age and gender swap, cartoon avatar generation, skin analysis, virtual try-on, and more.

- Install the [AILabTools async Python SDK from PyPI](https://pypi.org/project/ailabtools-sdk/): `pip install ailabtools-sdk`
- Import in Python: `from ailabtools import AILabClient`
- 87 current APIs plus 6 legacy-compatible endpoints
- Supports file and in-memory uploads, async tasks, and temporary result URLs
- Get started with the [AILabTools Developer Console](https://www.ailabtools.com/developer)

## Requirements

- Python 3.8 or later

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

[View the complete AILabTools SDK API index](https://github.com/ailabtools/ailabtools-sdk/blob/main/docs/README.md#api-index).

## Common Developer-Friendly Aliases

Both full API method names and short aliases are supported. For example, `client.background.remove()` calls the same Universal Background Removal API as `client.cutout.cutoutUniversalBackgroundRemoval()`.

| API | Full method | Alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.remove_objects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.change_hairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

[View the complete method and alias reference](https://github.com/ailabtools/ailabtools-sdk/blob/main/docs/method-aliases.md).

## File Uploads

File parameters support file-like objects with a `read` method, or `bytes` / `bytearray`.

## Async Task Example

Some APIs return `task_id` for long-running image generation or enhancement jobs. Use `wait_for_task` to poll until the task succeeds, fails, or times out.

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

## API Reference

- [AILabTools API Documentation](https://www.ailabtools.com/docs)
- [Get your AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools SDK Documentation](https://github.com/ailabtools/ailabtools-sdk/tree/main/docs)
- [Node.js SDK on npm](https://www.npmjs.com/package/ailabtools)
- [AILabTools SDK on GitHub](https://github.com/ailabtools/ailabtools-sdk)
- [SDK examples](https://github.com/ailabtools/ailabtools-sdk/tree/main/examples)

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

## Testing

```bash
AILAB_API_KEY=xxx pytest -q
```

## License

MIT
