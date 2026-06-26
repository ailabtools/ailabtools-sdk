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

## Developer-Friendly Aliases

Both full API method names and short aliases are supported.

| API | Full method | Alias |
| --- | --- | --- |
| Universal Background Removal | `client.Cutout.CutoutUniversalBackgroundRemoval()` | `client.Background.Remove()` |
| Image Upscaler | `client.Image.ImageLosslessEnlargement()` | `client.Image.Upscale()` |
| Remove Objects | `client.Image.ImageRemoveObjects()` | `client.Image.RemoveObjects()` |
| Hairstyle Changer Pro | `client.Portrait.PortraitHairstyleEditingPro()` | `client.Portrait.ChangeHairstyle()` |
| Smart Beauty | `client.Portrait.PortraitIntelligentBeautification()` | `client.Portrait.Retouch()` |

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
