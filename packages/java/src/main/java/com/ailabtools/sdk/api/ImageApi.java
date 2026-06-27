package com.ailabtools.sdk.api;

import com.ailabtools.sdk.generated.params.ImageAINailArtParams;
import com.ailabtools.sdk.generated.response.ImageAINailArtResponse;
import com.ailabtools.sdk.generated.params.ImageAINailArtProParams;
import com.ailabtools.sdk.generated.response.ImageAINailArtProResponse;
import com.ailabtools.sdk.generated.params.ImageAIPhotographyParams;
import com.ailabtools.sdk.generated.response.ImageAIPhotographyResponse;
import com.ailabtools.sdk.generated.params.ImageAIEmojiGeneratorParams;
import com.ailabtools.sdk.generated.response.ImageAIEmojiGeneratorResponse;
import com.ailabtools.sdk.generated.params.ImagePhotoToColoringPageParams;
import com.ailabtools.sdk.generated.response.ImagePhotoToColoringPageResponse;
import com.ailabtools.sdk.generated.params.ImageAIFlowerWallpaperParams;
import com.ailabtools.sdk.generated.response.ImageAIFlowerWallpaperResponse;
import com.ailabtools.sdk.http.Requester;
import com.ailabtools.sdk.generated.params.ImageQueryingAsyncTaskResultsParams;
import com.ailabtools.sdk.generated.response.ImageQueryingAsyncTaskResultsResponse;
import com.ailabtools.sdk.generated.params.ImageAiImageExtenderParams;
import com.ailabtools.sdk.generated.response.ImageAiImageExtenderResponse;
import com.ailabtools.sdk.generated.params.ImageAiObjectReplacerParams;
import com.ailabtools.sdk.generated.response.ImageAiObjectReplacerResponse;
import com.ailabtools.sdk.generated.params.ImageAIImageCroppingParams;
import com.ailabtools.sdk.generated.response.ImageAIImageCroppingResponse;
import com.ailabtools.sdk.generated.params.ImageErasureParams;
import com.ailabtools.sdk.generated.response.ImageErasureResponse;
import com.ailabtools.sdk.generated.params.ImageInvisibleImageWatermarkParams;
import com.ailabtools.sdk.generated.response.ImageInvisibleImageWatermarkResponse;
import com.ailabtools.sdk.generated.params.ImageInvisibleTextWatermarkParams;
import com.ailabtools.sdk.generated.response.ImageInvisibleTextWatermarkResponse;
import com.ailabtools.sdk.generated.params.ImageIntelligentCompositionParams;
import com.ailabtools.sdk.generated.response.ImageIntelligentCompositionResponse;
import com.ailabtools.sdk.generated.params.ImagePhotoEditingParams;
import com.ailabtools.sdk.generated.response.ImagePhotoEditingResponse;
import com.ailabtools.sdk.generated.params.ImageRemoveObjectsParams;
import com.ailabtools.sdk.generated.response.ImageRemoveObjectsResponse;
import com.ailabtools.sdk.generated.params.ImageRemoveObjectsAdvancedParams;
import com.ailabtools.sdk.generated.response.ImageRemoveObjectsAdvancedResponse;
import com.ailabtools.sdk.generated.params.ImageRemoveObjectsProParams;
import com.ailabtools.sdk.generated.response.ImageRemoveObjectsProResponse;
import com.ailabtools.sdk.generated.params.ImageAICartoonGeneratorParams;
import com.ailabtools.sdk.generated.response.ImageAICartoonGeneratorResponse;
import com.ailabtools.sdk.generated.params.ImageColoringParams;
import com.ailabtools.sdk.generated.response.ImageColoringResponse;
import com.ailabtools.sdk.generated.params.ImageStyleTransferParams;
import com.ailabtools.sdk.generated.response.ImageStyleTransferResponse;
import com.ailabtools.sdk.generated.params.ImageStyleMigrationParams;
import com.ailabtools.sdk.generated.response.ImageStyleMigrationResponse;
import com.ailabtools.sdk.generated.params.ImageColorEnhancementParams;
import com.ailabtools.sdk.generated.response.ImageColorEnhancementResponse;
import com.ailabtools.sdk.generated.params.ImageContrastEnhancementParams;
import com.ailabtools.sdk.generated.response.ImageContrastEnhancementResponse;
import com.ailabtools.sdk.generated.params.ImageDehazeParams;
import com.ailabtools.sdk.generated.response.ImageDehazeResponse;
import com.ailabtools.sdk.generated.params.ImageLosslessEnlargementParams;
import com.ailabtools.sdk.generated.response.ImageLosslessEnlargementResponse;
import com.ailabtools.sdk.generated.params.ImageClarityEnhancementParams;
import com.ailabtools.sdk.generated.response.ImageClarityEnhancementResponse;
import com.ailabtools.sdk.generated.params.ImageDistortionCorrectionParams;
import com.ailabtools.sdk.generated.response.ImageDistortionCorrectionResponse;
import com.ailabtools.sdk.generated.params.ImageCompositionAestheticsScoreParams;
import com.ailabtools.sdk.generated.response.ImageCompositionAestheticsScoreResponse;
import com.ailabtools.sdk.generated.params.ImageExposureRatingParams;
import com.ailabtools.sdk.generated.response.ImageExposureRatingResponse;

/** AILabTools image API methods. */
public final class ImageApi {
    private final Requester requester;

    public ImageApi(Requester requester) {
        this.requester = requester;
    }

    public ImageQueryingAsyncTaskResultsResponse imageQueryingAsyncTaskResults(ImageQueryingAsyncTaskResultsParams params) {
        return requester.request("GET", "/api/image/asyn-task-results", params.toMap(), false, ImageQueryingAsyncTaskResultsResponse.class);
    }

    public ImageAiImageExtenderResponse imageAiImageExtender(ImageAiImageExtenderParams params) {
        return requester.request("POST", "/api/image/editing/ai-image-extender", params.toMap(), true, ImageAiImageExtenderResponse.class);
    }

    public ImageAiObjectReplacerResponse imageAiObjectReplacer(ImageAiObjectReplacerParams params) {
        return requester.request("POST", "/api/image/editing/ai-object-replacer", params.toMap(), true, ImageAiObjectReplacerResponse.class);
    }

    public ImageAIImageCroppingResponse imageAIImageCropping(ImageAIImageCroppingParams params) {
        return requester.request("POST", "/api/image/editing/image-cropping", params.toMap(), true, ImageAIImageCroppingResponse.class);
    }

    public ImageErasureResponse imageErasure(ImageErasureParams params) {
        return requester.request("POST", "/api/image/editing/image-erase", params.toMap(), true, ImageErasureResponse.class);
    }

    public ImageInvisibleImageWatermarkResponse imageInvisibleImageWatermark(ImageInvisibleImageWatermarkParams params) {
        return requester.request("POST", "/api/image/editing/image-invisible-image-watermark", params.toMap(), true, ImageInvisibleImageWatermarkResponse.class);
    }

    public ImageInvisibleTextWatermarkResponse imageInvisibleTextWatermark(ImageInvisibleTextWatermarkParams params) {
        return requester.request("POST", "/api/image/editing/image-invisible-text-watermarking", params.toMap(), true, ImageInvisibleTextWatermarkResponse.class);
    }

    public ImageIntelligentCompositionResponse imageIntelligentComposition(ImageIntelligentCompositionParams params) {
        return requester.request("POST", "/api/image/editing/intelligent-composition", params.toMap(), true, ImageIntelligentCompositionResponse.class);
    }

    public ImagePhotoEditingResponse imagePhotoEditing(ImagePhotoEditingParams params) {
        return requester.request("POST", "/api/image/editing/photo-retouching", params.toMap(), true, ImagePhotoEditingResponse.class);
    }

    public ImageRemoveObjectsResponse imageRemoveObjects(ImageRemoveObjectsParams params) {
        return requester.request("POST", "/api/image/editing/remove-objects", params.toMap(), true, ImageRemoveObjectsResponse.class);
    }

    public ImageRemoveObjectsAdvancedResponse imageRemoveObjectsAdvanced(ImageRemoveObjectsAdvancedParams params) {
        return requester.request("POST", "/api/image/editing/remove-objects-advanced", params.toMap(), true, ImageRemoveObjectsAdvancedResponse.class);
    }

    public ImageRemoveObjectsProResponse imageRemoveObjectsPro(ImageRemoveObjectsProParams params) {
        return requester.request("POST", "/api/image/editing/remove-objects-pro", params.toMap(), true, ImageRemoveObjectsProResponse.class);
    }

    public ImageAICartoonGeneratorResponse imageAICartoonGenerator(ImageAICartoonGeneratorParams params) {
        return requester.request("POST", "/api/image/effects/ai-anime-generator", params.toMap(), true, ImageAICartoonGeneratorResponse.class);
    }

    public ImageColoringResponse imageColoring(ImageColoringParams params) {
        return requester.request("POST", "/api/image/effects/image-colorization", params.toMap(), true, ImageColoringResponse.class);
    }

    public ImageStyleTransferResponse imageStyleTransfer(ImageStyleTransferParams params) {
        return requester.request("POST", "/api/image/effects/image-style-conversion", params.toMap(), true, ImageStyleTransferResponse.class);
    }

    public ImageStyleMigrationResponse imageStyleMigration(ImageStyleMigrationParams params) {
        return requester.request("POST", "/api/image/effects/image-style-migration", params.toMap(), true, ImageStyleMigrationResponse.class);
    }

    public ImageColorEnhancementResponse imageColorEnhancement(ImageColorEnhancementParams params) {
        return requester.request("POST", "/api/image/enhance/image-color-enhancement", params.toMap(), true, ImageColorEnhancementResponse.class);
    }

    public ImageContrastEnhancementResponse imageContrastEnhancement(ImageContrastEnhancementParams params) {
        return requester.request("POST", "/api/image/enhance/image-contrast-enhancement", params.toMap(), true, ImageContrastEnhancementResponse.class);
    }

    public ImageDehazeResponse imageDehaze(ImageDehazeParams params) {
        return requester.request("POST", "/api/image/enhance/image-defogging", params.toMap(), true, ImageDehazeResponse.class);
    }

    public ImageLosslessEnlargementResponse imageLosslessEnlargement(ImageLosslessEnlargementParams params) {
        return requester.request("POST", "/api/image/enhance/image-lossless-enlargement", params.toMap(), true, ImageLosslessEnlargementResponse.class);
    }

    public ImageClarityEnhancementResponse imageClarityEnhancement(ImageClarityEnhancementParams params) {
        return requester.request("POST", "/api/image/enhance/image-sharpness-enhancement", params.toMap(), true, ImageClarityEnhancementResponse.class);
    }

    public ImageDistortionCorrectionResponse imageDistortionCorrection(ImageDistortionCorrectionParams params) {
        return requester.request("POST", "/api/image/enhance/stretch-image-recovery", params.toMap(), true, ImageDistortionCorrectionResponse.class);
    }

    public ImageCompositionAestheticsScoreResponse imageCompositionAestheticsScore(ImageCompositionAestheticsScoreParams params) {
        return requester.request("POST", "/api/image/rating/image-composition-aesthetics-scoring", params.toMap(), true, ImageCompositionAestheticsScoreResponse.class);
    }

    public ImageExposureRatingResponse imageExposureRating(ImageExposureRatingParams params) {
        return requester.request("POST", "/api/image/rating/image-exposure-score", params.toMap(), true, ImageExposureRatingResponse.class);
    }

    public ImageLosslessEnlargementResponse upscale(ImageLosslessEnlargementParams params) {
        return imageLosslessEnlargement(params);
    }

    public ImageRemoveObjectsResponse removeObjects(ImageRemoveObjectsParams params) {
        return imageRemoveObjects(params);
    }

    // BEGIN GENERATED OPENAPI ADDITIONS
    public ImageAINailArtResponse imageAINailArt(ImageAINailArtParams params) {
        return requester.request("POST", "/api/image/editing/ai-nail-art", params.toMap(), true, ImageAINailArtResponse.class);
    }

    public ImageAINailArtProResponse imageAINailArtPro(ImageAINailArtProParams params) {
        return requester.request("POST", "/api/image/editing/ai-nail-art-pro", params.toMap(), true, ImageAINailArtProResponse.class);
    }

    public ImageAIPhotographyResponse imageAIPhotography(ImageAIPhotographyParams params) {
        return requester.request("POST", "/api/image/effects/ai-photography", params.toMap(), true, ImageAIPhotographyResponse.class);
    }

    public ImageAIEmojiGeneratorResponse imageAIEmojiGenerator(ImageAIEmojiGeneratorParams params) {
        return requester.request("POST", "/api/image/effects/photo-to-emoji-grid", params.toMap(), true, ImageAIEmojiGeneratorResponse.class);
    }

    public ImagePhotoToColoringPageResponse imagePhotoToColoringPage(ImagePhotoToColoringPageParams params) {
        return requester.request("POST", "/api/image/effects/photo-to-line-art", params.toMap(), true, ImagePhotoToColoringPageResponse.class);
    }

    public ImageAIFlowerWallpaperResponse imageAIFlowerWallpaper(ImageAIFlowerWallpaperParams params) {
        return requester.request("POST", "/api/image/generation/ai-flower-wallpaper", params.toMap(), true, ImageAIFlowerWallpaperResponse.class);
    }
}
