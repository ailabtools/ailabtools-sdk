# AILabTools SDK Method and Alias Reference

AILabTools SDKs expose full generated method names that map directly to the official API names. Frequently used operations also provide shorter developer-friendly aliases.

This page contains the complete set of **93 generated API methods** and the complete set of **5 convenience aliases** available in each language SDK.

## Complete Generated API Methods

The following **93 generated methods** are available in every language SDK: **87 current APIs** and **6 legacy-compatible endpoints**. Use the method identifier with the language-specific invocation style below.

| SDK | Invocation style |
| --- | --- |
| Node.js / TypeScript | `client.<module>.<method>()` |
| Python async | `client.<module>.<method>()` |
| Go | `client.<Module>.<Method>()` |
| Dart / Flutter | `client.<module>.<method>()` |
| PHP | `$client-><module>-><method>()` |
| Java | `client.<module>().<method>()` |
| C# / .NET | `client.<Module>.<Method>Async()` |
| Swift | `client.<module>.<method>()` with `try await` |

### Common Methods

| API | HTTP endpoint | Generated method | Status |
| --- | --- | --- | --- |
| Querying Async Task Results API | `GET /api/common/query-async-task-result` | `commonQueryAsyncTaskResult()` | Current |
| Querying Credits API | `GET /api/common/query-credits` | `commonQueryCredits()` | Current |

### Cutout Methods

| API | HTTP endpoint | Generated method | Status |
| --- | --- | --- | --- |
| Costume Background Removal API | `POST /api/cutout/general/apparel-background-removal` | `cutoutClothingBackgroundRemoval()` | Current |
| Product Background Removal API | `POST /api/cutout/general/commodity-background-removal` | `cutoutProductBackgroundRemoval()` | Current |
| Food Background Removal API | `POST /api/cutout/general/food-background-removal` | `cutoutFoodBackgroundRemoval()` | Current |
| Universal Background Removal API | `POST /api/cutout/general/universal-background-removal` | `cutoutUniversalBackgroundRemoval()` | Current |
| Head Extraction API | `POST /api/cutout/portrait/avatar-extraction` | `cutoutAvatarExtraction()` | Current |
| Hairstyle Extraction API | `POST /api/cutout/portrait/hairstyle-extraction` | `cutoutHairExtraction()` | Current |
| Human Background Removal API | `POST /api/cutout/portrait/portrait-background-removal` | `cutoutHumanBackgroundRemoval()` | Current |
| HD Universal Background Removal API | `POST /api/cutout/general/hd-universal-background-removal` | `cutoutHDUniversalBackgroundRemoval()` | Current |
| HD Human Background Removal API | `POST /api/cutout/portrait/hd-portrait-background-removal` | `cutoutHdHumanBodyBackgroundRemoval()` | Current |

### Image Methods

| API | HTTP endpoint | Generated method | Status |
| --- | --- | --- | --- |
| Querying Async Task Results API | `GET /api/image/asyn-task-results` | `imageQueryingAsyncTaskResults()` | Legacy compatibility |
| AI Image Extender API | `POST /api/image/editing/ai-image-extender` | `imageAiImageExtender()` | Current |
| AI Object Replacer API | `POST /api/image/editing/ai-object-replacer` | `imageAiObjectReplacer()` | Current |
| AI Image Cropping API | `POST /api/image/editing/image-cropping` | `imageAIImageCropping()` | Current |
| Image Erasure API | `POST /api/image/editing/image-erase` | `imageErasure()` | Legacy compatibility |
| Image Invisible Picture Watermark API | `POST /api/image/editing/image-invisible-image-watermark` | `imageInvisibleImageWatermark()` | Current |
| Image Invisible Text Watermark API | `POST /api/image/editing/image-invisible-text-watermarking` | `imageInvisibleTextWatermark()` | Current |
| Intelligent Composition API | `POST /api/image/editing/intelligent-composition` | `imageIntelligentComposition()` | Current |
| Photo Retouch API | `POST /api/image/editing/photo-retouching` | `imagePhotoEditing()` | Current |
| Remove Objects API | `POST /api/image/editing/remove-objects` | `imageRemoveObjects()` | Current |
| Remove Objects Advanced API | `POST /api/image/editing/remove-objects-advanced` | `imageRemoveObjectsAdvanced()` | Current |
| Remove Objects Pro API | `POST /api/image/editing/remove-objects-pro` | `imageRemoveObjectsPro()` | Current |
| AI Cartoon Generator API | `POST /api/image/effects/ai-anime-generator` | `imageAICartoonGenerator()` | Current |
| AI Photo Colorize API | `POST /api/image/effects/image-colorization` | `imageColoring()` | Current |
| Photo to Painting API | `POST /api/image/effects/image-style-conversion` | `imageStyleTransfer()` | Current |
| Style Transfer API | `POST /api/image/effects/image-style-migration` | `imageStyleMigration()` | Legacy compatibility |
| Image Color Enhancement API | `POST /api/image/enhance/image-color-enhancement` | `imageColorEnhancement()` | Current |
| Image Contrast Enhancement API | `POST /api/image/enhance/image-contrast-enhancement` | `imageContrastEnhancement()` | Current |
| Image Dehaze API | `POST /api/image/enhance/image-defogging` | `imageDehaze()` | Current |
| Image Upscaler API | `POST /api/image/enhance/image-lossless-enlargement` | `imageLosslessEnlargement()` | Current |
| Image Sharpness Enhancement API | `POST /api/image/enhance/image-sharpness-enhancement` | `imageClarityEnhancement()` | Current |
| Stretched Image Restoration API | `POST /api/image/enhance/stretch-image-recovery` | `imageDistortionCorrection()` | Current |
| Image Composition Aesthetics Score API | `POST /api/image/rating/image-composition-aesthetics-scoring` | `imageCompositionAestheticsScore()` | Current |
| Image Exposure Score API | `POST /api/image/rating/image-exposure-score` | `imageExposureRating()` | Current |
| AI Nail Art API | `POST /api/image/editing/ai-nail-art` | `imageAINailArt()` | Current |
| AI Nail Art Pro API | `POST /api/image/editing/ai-nail-art-pro` | `imageAINailArtPro()` | Current |
| AI Photography API | `POST /api/image/effects/ai-photography` | `imageAIPhotography()` | Current |
| AI Emoji Generator API | `POST /api/image/effects/photo-to-emoji-grid` | `imageAIEmojiGenerator()` | Current |
| Photo to Coloring Page API | `POST /api/image/effects/photo-to-line-art` | `imagePhotoToColoringPage()` | Current |
| AI Flower Wallpaper API | `POST /api/image/generation/ai-flower-wallpaper` | `imageAIFlowerWallpaper()` | Current |

### Portrait Methods

| API | HTTP endpoint | Generated method | Status |
| --- | --- | --- | --- |
| Face Analyzer API | `POST /api/portrait/analysis/face-analyzer` | `portraitFaceAnalyzer()` | Current |
| Face Analyzer Advanced API | `POST /api/portrait/analysis/face-analyzer-advanced` | `portraitFaceAnalyzerAdvanced()` | Current |
| Facial Landmarks API | `POST /api/portrait/analysis/face-key-points` | `portraitFacialLandmarks()` | Current |
| Skin Analyze API | `POST /api/portrait/analysis/skin-analysis` | `portraitSkinAnalysisBasic()` | Current |
| Skin Analyze Advanced API | `POST /api/portrait/analysis/skin-analysis-advanced` | `portraitSkinAnalysisAdvanced()` | Current |
| Skin Analyze Pro API | `POST /api/portrait/analysis/skin-analysis-pro` | `portraitSkinAnalysisProfessional()` | Current |
| Detect Skin Disease API | `POST /api/portrait/analysis/skin-disease-detection` | `portraitSkinDiseaseDetection()` | Legacy compatibility |
| Try on Clothes API | `POST /api/portrait/editing/try-on-clothes` | `portraitTryOnClothes()` | Current |
| Try on Clothes Pro API | `POST /api/portrait/editing/try-on-clothes-pro` | `portraitTryOnClothesPro()` | Current |
| Face Blur API | `POST /api/portrait/effects/blurred-faces` | `portraitFacialBlurring()` | Current |
| Change Facial Expressions API | `POST /api/portrait/effects/emotion-editor` | `portraitExpressionEditing()` | Current |
| AI Face Enhancer API | `POST /api/portrait/effects/enhance-face` | `portraitFaceRestorationEnhancement()` | Current |
| Age & Gender Swap API | `POST /api/portrait/effects/face-attribute-editing` | `portraitFaceAttributeEditing()` | Current |
| Face Beauty API | `POST /api/portrait/effects/face-beauty` | `portraitFacialBeautification()` | Current |
| Face Beauty Advanced API | `POST /api/portrait/effects/face-beauty-advanced` | `portraitFacialBeautificationAdvanced()` | Current |
| Face Beauty Pro API | `POST /api/portrait/effects/face-beauty-pro` | `portraitFacialBeautificationPro()` | Current |
| Face Filters API | `POST /api/portrait/effects/face-filter` | `portraitFacialFilters()` | Current |
| Merge Portraits API | `POST /api/portrait/effects/face-fusion` | `portraitFaceFusion()` | Current |
| Hairstyle Changer API | `POST /api/portrait/effects/hairstyle-editor` | `portraitHairstyleEditing()` | Legacy compatibility |
| Hairstyle Changer Pro API | `POST /api/portrait/effects/hairstyle-editor-pro` | `portraitHairstyleEditingPro()` | Current |
| Lips Color Changer API | `POST /api/portrait/effects/lips-color-changer` | `portraitLipsColorChanger()` | Current |
| Live Photos API | `POST /api/portrait/effects/live-photo` | `portraitLivePhotos()` | Legacy compatibility |
| Cartoon Yourself API | `POST /api/portrait/effects/portrait-animation` | `portraitCartoonYourself()` | Current |
| Smart Beauty API | `POST /api/portrait/effects/smart-beauty` | `portraitIntelligentBeautification()` | Current |
| AI Face Slimming API | `POST /api/portrait/effects/smart-face-slimming` | `portraitIntelligentFaceSlimming()` | Current |
| AI Skin Beauty API | `POST /api/portrait/effects/smart-skin` | `portraitIntelligentSkinRetouching()` | Current |
| Try on Clothes Refiner API | `POST /api/portrait/enhance/try-on-clothes-refiner` | `portraitTryOnClothesRefiner()` | Current |
| AI Face Rating API | `POST /api/portrait/analysis/ai-face-rating` | `portraitAIFaceRating()` | Current |
| AI Bald API | `POST /api/portrait/editing/ai-bald` | `portraitAIBald()` | Current |
| AI Beard Removal API | `POST /api/portrait/editing/ai-beard-removal` | `portraitAIBeardRemoval()` | Current |
| AI Beard Styling API | `POST /api/portrait/editing/ai-beard-styling` | `portraitAIBeardStyling()` | Current |
| AI Breast Expansion API | `POST /api/portrait/editing/ai-big-tits` | `portraitAIBreastExpansion()` | Current |
| AI Butt Enhancement API | `POST /api/portrait/editing/ai-butt-enhancement` | `portraitAIButtEnhancement()` | Current |
| AI Colored Contacts API | `POST /api/portrait/editing/ai-colored-contacts` | `portraitAIColoredContacts()` | Current |
| AI Eyebrows API | `POST /api/portrait/editing/ai-eyebrows` | `portraitAIEyebrows()` | Current |
| AI Eyelashes API | `POST /api/portrait/editing/ai-eyelashes` | `portraitAIEyelashes()` | Current |
| AI Eyeshadow Try-On API | `POST /api/portrait/editing/ai-eyeshadow` | `portraitAIEyeshadowTryOn()` | Current |
| AI Face Swap API | `POST /api/portrait/editing/ai-face-swap` | `portraitAIFaceSwap()` | Current |
| AI Fat Filter API | `POST /api/portrait/editing/ai-fat-filter` | `portraitAIFatFilter()` | Current |
| AI Hair Color API | `POST /api/portrait/editing/ai-hair-color` | `portraitAIHairColor()` | Current |
| AI Hair Loss Simulation API | `POST /api/portrait/editing/ai-hair-loss-simulation` | `portraitAIHairLossSimulation()` | Current |
| AI Lip Enhancement API | `POST /api/portrait/editing/ai-lip-enhancement` | `portraitAILipEnhancement()` | Current |
| AI Waist Slimming API | `POST /api/portrait/editing/ai-waist-slimming` | `portraitAIWaistSlimming()` | Current |
| Try on Clothes Premium API | `POST /api/portrait/editing/try-on-clothes-premium` | `portraitTryOnClothesPremium()` | Current |
| AI Big Head Effect API | `POST /api/portrait/effects/ai-big-head-effect` | `portraitAIBigHeadEffect()` | Current |
| AI Halloween Mask API | `POST /api/portrait/effects/ai-halloween-mask` | `portraitAIHalloweenMask()` | Current |
| AI Lip Bite Expressions API | `POST /api/portrait/effects/ai-lip-bite-expressions` | `portraitAILipBiteExpressions()` | Current |
| AI Red Lip Gloss API | `POST /api/portrait/effects/ai-red-lip-gloss` | `portraitAIRedLipGloss()` | Current |
| AI Square Face Filter API | `POST /api/portrait/effects/ai-square-face-filter` | `portraitAISquareFaceFilter()` | Current |
| Change Facial Expressions Advanced API | `POST /api/portrait/effects/emotion-editor-advanced` | `portraitExpressionEditingAdvanced()` | Current |
| Hairstyle Changer Premium API | `POST /api/portrait/effects/hairstyle-editor-premium` | `portraitHairstyleEditingPremium()` | Current |
| AI Skin Enhancement Advanced API | `POST /api/portrait/effects/smart-skin-advanced` | `portraitAISkinEnhancementAdvanced()` | Current |

## Convenience Aliases

Only the five frequently used operations below currently provide convenience aliases in each SDK. Every other API remains available through its full generated method listed above.

### Node.js / TypeScript

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.removeObjects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.changeHairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

### Python Async

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.remove_objects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.change_hairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

### Go

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.Cutout.CutoutUniversalBackgroundRemoval()` | `client.Background.Remove()` |
| Image Upscaler | `client.Image.ImageLosslessEnlargement()` | `client.Image.Upscale()` |
| Remove Objects | `client.Image.ImageRemoveObjects()` | `client.Image.RemoveObjects()` |
| Hairstyle Changer Pro | `client.Portrait.PortraitHairstyleEditingPro()` | `client.Portrait.ChangeHairstyle()` |
| Smart Beauty | `client.Portrait.PortraitIntelligentBeautification()` | `client.Portrait.Retouch()` |

### Dart / Flutter

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.removeObjects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.changeHairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

### PHP

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `$client->cutout->cutoutUniversalBackgroundRemoval()` | `$client->background->remove()` |
| Image Upscaler | `$client->image->imageLosslessEnlargement()` | `$client->image->upscale()` |
| Remove Objects | `$client->image->imageRemoveObjects()` | `$client->image->removeObjects()` |
| Hairstyle Changer Pro | `$client->portrait->portraitHairstyleEditingPro()` | `$client->portrait->changeHairstyle()` |
| Smart Beauty | `$client->portrait->portraitIntelligentBeautification()` | `$client->portrait->retouch()` |

### Java

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout().cutoutUniversalBackgroundRemoval()` | `client.background().remove()` |
| Image Upscaler | `client.image().imageLosslessEnlargement()` | `client.image().upscale()` |
| Remove Objects | `client.image().imageRemoveObjects()` | `client.image().removeObjects()` |
| Hairstyle Changer Pro | `client.portrait().portraitHairstyleEditingPro()` | `client.portrait().changeHairstyle()` |
| Smart Beauty | `client.portrait().portraitIntelligentBeautification()` | `client.portrait().retouch()` |

### C# / .NET

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.Cutout.CutoutUniversalBackgroundRemovalAsync()` | `client.Background.RemoveAsync()` |
| Image Upscaler | `client.Image.ImageLosslessEnlargementAsync()` | `client.Image.UpscaleAsync()` |
| Remove Objects | `client.Image.ImageRemoveObjectsAsync()` | `client.Image.RemoveObjectsAsync()` |
| Hairstyle Changer Pro | `client.Portrait.PortraitHairstyleEditingProAsync()` | `client.Portrait.ChangeHairstyleAsync()` |
| Smart Beauty | `client.Portrait.PortraitIntelligentBeautificationAsync()` | `client.Portrait.RetouchAsync()` |

### Swift

| API | Full method | Recommended alias |
| --- | --- | --- |
| Universal Background Removal | `client.cutout.cutoutUniversalBackgroundRemoval()` | `client.background.remove()` |
| Image Upscaler | `client.image.imageLosslessEnlargement()` | `client.image.upscale()` |
| Remove Objects | `client.image.imageRemoveObjects()` | `client.image.removeObjects()` |
| Hairstyle Changer Pro | `client.portrait.portraitHairstyleEditingPro()` | `client.portrait.changeHairstyle()` |
| Smart Beauty | `client.portrait.portraitIntelligentBeautification()` | `client.portrait.retouch()` |

## Related Documentation

- [Complete AILabTools SDK API index](README.md#api-index)
- [AILabTools API documentation](https://www.ailabtools.com/docs)
- [AILabTools Developer Console](https://www.ailabtools.com/developer)
- [AILabTools official SDK packages](sdk-packages.md)
