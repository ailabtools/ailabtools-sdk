# AILabTools SDK Method and Alias Reference

AILabTools SDKs expose full method names that map directly to the official API names. Frequently used operations also provide shorter developer-friendly aliases.

This page lists the complete set of convenience aliases currently available in each SDK. APIs without an alias remain available through their full generated method names in the [complete AILabTools SDK API index](README.md#api-index).

## Node.js / TypeScript

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.removeObjects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.changeHairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

## Python Async

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.remove_objects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.change_hairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

## Go

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.Cutout.CutoutUniversalBackgroundRemoval()` | `client.Background.Remove()` |
| Image Upscaler | `client.Image.ImageLosslessEnlargement()` | `client.Image.Upscale()` |
| Remove Objects | `client.Image.ImageRemoveObjects()` | `client.Image.RemoveObjects()` |
| Hairstyle Changer Pro | `client.Portrait.PortraitHairstyleEditingPro()` | `client.Portrait.ChangeHairstyle()` |
| Smart Beauty | `client.Portrait.PortraitIntelligentBeautification()` | `client.Portrait.Retouch()` |

## Dart / Flutter

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.removeObjects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.changeHairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

## PHP

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `$client->cutout->cutoutUniversalBackgroundRemoval()` | `$client->background->remove()` |
| Image Upscaler | `$client->image->imageLosslessEnlargement()` | `$client->image->upscale()` |
| Remove Objects | `$client->image->imageRemoveObjects()` | `$client->image->removeObjects()` |
| Hairstyle Changer Pro | `$client->portrait->portraitHairstyleEditingPro()` | `$client->portrait->changeHairstyle()` |
| Smart Beauty | `$client->portrait->portraitIntelligentBeautification()` | `$client->portrait->retouch()` |

## Java

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout().cutoutUniversalBackgroundRemoval()` | `client.background().remove()` |
| Image Upscaler | `client.image().imageLosslessEnlargement()` | `client.image().upscale()` |
| Remove Objects | `client.image().imageRemoveObjects()` | `client.image().removeObjects()` |
| Hairstyle Changer Pro | `client.portrait().portraitHairstyleEditingPro()` | `client.portrait().changeHairstyle()` |
| Smart Beauty | `client.portrait().portraitIntelligentBeautification()` | `client.portrait().retouch()` |

## Related Documentation

- [Complete AILabTools SDK API index](README.md#api-index)
- [AILabTools API documentation](https://www.ailabtools.com/docs)
- [AILabTools Developer Console](https://www.ailabtools.com/developer)
- [AILabTools official SDK packages](sdk-packages.md)
