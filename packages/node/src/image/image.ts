import { Requester } from "../http";
import { mapParams } from "../utils";
import {
  ImageQueryingAsyncTaskResultsParams,
  ImageQueryingAsyncTaskResultsResponse,
  ImageQueryingAsyncTaskResultsResponseData,
  validateImageQueryingAsyncTaskResultsParams,
  ImageQueryingAsyncTaskResultsParamMap,
  ImageAiImageExtenderParams,
  ImageAiImageExtenderResponse,
  ImageAiImageExtenderResponseData,
  validateImageAiImageExtenderParams,
  ImageAiImageExtenderParamMap,
  ImageAiObjectReplacerParams,
  ImageAiObjectReplacerResponse,
  ImageAiObjectReplacerResponseData,
  validateImageAiObjectReplacerParams,
  ImageAiObjectReplacerParamMap,
  ImageAIImageCroppingParams,
  ImageAIImageCroppingResponse,
  ImageAIImageCroppingResponseData,
  validateImageAIImageCroppingParams,
  ImageAIImageCroppingParamMap,
  ImageErasureParams,
  ImageErasureResponse,
  ImageErasureResponseData,
  validateImageErasureParams,
  ImageErasureParamMap,
  ImageInvisibleImageWatermarkParams,
  ImageInvisibleImageWatermarkResponse,
  ImageInvisibleImageWatermarkResponseData,
  validateImageInvisibleImageWatermarkParams,
  ImageInvisibleImageWatermarkParamMap,
  ImageInvisibleTextWatermarkParams,
  ImageInvisibleTextWatermarkResponse,
  ImageInvisibleTextWatermarkResponseData,
  validateImageInvisibleTextWatermarkParams,
  ImageInvisibleTextWatermarkParamMap,
  ImageIntelligentCompositionParams,
  ImageIntelligentCompositionResponse,
  ImageIntelligentCompositionResponseData,
  validateImageIntelligentCompositionParams,
  ImageIntelligentCompositionParamMap,
  ImagePhotoEditingParams,
  ImagePhotoEditingResponse,
  ImagePhotoEditingResponseData,
  validateImagePhotoEditingParams,
  ImagePhotoEditingParamMap,
  ImageRemoveObjectsParams,
  ImageRemoveObjectsResponse,
  ImageRemoveObjectsResponseData,
  validateImageRemoveObjectsParams,
  ImageRemoveObjectsParamMap,
  ImageRemoveObjectsAdvancedParams,
  ImageRemoveObjectsAdvancedResponse,
  ImageRemoveObjectsAdvancedResponseData,
  validateImageRemoveObjectsAdvancedParams,
  ImageRemoveObjectsAdvancedParamMap,
  ImageRemoveObjectsProParams,
  ImageRemoveObjectsProResponse,
  ImageRemoveObjectsProResponseData,
  validateImageRemoveObjectsProParams,
  ImageRemoveObjectsProParamMap,
  ImageAICartoonGeneratorParams,
  ImageAICartoonGeneratorResponse,
  ImageAICartoonGeneratorResponseData,
  validateImageAICartoonGeneratorParams,
  ImageAICartoonGeneratorParamMap,
  ImageColoringParams,
  ImageColoringResponse,
  ImageColoringResponseData,
  validateImageColoringParams,
  ImageColoringParamMap,
  ImageStyleTransferParams,
  ImageStyleTransferResponse,
  ImageStyleTransferResponseData,
  validateImageStyleTransferParams,
  ImageStyleTransferParamMap,
  ImageStyleMigrationParams,
  ImageStyleMigrationResponse,
  ImageStyleMigrationResponseData,
  validateImageStyleMigrationParams,
  ImageStyleMigrationParamMap,
  ImageColorEnhancementParams,
  ImageColorEnhancementResponse,
  ImageColorEnhancementResponseData,
  validateImageColorEnhancementParams,
  ImageColorEnhancementParamMap,
  ImageContrastEnhancementParams,
  ImageContrastEnhancementResponse,
  ImageContrastEnhancementResponseData,
  validateImageContrastEnhancementParams,
  ImageContrastEnhancementParamMap,
  ImageDehazeParams,
  ImageDehazeResponse,
  ImageDehazeResponseData,
  validateImageDehazeParams,
  ImageDehazeParamMap,
  ImageLosslessEnlargementParams,
  ImageLosslessEnlargementResponse,
  ImageLosslessEnlargementResponseData,
  validateImageLosslessEnlargementParams,
  ImageLosslessEnlargementParamMap,
  ImageClarityEnhancementParams,
  ImageClarityEnhancementResponse,
  ImageClarityEnhancementResponseData,
  validateImageClarityEnhancementParams,
  ImageClarityEnhancementParamMap,
  ImageDistortionCorrectionParams,
  ImageDistortionCorrectionResponse,
  ImageDistortionCorrectionResponseData,
  validateImageDistortionCorrectionParams,
  ImageDistortionCorrectionParamMap,
  ImageCompositionAestheticsScoreParams,
  ImageCompositionAestheticsScoreResponse,
  ImageCompositionAestheticsScoreResponseData,
  validateImageCompositionAestheticsScoreParams,
  ImageCompositionAestheticsScoreParamMap,
  ImageExposureRatingParams,
  ImageExposureRatingResponse,
  ImageExposureRatingResponseData,
  validateImageExposureRatingParams,
  ImageExposureRatingParamMap,
  ImageAINailArtParams,
  ImageAINailArtResponse,
  ImageAINailArtResponseData,
  validateImageAINailArtParams,
  ImageAINailArtParamMap,
  ImageAINailArtProParams,
  ImageAINailArtProResponse,
  ImageAINailArtProResponseData,
  validateImageAINailArtProParams,
  ImageAINailArtProParamMap,
  ImageAIPhotographyParams,
  ImageAIPhotographyResponse,
  ImageAIPhotographyResponseData,
  validateImageAIPhotographyParams,
  ImageAIPhotographyParamMap,
  ImageAIEmojiGeneratorParams,
  ImageAIEmojiGeneratorResponse,
  ImageAIEmojiGeneratorResponseData,
  validateImageAIEmojiGeneratorParams,
  ImageAIEmojiGeneratorParamMap,
  ImagePhotoToColoringPageParams,
  ImagePhotoToColoringPageResponse,
  ImagePhotoToColoringPageResponseData,
  validateImagePhotoToColoringPageParams,
  ImagePhotoToColoringPageParamMap,
  ImageAIFlowerWallpaperParams,
  ImageAIFlowerWallpaperResponse,
  ImageAIFlowerWallpaperResponseData,
  validateImageAIFlowerWallpaperParams,
  ImageAIFlowerWallpaperParamMap
} from "../generated/endpoints";

export class ImageAPI {
  constructor(private request: Requester) {}

  async imageQueryingAsyncTaskResults(params: ImageQueryingAsyncTaskResultsParams): Promise<ImageQueryingAsyncTaskResultsResponse> {
    validateImageQueryingAsyncTaskResultsParams(params);
    const mapped = mapParams(params, ImageQueryingAsyncTaskResultsParamMap);
    return this.request.request<ImageQueryingAsyncTaskResultsResponseData>("GET", "/api/image/asyn-task-results", { query: mapped });
  }

  async imageAiImageExtender(params: ImageAiImageExtenderParams): Promise<ImageAiImageExtenderResponse> {
    validateImageAiImageExtenderParams(params);
    const mapped = mapParams(params, ImageAiImageExtenderParamMap);
    return this.request.request<ImageAiImageExtenderResponseData>("POST", "/api/image/editing/ai-image-extender", { body: mapped, multipart: true });
  }

  async imageAiObjectReplacer(params: ImageAiObjectReplacerParams): Promise<ImageAiObjectReplacerResponse> {
    validateImageAiObjectReplacerParams(params);
    const mapped = mapParams(params, ImageAiObjectReplacerParamMap);
    return this.request.request<ImageAiObjectReplacerResponseData>("POST", "/api/image/editing/ai-object-replacer", { body: mapped, multipart: true });
  }

  async imageAIImageCropping(params: ImageAIImageCroppingParams): Promise<ImageAIImageCroppingResponse> {
    validateImageAIImageCroppingParams(params);
    const mapped = mapParams(params, ImageAIImageCroppingParamMap);
    return this.request.request<ImageAIImageCroppingResponseData>("POST", "/api/image/editing/image-cropping", { body: mapped, multipart: true });
  }

  async imageErasure(params: ImageErasureParams): Promise<ImageErasureResponse> {
    validateImageErasureParams(params);
    const mapped = mapParams(params, ImageErasureParamMap);
    return this.request.request<ImageErasureResponseData>("POST", "/api/image/editing/image-erase", { body: mapped, multipart: true });
  }

  async imageInvisibleImageWatermark(params: ImageInvisibleImageWatermarkParams): Promise<ImageInvisibleImageWatermarkResponse> {
    validateImageInvisibleImageWatermarkParams(params);
    const mapped = mapParams(params, ImageInvisibleImageWatermarkParamMap);
    return this.request.request<ImageInvisibleImageWatermarkResponseData>("POST", "/api/image/editing/image-invisible-image-watermark", { body: mapped, multipart: true });
  }

  async imageInvisibleTextWatermark(params: ImageInvisibleTextWatermarkParams): Promise<ImageInvisibleTextWatermarkResponse> {
    validateImageInvisibleTextWatermarkParams(params);
    const mapped = mapParams(params, ImageInvisibleTextWatermarkParamMap);
    return this.request.request<ImageInvisibleTextWatermarkResponseData>("POST", "/api/image/editing/image-invisible-text-watermarking", { body: mapped, multipart: true });
  }

  async imageIntelligentComposition(params: ImageIntelligentCompositionParams): Promise<ImageIntelligentCompositionResponse> {
    validateImageIntelligentCompositionParams(params);
    const mapped = mapParams(params, ImageIntelligentCompositionParamMap);
    return this.request.request<ImageIntelligentCompositionResponseData>("POST", "/api/image/editing/intelligent-composition", { body: mapped, multipart: true });
  }

  async imagePhotoEditing(params: ImagePhotoEditingParams): Promise<ImagePhotoEditingResponse> {
    validateImagePhotoEditingParams(params);
    const mapped = mapParams(params, ImagePhotoEditingParamMap);
    return this.request.request<ImagePhotoEditingResponseData>("POST", "/api/image/editing/photo-retouching", { body: mapped, multipart: true });
  }

  async imageRemoveObjects(params: ImageRemoveObjectsParams): Promise<ImageRemoveObjectsResponse> {
    validateImageRemoveObjectsParams(params);
    const mapped = mapParams(params, ImageRemoveObjectsParamMap);
    return this.request.request<ImageRemoveObjectsResponseData>("POST", "/api/image/editing/remove-objects", { body: mapped, multipart: true });
  }

  async removeObjects(params: ImageRemoveObjectsParams): Promise<ImageRemoveObjectsResponse> {
    return this.imageRemoveObjects(params);
  }

  async imageRemoveObjectsAdvanced(params: ImageRemoveObjectsAdvancedParams): Promise<ImageRemoveObjectsAdvancedResponse> {
    validateImageRemoveObjectsAdvancedParams(params);
    const mapped = mapParams(params, ImageRemoveObjectsAdvancedParamMap);
    return this.request.request<ImageRemoveObjectsAdvancedResponseData>("POST", "/api/image/editing/remove-objects-advanced", { body: mapped, multipart: true });
  }

  async imageRemoveObjectsPro(params: ImageRemoveObjectsProParams): Promise<ImageRemoveObjectsProResponse> {
    validateImageRemoveObjectsProParams(params);
    const mapped = mapParams(params, ImageRemoveObjectsProParamMap);
    return this.request.request<ImageRemoveObjectsProResponseData>("POST", "/api/image/editing/remove-objects-pro", { body: mapped, multipart: true });
  }

  async imageAICartoonGenerator(params: ImageAICartoonGeneratorParams): Promise<ImageAICartoonGeneratorResponse> {
    validateImageAICartoonGeneratorParams(params);
    const mapped = mapParams(params, ImageAICartoonGeneratorParamMap);
    return this.request.request<ImageAICartoonGeneratorResponseData>("POST", "/api/image/effects/ai-anime-generator", { body: mapped, multipart: true });
  }

  async imageColoring(params: ImageColoringParams): Promise<ImageColoringResponse> {
    validateImageColoringParams(params);
    const mapped = mapParams(params, ImageColoringParamMap);
    return this.request.request<ImageColoringResponseData>("POST", "/api/image/effects/image-colorization", { body: mapped, multipart: true });
  }

  async imageStyleTransfer(params: ImageStyleTransferParams): Promise<ImageStyleTransferResponse> {
    validateImageStyleTransferParams(params);
    const mapped = mapParams(params, ImageStyleTransferParamMap);
    return this.request.request<ImageStyleTransferResponseData>("POST", "/api/image/effects/image-style-conversion", { body: mapped, multipart: true });
  }

  async imageStyleMigration(params: ImageStyleMigrationParams): Promise<ImageStyleMigrationResponse> {
    validateImageStyleMigrationParams(params);
    const mapped = mapParams(params, ImageStyleMigrationParamMap);
    return this.request.request<ImageStyleMigrationResponseData>("POST", "/api/image/effects/image-style-migration", { body: mapped, multipart: true });
  }

  async imageColorEnhancement(params: ImageColorEnhancementParams): Promise<ImageColorEnhancementResponse> {
    validateImageColorEnhancementParams(params);
    const mapped = mapParams(params, ImageColorEnhancementParamMap);
    return this.request.request<ImageColorEnhancementResponseData>("POST", "/api/image/enhance/image-color-enhancement", { body: mapped, multipart: true });
  }

  async imageContrastEnhancement(params: ImageContrastEnhancementParams): Promise<ImageContrastEnhancementResponse> {
    validateImageContrastEnhancementParams(params);
    const mapped = mapParams(params, ImageContrastEnhancementParamMap);
    return this.request.request<ImageContrastEnhancementResponseData>("POST", "/api/image/enhance/image-contrast-enhancement", { body: mapped, multipart: true });
  }

  async imageDehaze(params: ImageDehazeParams): Promise<ImageDehazeResponse> {
    validateImageDehazeParams(params);
    const mapped = mapParams(params, ImageDehazeParamMap);
    return this.request.request<ImageDehazeResponseData>("POST", "/api/image/enhance/image-defogging", { body: mapped, multipart: true });
  }

  async imageLosslessEnlargement(params: ImageLosslessEnlargementParams): Promise<ImageLosslessEnlargementResponse> {
    validateImageLosslessEnlargementParams(params);
    const mapped = mapParams(params, ImageLosslessEnlargementParamMap);
    return this.request.request<ImageLosslessEnlargementResponseData>("POST", "/api/image/enhance/image-lossless-enlargement", { body: mapped, multipart: true });
  }

  async upscale(params: ImageLosslessEnlargementParams): Promise<ImageLosslessEnlargementResponse> {
    return this.imageLosslessEnlargement(params);
  }

  async imageClarityEnhancement(params: ImageClarityEnhancementParams): Promise<ImageClarityEnhancementResponse> {
    validateImageClarityEnhancementParams(params);
    const mapped = mapParams(params, ImageClarityEnhancementParamMap);
    return this.request.request<ImageClarityEnhancementResponseData>("POST", "/api/image/enhance/image-sharpness-enhancement", { body: mapped, multipart: true });
  }

  async imageDistortionCorrection(params: ImageDistortionCorrectionParams): Promise<ImageDistortionCorrectionResponse> {
    validateImageDistortionCorrectionParams(params);
    const mapped = mapParams(params, ImageDistortionCorrectionParamMap);
    return this.request.request<ImageDistortionCorrectionResponseData>("POST", "/api/image/enhance/stretch-image-recovery", { body: mapped, multipart: true });
  }

  async imageCompositionAestheticsScore(params: ImageCompositionAestheticsScoreParams): Promise<ImageCompositionAestheticsScoreResponse> {
    validateImageCompositionAestheticsScoreParams(params);
    const mapped = mapParams(params, ImageCompositionAestheticsScoreParamMap);
    return this.request.request<ImageCompositionAestheticsScoreResponseData>("POST", "/api/image/rating/image-composition-aesthetics-scoring", { body: mapped, multipart: true });
  }

  async imageExposureRating(params: ImageExposureRatingParams): Promise<ImageExposureRatingResponse> {
    validateImageExposureRatingParams(params);
    const mapped = mapParams(params, ImageExposureRatingParamMap);
    return this.request.request<ImageExposureRatingResponseData>("POST", "/api/image/rating/image-exposure-score", { body: mapped, multipart: true });
  }

  async imageAINailArt(params: ImageAINailArtParams): Promise<ImageAINailArtResponse> {
    validateImageAINailArtParams(params);
    const mapped = mapParams(params, ImageAINailArtParamMap);
    return this.request.request<ImageAINailArtResponseData>("POST", "/api/image/editing/ai-nail-art", { body: mapped, multipart: true });
  }

  async imageAINailArtPro(params: ImageAINailArtProParams): Promise<ImageAINailArtProResponse> {
    validateImageAINailArtProParams(params);
    const mapped = mapParams(params, ImageAINailArtProParamMap);
    return this.request.request<ImageAINailArtProResponseData>("POST", "/api/image/editing/ai-nail-art-pro", { body: mapped, multipart: true });
  }

  async imageAIPhotography(params: ImageAIPhotographyParams): Promise<ImageAIPhotographyResponse> {
    validateImageAIPhotographyParams(params);
    const mapped = mapParams(params, ImageAIPhotographyParamMap);
    return this.request.request<ImageAIPhotographyResponseData>("POST", "/api/image/effects/ai-photography", { body: mapped, multipart: true });
  }

  async imageAIEmojiGenerator(params: ImageAIEmojiGeneratorParams): Promise<ImageAIEmojiGeneratorResponse> {
    validateImageAIEmojiGeneratorParams(params);
    const mapped = mapParams(params, ImageAIEmojiGeneratorParamMap);
    return this.request.request<ImageAIEmojiGeneratorResponseData>("POST", "/api/image/effects/photo-to-emoji-grid", { body: mapped, multipart: true });
  }

  async imagePhotoToColoringPage(params: ImagePhotoToColoringPageParams): Promise<ImagePhotoToColoringPageResponse> {
    validateImagePhotoToColoringPageParams(params);
    const mapped = mapParams(params, ImagePhotoToColoringPageParamMap);
    return this.request.request<ImagePhotoToColoringPageResponseData>("POST", "/api/image/effects/photo-to-line-art", { body: mapped, multipart: true });
  }

  async imageAIFlowerWallpaper(params: ImageAIFlowerWallpaperParams): Promise<ImageAIFlowerWallpaperResponse> {
    validateImageAIFlowerWallpaperParams(params);
    const mapped = mapParams(params, ImageAIFlowerWallpaperParamMap);
    return this.request.request<ImageAIFlowerWallpaperResponseData>("POST", "/api/image/generation/ai-flower-wallpaper", { body: mapped, multipart: true });
  }

}
