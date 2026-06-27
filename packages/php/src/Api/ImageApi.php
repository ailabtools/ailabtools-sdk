<?php

declare(strict_types=1);

namespace AILabTools\Api;

use AILabTools\Http\Requester;
use AILabTools\Generated\Params\ImageQueryingAsyncTaskResultsParams;
use AILabTools\Generated\Response\ImageQueryingAsyncTaskResultsResponse;
use AILabTools\Generated\Params\ImageAiImageExtenderParams;
use AILabTools\Generated\Response\ImageAiImageExtenderResponse;
use AILabTools\Generated\Params\ImageAiObjectReplacerParams;
use AILabTools\Generated\Response\ImageAiObjectReplacerResponse;
use AILabTools\Generated\Params\ImageAIImageCroppingParams;
use AILabTools\Generated\Response\ImageAIImageCroppingResponse;
use AILabTools\Generated\Params\ImageErasureParams;
use AILabTools\Generated\Response\ImageErasureResponse;
use AILabTools\Generated\Params\ImageInvisibleImageWatermarkParams;
use AILabTools\Generated\Response\ImageInvisibleImageWatermarkResponse;
use AILabTools\Generated\Params\ImageInvisibleTextWatermarkParams;
use AILabTools\Generated\Response\ImageInvisibleTextWatermarkResponse;
use AILabTools\Generated\Params\ImageIntelligentCompositionParams;
use AILabTools\Generated\Response\ImageIntelligentCompositionResponse;
use AILabTools\Generated\Params\ImagePhotoEditingParams;
use AILabTools\Generated\Response\ImagePhotoEditingResponse;
use AILabTools\Generated\Params\ImageRemoveObjectsParams;
use AILabTools\Generated\Response\ImageRemoveObjectsResponse;
use AILabTools\Generated\Params\ImageRemoveObjectsAdvancedParams;
use AILabTools\Generated\Response\ImageRemoveObjectsAdvancedResponse;
use AILabTools\Generated\Params\ImageRemoveObjectsProParams;
use AILabTools\Generated\Response\ImageRemoveObjectsProResponse;
use AILabTools\Generated\Params\ImageAICartoonGeneratorParams;
use AILabTools\Generated\Response\ImageAICartoonGeneratorResponse;
use AILabTools\Generated\Params\ImageColoringParams;
use AILabTools\Generated\Response\ImageColoringResponse;
use AILabTools\Generated\Params\ImageStyleTransferParams;
use AILabTools\Generated\Response\ImageStyleTransferResponse;
use AILabTools\Generated\Params\ImageStyleMigrationParams;
use AILabTools\Generated\Response\ImageStyleMigrationResponse;
use AILabTools\Generated\Params\ImageColorEnhancementParams;
use AILabTools\Generated\Response\ImageColorEnhancementResponse;
use AILabTools\Generated\Params\ImageContrastEnhancementParams;
use AILabTools\Generated\Response\ImageContrastEnhancementResponse;
use AILabTools\Generated\Params\ImageDehazeParams;
use AILabTools\Generated\Response\ImageDehazeResponse;
use AILabTools\Generated\Params\ImageLosslessEnlargementParams;
use AILabTools\Generated\Response\ImageLosslessEnlargementResponse;
use AILabTools\Generated\Params\ImageClarityEnhancementParams;
use AILabTools\Generated\Response\ImageClarityEnhancementResponse;
use AILabTools\Generated\Params\ImageDistortionCorrectionParams;
use AILabTools\Generated\Response\ImageDistortionCorrectionResponse;
use AILabTools\Generated\Params\ImageCompositionAestheticsScoreParams;
use AILabTools\Generated\Response\ImageCompositionAestheticsScoreResponse;
use AILabTools\Generated\Params\ImageExposureRatingParams;
use AILabTools\Generated\Response\ImageExposureRatingResponse;

use AILabTools\Generated\Params\ImageAINailArtParams;
use AILabTools\Generated\Response\ImageAINailArtResponse;
use AILabTools\Generated\Params\ImageAINailArtProParams;
use AILabTools\Generated\Response\ImageAINailArtProResponse;
use AILabTools\Generated\Params\ImageAIPhotographyParams;
use AILabTools\Generated\Response\ImageAIPhotographyResponse;
use AILabTools\Generated\Params\ImageAIEmojiGeneratorParams;
use AILabTools\Generated\Response\ImageAIEmojiGeneratorResponse;
use AILabTools\Generated\Params\ImagePhotoToColoringPageParams;
use AILabTools\Generated\Response\ImagePhotoToColoringPageResponse;
use AILabTools\Generated\Params\ImageAIFlowerWallpaperParams;
use AILabTools\Generated\Response\ImageAIFlowerWallpaperResponse;

final class ImageApi
{
    public function __construct(private readonly Requester $requester)
    {
    }

    public function imageQueryingAsyncTaskResults(ImageQueryingAsyncTaskResultsParams $params): ImageQueryingAsyncTaskResultsResponse
    {
        /** @var ImageQueryingAsyncTaskResultsResponse */
        return $this->requester->request('GET', '/api/image/asyn-task-results', $params->toArray(), false, [ImageQueryingAsyncTaskResultsResponse::class, 'fromArray']);
    }

    public function imageAiImageExtender(ImageAiImageExtenderParams $params): ImageAiImageExtenderResponse
    {
        /** @var ImageAiImageExtenderResponse */
        return $this->requester->request('POST', '/api/image/editing/ai-image-extender', $params->toArray(), true, [ImageAiImageExtenderResponse::class, 'fromArray']);
    }

    public function imageAiObjectReplacer(ImageAiObjectReplacerParams $params): ImageAiObjectReplacerResponse
    {
        /** @var ImageAiObjectReplacerResponse */
        return $this->requester->request('POST', '/api/image/editing/ai-object-replacer', $params->toArray(), true, [ImageAiObjectReplacerResponse::class, 'fromArray']);
    }

    public function imageAIImageCropping(ImageAIImageCroppingParams $params): ImageAIImageCroppingResponse
    {
        /** @var ImageAIImageCroppingResponse */
        return $this->requester->request('POST', '/api/image/editing/image-cropping', $params->toArray(), true, [ImageAIImageCroppingResponse::class, 'fromArray']);
    }

    public function imageErasure(ImageErasureParams $params): ImageErasureResponse
    {
        /** @var ImageErasureResponse */
        return $this->requester->request('POST', '/api/image/editing/image-erase', $params->toArray(), true, [ImageErasureResponse::class, 'fromArray']);
    }

    public function imageInvisibleImageWatermark(ImageInvisibleImageWatermarkParams $params): ImageInvisibleImageWatermarkResponse
    {
        /** @var ImageInvisibleImageWatermarkResponse */
        return $this->requester->request('POST', '/api/image/editing/image-invisible-image-watermark', $params->toArray(), true, [ImageInvisibleImageWatermarkResponse::class, 'fromArray']);
    }

    public function imageInvisibleTextWatermark(ImageInvisibleTextWatermarkParams $params): ImageInvisibleTextWatermarkResponse
    {
        /** @var ImageInvisibleTextWatermarkResponse */
        return $this->requester->request('POST', '/api/image/editing/image-invisible-text-watermarking', $params->toArray(), true, [ImageInvisibleTextWatermarkResponse::class, 'fromArray']);
    }

    public function imageIntelligentComposition(ImageIntelligentCompositionParams $params): ImageIntelligentCompositionResponse
    {
        /** @var ImageIntelligentCompositionResponse */
        return $this->requester->request('POST', '/api/image/editing/intelligent-composition', $params->toArray(), true, [ImageIntelligentCompositionResponse::class, 'fromArray']);
    }

    public function imagePhotoEditing(ImagePhotoEditingParams $params): ImagePhotoEditingResponse
    {
        /** @var ImagePhotoEditingResponse */
        return $this->requester->request('POST', '/api/image/editing/photo-retouching', $params->toArray(), true, [ImagePhotoEditingResponse::class, 'fromArray']);
    }

    public function imageRemoveObjects(ImageRemoveObjectsParams $params): ImageRemoveObjectsResponse
    {
        /** @var ImageRemoveObjectsResponse */
        return $this->requester->request('POST', '/api/image/editing/remove-objects', $params->toArray(), true, [ImageRemoveObjectsResponse::class, 'fromArray']);
    }

    public function imageRemoveObjectsAdvanced(ImageRemoveObjectsAdvancedParams $params): ImageRemoveObjectsAdvancedResponse
    {
        /** @var ImageRemoveObjectsAdvancedResponse */
        return $this->requester->request('POST', '/api/image/editing/remove-objects-advanced', $params->toArray(), true, [ImageRemoveObjectsAdvancedResponse::class, 'fromArray']);
    }

    public function imageRemoveObjectsPro(ImageRemoveObjectsProParams $params): ImageRemoveObjectsProResponse
    {
        /** @var ImageRemoveObjectsProResponse */
        return $this->requester->request('POST', '/api/image/editing/remove-objects-pro', $params->toArray(), true, [ImageRemoveObjectsProResponse::class, 'fromArray']);
    }

    public function imageAICartoonGenerator(ImageAICartoonGeneratorParams $params): ImageAICartoonGeneratorResponse
    {
        /** @var ImageAICartoonGeneratorResponse */
        return $this->requester->request('POST', '/api/image/effects/ai-anime-generator', $params->toArray(), true, [ImageAICartoonGeneratorResponse::class, 'fromArray']);
    }

    public function imageColoring(ImageColoringParams $params): ImageColoringResponse
    {
        /** @var ImageColoringResponse */
        return $this->requester->request('POST', '/api/image/effects/image-colorization', $params->toArray(), true, [ImageColoringResponse::class, 'fromArray']);
    }

    public function imageStyleTransfer(ImageStyleTransferParams $params): ImageStyleTransferResponse
    {
        /** @var ImageStyleTransferResponse */
        return $this->requester->request('POST', '/api/image/effects/image-style-conversion', $params->toArray(), true, [ImageStyleTransferResponse::class, 'fromArray']);
    }

    public function imageStyleMigration(ImageStyleMigrationParams $params): ImageStyleMigrationResponse
    {
        /** @var ImageStyleMigrationResponse */
        return $this->requester->request('POST', '/api/image/effects/image-style-migration', $params->toArray(), true, [ImageStyleMigrationResponse::class, 'fromArray']);
    }

    public function imageColorEnhancement(ImageColorEnhancementParams $params): ImageColorEnhancementResponse
    {
        /** @var ImageColorEnhancementResponse */
        return $this->requester->request('POST', '/api/image/enhance/image-color-enhancement', $params->toArray(), true, [ImageColorEnhancementResponse::class, 'fromArray']);
    }

    public function imageContrastEnhancement(ImageContrastEnhancementParams $params): ImageContrastEnhancementResponse
    {
        /** @var ImageContrastEnhancementResponse */
        return $this->requester->request('POST', '/api/image/enhance/image-contrast-enhancement', $params->toArray(), true, [ImageContrastEnhancementResponse::class, 'fromArray']);
    }

    public function imageDehaze(ImageDehazeParams $params): ImageDehazeResponse
    {
        /** @var ImageDehazeResponse */
        return $this->requester->request('POST', '/api/image/enhance/image-defogging', $params->toArray(), true, [ImageDehazeResponse::class, 'fromArray']);
    }

    public function imageLosslessEnlargement(ImageLosslessEnlargementParams $params): ImageLosslessEnlargementResponse
    {
        /** @var ImageLosslessEnlargementResponse */
        return $this->requester->request('POST', '/api/image/enhance/image-lossless-enlargement', $params->toArray(), true, [ImageLosslessEnlargementResponse::class, 'fromArray']);
    }

    public function imageClarityEnhancement(ImageClarityEnhancementParams $params): ImageClarityEnhancementResponse
    {
        /** @var ImageClarityEnhancementResponse */
        return $this->requester->request('POST', '/api/image/enhance/image-sharpness-enhancement', $params->toArray(), true, [ImageClarityEnhancementResponse::class, 'fromArray']);
    }

    public function imageDistortionCorrection(ImageDistortionCorrectionParams $params): ImageDistortionCorrectionResponse
    {
        /** @var ImageDistortionCorrectionResponse */
        return $this->requester->request('POST', '/api/image/enhance/stretch-image-recovery', $params->toArray(), true, [ImageDistortionCorrectionResponse::class, 'fromArray']);
    }

    public function imageCompositionAestheticsScore(ImageCompositionAestheticsScoreParams $params): ImageCompositionAestheticsScoreResponse
    {
        /** @var ImageCompositionAestheticsScoreResponse */
        return $this->requester->request('POST', '/api/image/rating/image-composition-aesthetics-scoring', $params->toArray(), true, [ImageCompositionAestheticsScoreResponse::class, 'fromArray']);
    }

    public function imageExposureRating(ImageExposureRatingParams $params): ImageExposureRatingResponse
    {
        /** @var ImageExposureRatingResponse */
        return $this->requester->request('POST', '/api/image/rating/image-exposure-score', $params->toArray(), true, [ImageExposureRatingResponse::class, 'fromArray']);
    }

    public function upscale(ImageLosslessEnlargementParams $params): ImageLosslessEnlargementResponse
    {
        return $this->imageLosslessEnlargement($params);
    }

    public function removeObjects(ImageRemoveObjectsParams $params): ImageRemoveObjectsResponse
    {
        return $this->imageRemoveObjects($params);
    }

    // BEGIN GENERATED OPENAPI ADDITIONS
    public function imageAINailArt(ImageAINailArtParams $params): ImageAINailArtResponse
    {
        /** @var ImageAINailArtResponse */
        return $this->requester->request('POST', '/api/image/editing/ai-nail-art', $params->toArray(), true, [ImageAINailArtResponse::class, 'fromArray']);
    }

    public function imageAINailArtPro(ImageAINailArtProParams $params): ImageAINailArtProResponse
    {
        /** @var ImageAINailArtProResponse */
        return $this->requester->request('POST', '/api/image/editing/ai-nail-art-pro', $params->toArray(), true, [ImageAINailArtProResponse::class, 'fromArray']);
    }

    public function imageAIPhotography(ImageAIPhotographyParams $params): ImageAIPhotographyResponse
    {
        /** @var ImageAIPhotographyResponse */
        return $this->requester->request('POST', '/api/image/effects/ai-photography', $params->toArray(), true, [ImageAIPhotographyResponse::class, 'fromArray']);
    }

    public function imageAIEmojiGenerator(ImageAIEmojiGeneratorParams $params): ImageAIEmojiGeneratorResponse
    {
        /** @var ImageAIEmojiGeneratorResponse */
        return $this->requester->request('POST', '/api/image/effects/photo-to-emoji-grid', $params->toArray(), true, [ImageAIEmojiGeneratorResponse::class, 'fromArray']);
    }

    public function imagePhotoToColoringPage(ImagePhotoToColoringPageParams $params): ImagePhotoToColoringPageResponse
    {
        /** @var ImagePhotoToColoringPageResponse */
        return $this->requester->request('POST', '/api/image/effects/photo-to-line-art', $params->toArray(), true, [ImagePhotoToColoringPageResponse::class, 'fromArray']);
    }

    public function imageAIFlowerWallpaper(ImageAIFlowerWallpaperParams $params): ImageAIFlowerWallpaperResponse
    {
        /** @var ImageAIFlowerWallpaperResponse */
        return $this->requester->request('POST', '/api/image/generation/ai-flower-wallpaper', $params->toArray(), true, [ImageAIFlowerWallpaperResponse::class, 'fromArray']);
    }
}
