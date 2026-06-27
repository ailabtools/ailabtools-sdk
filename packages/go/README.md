# AILabTools Go SDK

Official Go SDK for [AILabTools AI Image APIs](https://www.ailabtools.com/docs).

Build AI-powered photo editing features with Go: background removal, image upscaling, object removal, face retouching, hairstyle changer, skin analysis, virtual try-on, and more.

## Installation

```bash
go get github.com/ailabtools/ailabtools-sdk/packages/go
```

## Quick Start

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

## Popular Use Cases

| Popular API | Typical use case | SDK method |
| --- | --- | --- |
| [Cartoon Yourself API](https://www.ailabtools.com/docs/ai-portrait/effects/portrait-animation/api) | Create cartoon portraits and avatars from photos. | `client.Portrait.PortraitCartoonYourself()` |
| [Change Facial Expressions API](https://www.ailabtools.com/docs/ai-portrait/effects/emotion-editor/api) | Edit smiles, grins, sadness, and other facial expressions. | `client.Portrait.PortraitExpressionEditing()` |
| [Hairstyle Changer Premium API](https://www.ailabtools.com/docs/ai-portrait/effects/hairstyle-editor-premium/api) | Preview preset hairstyles or transfer a hairstyle from a reference image. | `client.Portrait.PortraitHairstyleEditingPremium()` |
| [Try on Clothes Premium API](https://www.ailabtools.com/docs/ai-portrait/editing/try-on-clothes-premium/api) | Generate high-quality virtual clothing try-on results. | `client.Portrait.PortraitTryOnClothesPremium()` |
| [Skin Analyze Pro API](https://www.ailabtools.com/docs/ai-portrait/analysis/skin-analysis-pro/api) | Analyze skin condition, texture, tone, acne, pores, and wrinkles. | `client.Portrait.PortraitSkinAnalysisProfessional()` |
| [Face Beauty Pro API](https://www.ailabtools.com/docs/ai-portrait/effects/face-beauty-pro/api) | Apply advanced portrait beautification and face shaping. | `client.Portrait.PortraitFacialBeautificationPro()` |
| [AI Face Swap API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-face-swap/api) | Swap a face into a target portrait while preserving the scene. | `client.Portrait.PortraitAIFaceSwap()` |
| [AI Breast Expansion API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-breast-expansion/api) | Apply a controlled bust-area adjustment to a portrait. | `client.Portrait.PortraitAIBreastExpansion()` |

[View the complete AILabTools SDK API index](https://github.com/ailabtools/ailabtools-sdk/blob/main/docs/README.md#api-index).

## Common Developer-Friendly Aliases

Both full API method names and short aliases are supported.

| API | Full method | Alias |
| --- | --- | --- |
| Universal Background Removal | `client.Cutout.CutoutUniversalBackgroundRemoval()` | `client.Background.Remove()` |
| Image Upscaler | `client.Image.ImageLosslessEnlargement()` | `client.Image.Upscale()` |
| Remove Objects | `client.Image.ImageRemoveObjects()` | `client.Image.RemoveObjects()` |
| Hairstyle Changer Pro | `client.Portrait.PortraitHairstyleEditingPro()` | `client.Portrait.ChangeHairstyle()` |
| Smart Beauty | `client.Portrait.PortraitIntelligentBeautification()` | `client.Portrait.Retouch()` |

[View the complete method and alias reference](https://github.com/ailabtools/ailabtools-sdk/blob/main/docs/method-aliases.md).

## Async Tasks

```go
task, err := client.Portrait.ChangeHairstyle(ctx, ailabtools.PortraitHairstyleEditingProParams{
    Image:     ailabtools.FileFromPath("./portrait.jpg"),
    HairStyle: "BuzzCut",
    Color:     "blonde",
})
if err != nil {
    panic(err)
}

result, err := client.WaitForTask(ctx, task.TaskID, &ailabtools.WaitForTaskOptions{})
if err != nil {
    panic(err)
}
fmt.Println(result.Data)
```

## File Uploads

Use `FileFromPath`, `FileFromBytes`, or `FileFromReader` for file parameters.

## Links

- [Get your AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API Documentation](https://www.ailabtools.com/docs)
- [AILabTools SDK on GitHub](https://github.com/ailabtools/ailabtools-sdk)

## License

MIT
