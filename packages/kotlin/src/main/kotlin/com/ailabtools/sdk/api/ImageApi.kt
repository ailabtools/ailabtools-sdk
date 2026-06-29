package com.ailabtools.sdk.api

import com.ailabtools.sdk.Requester
import com.ailabtools.sdk.generated.params.ImageQueryingAsyncTaskResultsParams
import com.ailabtools.sdk.generated.response.ImageQueryingAsyncTaskResultsResponse
import com.ailabtools.sdk.generated.params.ImageAiImageExtenderParams
import com.ailabtools.sdk.generated.response.ImageAiImageExtenderResponse
import com.ailabtools.sdk.generated.params.ImageAiObjectReplacerParams
import com.ailabtools.sdk.generated.response.ImageAiObjectReplacerResponse
import com.ailabtools.sdk.generated.params.ImageAIImageCroppingParams
import com.ailabtools.sdk.generated.response.ImageAIImageCroppingResponse
import com.ailabtools.sdk.generated.params.ImageErasureParams
import com.ailabtools.sdk.generated.response.ImageErasureResponse
import com.ailabtools.sdk.generated.params.ImageInvisibleImageWatermarkParams
import com.ailabtools.sdk.generated.response.ImageInvisibleImageWatermarkResponse
import com.ailabtools.sdk.generated.params.ImageInvisibleTextWatermarkParams
import com.ailabtools.sdk.generated.response.ImageInvisibleTextWatermarkResponse
import com.ailabtools.sdk.generated.params.ImageIntelligentCompositionParams
import com.ailabtools.sdk.generated.response.ImageIntelligentCompositionResponse
import com.ailabtools.sdk.generated.params.ImagePhotoEditingParams
import com.ailabtools.sdk.generated.response.ImagePhotoEditingResponse
import com.ailabtools.sdk.generated.params.ImageRemoveObjectsParams
import com.ailabtools.sdk.generated.response.ImageRemoveObjectsResponse
import com.ailabtools.sdk.generated.params.ImageRemoveObjectsAdvancedParams
import com.ailabtools.sdk.generated.response.ImageRemoveObjectsAdvancedResponse
import com.ailabtools.sdk.generated.params.ImageRemoveObjectsProParams
import com.ailabtools.sdk.generated.response.ImageRemoveObjectsProResponse
import com.ailabtools.sdk.generated.params.ImageAICartoonGeneratorParams
import com.ailabtools.sdk.generated.response.ImageAICartoonGeneratorResponse
import com.ailabtools.sdk.generated.params.ImageColoringParams
import com.ailabtools.sdk.generated.response.ImageColoringResponse
import com.ailabtools.sdk.generated.params.ImageStyleTransferParams
import com.ailabtools.sdk.generated.response.ImageStyleTransferResponse
import com.ailabtools.sdk.generated.params.ImageStyleMigrationParams
import com.ailabtools.sdk.generated.response.ImageStyleMigrationResponse
import com.ailabtools.sdk.generated.params.ImageColorEnhancementParams
import com.ailabtools.sdk.generated.response.ImageColorEnhancementResponse
import com.ailabtools.sdk.generated.params.ImageContrastEnhancementParams
import com.ailabtools.sdk.generated.response.ImageContrastEnhancementResponse
import com.ailabtools.sdk.generated.params.ImageDehazeParams
import com.ailabtools.sdk.generated.response.ImageDehazeResponse
import com.ailabtools.sdk.generated.params.ImageLosslessEnlargementParams
import com.ailabtools.sdk.generated.response.ImageLosslessEnlargementResponse
import com.ailabtools.sdk.generated.params.ImageClarityEnhancementParams
import com.ailabtools.sdk.generated.response.ImageClarityEnhancementResponse
import com.ailabtools.sdk.generated.params.ImageDistortionCorrectionParams
import com.ailabtools.sdk.generated.response.ImageDistortionCorrectionResponse
import com.ailabtools.sdk.generated.params.ImageCompositionAestheticsScoreParams
import com.ailabtools.sdk.generated.response.ImageCompositionAestheticsScoreResponse
import com.ailabtools.sdk.generated.params.ImageExposureRatingParams
import com.ailabtools.sdk.generated.response.ImageExposureRatingResponse
import com.ailabtools.sdk.generated.params.ImageAINailArtParams
import com.ailabtools.sdk.generated.response.ImageAINailArtResponse
import com.ailabtools.sdk.generated.params.ImageAINailArtProParams
import com.ailabtools.sdk.generated.response.ImageAINailArtProResponse
import com.ailabtools.sdk.generated.params.ImageAIPhotographyParams
import com.ailabtools.sdk.generated.response.ImageAIPhotographyResponse
import com.ailabtools.sdk.generated.params.ImageAIEmojiGeneratorParams
import com.ailabtools.sdk.generated.response.ImageAIEmojiGeneratorResponse
import com.ailabtools.sdk.generated.params.ImagePhotoToColoringPageParams
import com.ailabtools.sdk.generated.response.ImagePhotoToColoringPageResponse
import com.ailabtools.sdk.generated.params.ImageAIFlowerWallpaperParams
import com.ailabtools.sdk.generated.response.ImageAIFlowerWallpaperResponse

/** Image API operations. */
public class ImageApi internal constructor(private val requester: Requester) {
    /** Calls [Querying Async Task Results API](https://www.ailabtools.com/docs). */
    public suspend fun imageQueryingAsyncTaskResults(parameters: ImageQueryingAsyncTaskResultsParams): ImageQueryingAsyncTaskResultsResponse =
        requester.request("GET", "/api/image/asyn-task-results", parameters, ImageQueryingAsyncTaskResultsResponse.serializer())

    /** Calls [AI Image Extender API](https://www.ailabtools.com/docs/ai-image/editing/ai-image-extender/api). */
    public suspend fun imageAiImageExtender(parameters: ImageAiImageExtenderParams): ImageAiImageExtenderResponse =
        requester.request("POST", "/api/image/editing/ai-image-extender", parameters, ImageAiImageExtenderResponse.serializer())

    /** Calls [AI Object Replacer API](https://www.ailabtools.com/docs/ai-image/editing/ai-object-replacer/api). */
    public suspend fun imageAiObjectReplacer(parameters: ImageAiObjectReplacerParams): ImageAiObjectReplacerResponse =
        requester.request("POST", "/api/image/editing/ai-object-replacer", parameters, ImageAiObjectReplacerResponse.serializer())

    /** Calls [AI Image Cropping API](https://www.ailabtools.com/docs/ai-image/editing/image-cropping/api). */
    public suspend fun imageAIImageCropping(parameters: ImageAIImageCroppingParams): ImageAIImageCroppingResponse =
        requester.request("POST", "/api/image/editing/image-cropping", parameters, ImageAIImageCroppingResponse.serializer())

    /** Calls [Image Erasure API](https://www.ailabtools.com/docs). */
    public suspend fun imageErasure(parameters: ImageErasureParams): ImageErasureResponse =
        requester.request("POST", "/api/image/editing/image-erase", parameters, ImageErasureResponse.serializer())

    /** Calls [Image Invisible Picture Watermark API](https://www.ailabtools.com/docs/ai-image/editing/image-invisible-image-watermark/api). */
    public suspend fun imageInvisibleImageWatermark(parameters: ImageInvisibleImageWatermarkParams): ImageInvisibleImageWatermarkResponse =
        requester.request("POST", "/api/image/editing/image-invisible-image-watermark", parameters, ImageInvisibleImageWatermarkResponse.serializer())

    /** Calls [Image Invisible Text Watermark API](https://www.ailabtools.com/docs/ai-image/editing/image-invisible-text-watermarking/api). */
    public suspend fun imageInvisibleTextWatermark(parameters: ImageInvisibleTextWatermarkParams): ImageInvisibleTextWatermarkResponse =
        requester.request("POST", "/api/image/editing/image-invisible-text-watermarking", parameters, ImageInvisibleTextWatermarkResponse.serializer())

    /** Calls [Intelligent Composition API](https://www.ailabtools.com/docs/ai-image/editing/intelligent-composition/api). */
    public suspend fun imageIntelligentComposition(parameters: ImageIntelligentCompositionParams): ImageIntelligentCompositionResponse =
        requester.request("POST", "/api/image/editing/intelligent-composition", parameters, ImageIntelligentCompositionResponse.serializer())

    /** Calls [Photo Retouch API](https://www.ailabtools.com/docs/ai-image/editing/photo-retouching/api). */
    public suspend fun imagePhotoEditing(parameters: ImagePhotoEditingParams): ImagePhotoEditingResponse =
        requester.request("POST", "/api/image/editing/photo-retouching", parameters, ImagePhotoEditingResponse.serializer())

    /** Calls [Remove Objects API](https://www.ailabtools.com/docs/ai-image/editing/remove-objects/api). */
    public suspend fun imageRemoveObjects(parameters: ImageRemoveObjectsParams): ImageRemoveObjectsResponse =
        requester.request("POST", "/api/image/editing/remove-objects", parameters, ImageRemoveObjectsResponse.serializer())

    /** Convenience alias for [imageRemoveObjects]. */
    public suspend fun removeObjects(parameters: ImageRemoveObjectsParams): ImageRemoveObjectsResponse = imageRemoveObjects(parameters)

    /** Calls [Remove Objects Advanced API](https://www.ailabtools.com/docs/ai-image/editing/remove-objects-advanced/api). */
    public suspend fun imageRemoveObjectsAdvanced(parameters: ImageRemoveObjectsAdvancedParams): ImageRemoveObjectsAdvancedResponse =
        requester.request("POST", "/api/image/editing/remove-objects-advanced", parameters, ImageRemoveObjectsAdvancedResponse.serializer())

    /** Calls [Remove Objects Pro API](https://www.ailabtools.com/docs/ai-image/editing/remove-objects-pro/api). */
    public suspend fun imageRemoveObjectsPro(parameters: ImageRemoveObjectsProParams): ImageRemoveObjectsProResponse =
        requester.request("POST", "/api/image/editing/remove-objects-pro", parameters, ImageRemoveObjectsProResponse.serializer())

    /** Calls [AI Cartoon Generator API](https://www.ailabtools.com/docs/ai-image/effects/ai-anime-generator/api). */
    public suspend fun imageAICartoonGenerator(parameters: ImageAICartoonGeneratorParams): ImageAICartoonGeneratorResponse =
        requester.request("POST", "/api/image/effects/ai-anime-generator", parameters, ImageAICartoonGeneratorResponse.serializer())

    /** Calls [AI Photo Colorize API](https://www.ailabtools.com/docs/ai-image/effects/image-colorization/api). */
    public suspend fun imageColoring(parameters: ImageColoringParams): ImageColoringResponse =
        requester.request("POST", "/api/image/effects/image-colorization", parameters, ImageColoringResponse.serializer())

    /** Calls [Photo to Painting API](https://www.ailabtools.com/docs/ai-image/effects/image-style-conversion/api). */
    public suspend fun imageStyleTransfer(parameters: ImageStyleTransferParams): ImageStyleTransferResponse =
        requester.request("POST", "/api/image/effects/image-style-conversion", parameters, ImageStyleTransferResponse.serializer())

    /** Calls [Style Transfer API](https://www.ailabtools.com/docs). */
    public suspend fun imageStyleMigration(parameters: ImageStyleMigrationParams): ImageStyleMigrationResponse =
        requester.request("POST", "/api/image/effects/image-style-migration", parameters, ImageStyleMigrationResponse.serializer())

    /** Calls [Image Color Enhancement API](https://www.ailabtools.com/docs/ai-image/enhance/image-color-enhancement/api). */
    public suspend fun imageColorEnhancement(parameters: ImageColorEnhancementParams): ImageColorEnhancementResponse =
        requester.request("POST", "/api/image/enhance/image-color-enhancement", parameters, ImageColorEnhancementResponse.serializer())

    /** Calls [Image Contrast Enhancement API](https://www.ailabtools.com/docs/ai-image/enhance/image-contrast-enhancement/api). */
    public suspend fun imageContrastEnhancement(parameters: ImageContrastEnhancementParams): ImageContrastEnhancementResponse =
        requester.request("POST", "/api/image/enhance/image-contrast-enhancement", parameters, ImageContrastEnhancementResponse.serializer())

    /** Calls [Image Dehaze API](https://www.ailabtools.com/docs/ai-image/enhance/image-defogging/api). */
    public suspend fun imageDehaze(parameters: ImageDehazeParams): ImageDehazeResponse =
        requester.request("POST", "/api/image/enhance/image-defogging", parameters, ImageDehazeResponse.serializer())

    /** Calls [Image Upscaler API](https://www.ailabtools.com/docs/ai-image/enhance/image-lossless-enlargement/api). */
    public suspend fun imageLosslessEnlargement(parameters: ImageLosslessEnlargementParams): ImageLosslessEnlargementResponse =
        requester.request("POST", "/api/image/enhance/image-lossless-enlargement", parameters, ImageLosslessEnlargementResponse.serializer())

    /** Convenience alias for [imageLosslessEnlargement]. */
    public suspend fun upscale(parameters: ImageLosslessEnlargementParams): ImageLosslessEnlargementResponse = imageLosslessEnlargement(parameters)

    /** Calls [Image Sharpness Enhancement API](https://www.ailabtools.com/docs/ai-image/enhance/image-sharpness-enhancement/api). */
    public suspend fun imageClarityEnhancement(parameters: ImageClarityEnhancementParams): ImageClarityEnhancementResponse =
        requester.request("POST", "/api/image/enhance/image-sharpness-enhancement", parameters, ImageClarityEnhancementResponse.serializer())

    /** Calls [Stretched Image Restoration API](https://www.ailabtools.com/docs/ai-image/enhance/stretch-image-recovery/api). */
    public suspend fun imageDistortionCorrection(parameters: ImageDistortionCorrectionParams): ImageDistortionCorrectionResponse =
        requester.request("POST", "/api/image/enhance/stretch-image-recovery", parameters, ImageDistortionCorrectionResponse.serializer())

    /** Calls [Image Composition Aesthetics Score API](https://www.ailabtools.com/docs/ai-image/rating/image-composition-aesthetics-scoring/api). */
    public suspend fun imageCompositionAestheticsScore(parameters: ImageCompositionAestheticsScoreParams): ImageCompositionAestheticsScoreResponse =
        requester.request("POST", "/api/image/rating/image-composition-aesthetics-scoring", parameters, ImageCompositionAestheticsScoreResponse.serializer())

    /** Calls [Image Exposure Score API](https://www.ailabtools.com/docs/ai-image/rating/image-exposure-score/api). */
    public suspend fun imageExposureRating(parameters: ImageExposureRatingParams): ImageExposureRatingResponse =
        requester.request("POST", "/api/image/rating/image-exposure-score", parameters, ImageExposureRatingResponse.serializer())

    /** Calls [AI Nail Art API](https://www.ailabtools.com/docs/ai-image/editing/ai-nail-art/api). */
    public suspend fun imageAINailArt(parameters: ImageAINailArtParams): ImageAINailArtResponse =
        requester.request("POST", "/api/image/editing/ai-nail-art", parameters, ImageAINailArtResponse.serializer())

    /** Calls [AI Nail Art Pro API](https://www.ailabtools.com/docs/ai-image/editing/ai-nail-art-pro/api). */
    public suspend fun imageAINailArtPro(parameters: ImageAINailArtProParams): ImageAINailArtProResponse =
        requester.request("POST", "/api/image/editing/ai-nail-art-pro", parameters, ImageAINailArtProResponse.serializer())

    /** Calls [AI Photography API](https://www.ailabtools.com/docs/ai-image/effects/ai-photography/api). */
    public suspend fun imageAIPhotography(parameters: ImageAIPhotographyParams): ImageAIPhotographyResponse =
        requester.request("POST", "/api/image/effects/ai-photography", parameters, ImageAIPhotographyResponse.serializer())

    /** Calls [AI Emoji Generator API](https://www.ailabtools.com/docs/ai-image/effects/photo-to-emoji-grid/api). */
    public suspend fun imageAIEmojiGenerator(parameters: ImageAIEmojiGeneratorParams): ImageAIEmojiGeneratorResponse =
        requester.request("POST", "/api/image/effects/photo-to-emoji-grid", parameters, ImageAIEmojiGeneratorResponse.serializer())

    /** Calls [Photo to Coloring Page API](https://www.ailabtools.com/docs/ai-image/effects/photo-to-line-art/api). */
    public suspend fun imagePhotoToColoringPage(parameters: ImagePhotoToColoringPageParams): ImagePhotoToColoringPageResponse =
        requester.request("POST", "/api/image/effects/photo-to-line-art", parameters, ImagePhotoToColoringPageResponse.serializer())

    /** Calls [AI Flower Wallpaper API](https://www.ailabtools.com/docs/ai-image/generation/ai-flower-wallpaper/api). */
    public suspend fun imageAIFlowerWallpaper(parameters: ImageAIFlowerWallpaperParams): ImageAIFlowerWallpaperResponse =
        requester.request("POST", "/api/image/generation/ai-flower-wallpaper", parameters, ImageAIFlowerWallpaperResponse.serializer())

}
