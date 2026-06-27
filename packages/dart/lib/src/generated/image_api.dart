// GENERATED FROM packages/spec.json. DO NOT EDIT BY HAND.

import '../requester.dart';
import 'endpoints.dart';

final class ImageAPI {
  const ImageAPI(this._requester);

  final Requester _requester;

  Future<ImageQueryingAsyncTaskResultsResponse> imageQueryingAsyncTaskResults(
    ImageQueryingAsyncTaskResultsParams params,
  ) =>
      _requester.request<ImageQueryingAsyncTaskResultsResponseData>(
        method: "GET",
        path: "/api/image/asyn-task-results",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageQueryingAsyncTaskResultsResponseData.fromJson(value)
            : null,
        query: params.toMap(),
      );

  Future<ImageAiImageExtenderResponse> imageAiImageExtender(
    ImageAiImageExtenderParams params,
  ) =>
      _requester.request<ImageAiImageExtenderResponseData>(
        method: "POST",
        path: "/api/image/editing/ai-image-extender",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageAiImageExtenderResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageAiObjectReplacerResponse> imageAiObjectReplacer(
    ImageAiObjectReplacerParams params,
  ) =>
      _requester.request<ImageAiObjectReplacerResponseData>(
        method: "POST",
        path: "/api/image/editing/ai-object-replacer",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageAiObjectReplacerResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageAIImageCroppingResponse> imageAIImageCropping(
    ImageAIImageCroppingParams params,
  ) =>
      _requester.request<ImageAIImageCroppingResponseData>(
        method: "POST",
        path: "/api/image/editing/image-cropping",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageAIImageCroppingResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageErasureResponse> imageErasure(
    ImageErasureParams params,
  ) =>
      _requester.request<ImageErasureResponseData>(
        method: "POST",
        path: "/api/image/editing/image-erase",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageErasureResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageInvisibleImageWatermarkResponse> imageInvisibleImageWatermark(
    ImageInvisibleImageWatermarkParams params,
  ) =>
      _requester.request<ImageInvisibleImageWatermarkResponseData>(
        method: "POST",
        path: "/api/image/editing/image-invisible-image-watermark",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageInvisibleImageWatermarkResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageInvisibleTextWatermarkResponse> imageInvisibleTextWatermark(
    ImageInvisibleTextWatermarkParams params,
  ) =>
      _requester.request<ImageInvisibleTextWatermarkResponseData>(
        method: "POST",
        path: "/api/image/editing/image-invisible-text-watermarking",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageInvisibleTextWatermarkResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageIntelligentCompositionResponse> imageIntelligentComposition(
    ImageIntelligentCompositionParams params,
  ) =>
      _requester.request<ImageIntelligentCompositionResponseData>(
        method: "POST",
        path: "/api/image/editing/intelligent-composition",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageIntelligentCompositionResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImagePhotoEditingResponse> imagePhotoEditing(
    ImagePhotoEditingParams params,
  ) =>
      _requester.request<ImagePhotoEditingResponseData>(
        method: "POST",
        path: "/api/image/editing/photo-retouching",
        parseData: (value) => value is Map<String, dynamic>
            ? ImagePhotoEditingResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageRemoveObjectsResponse> imageRemoveObjects(
    ImageRemoveObjectsParams params,
  ) =>
      _requester.request<ImageRemoveObjectsResponseData>(
        method: "POST",
        path: "/api/image/editing/remove-objects",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageRemoveObjectsResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageRemoveObjectsAdvancedResponse> imageRemoveObjectsAdvanced(
    ImageRemoveObjectsAdvancedParams params,
  ) =>
      _requester.request<ImageRemoveObjectsAdvancedResponseData>(
        method: "POST",
        path: "/api/image/editing/remove-objects-advanced",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageRemoveObjectsAdvancedResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageRemoveObjectsProResponse> imageRemoveObjectsPro(
    ImageRemoveObjectsProParams params,
  ) =>
      _requester.request<ImageRemoveObjectsProResponseData>(
        method: "POST",
        path: "/api/image/editing/remove-objects-pro",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageRemoveObjectsProResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageAICartoonGeneratorResponse> imageAICartoonGenerator(
    ImageAICartoonGeneratorParams params,
  ) =>
      _requester.request<ImageAICartoonGeneratorResponseData>(
        method: "POST",
        path: "/api/image/effects/ai-anime-generator",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageAICartoonGeneratorResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageColoringResponse> imageColoring(
    ImageColoringParams params,
  ) =>
      _requester.request<ImageColoringResponseData>(
        method: "POST",
        path: "/api/image/effects/image-colorization",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageColoringResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageStyleTransferResponse> imageStyleTransfer(
    ImageStyleTransferParams params,
  ) =>
      _requester.request<ImageStyleTransferResponseData>(
        method: "POST",
        path: "/api/image/effects/image-style-conversion",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageStyleTransferResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageStyleMigrationResponse> imageStyleMigration(
    ImageStyleMigrationParams params,
  ) =>
      _requester.request<ImageStyleMigrationResponseData>(
        method: "POST",
        path: "/api/image/effects/image-style-migration",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageStyleMigrationResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageColorEnhancementResponse> imageColorEnhancement(
    ImageColorEnhancementParams params,
  ) =>
      _requester.request<ImageColorEnhancementResponseData>(
        method: "POST",
        path: "/api/image/enhance/image-color-enhancement",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageColorEnhancementResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageContrastEnhancementResponse> imageContrastEnhancement(
    ImageContrastEnhancementParams params,
  ) =>
      _requester.request<ImageContrastEnhancementResponseData>(
        method: "POST",
        path: "/api/image/enhance/image-contrast-enhancement",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageContrastEnhancementResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageDehazeResponse> imageDehaze(
    ImageDehazeParams params,
  ) =>
      _requester.request<ImageDehazeResponseData>(
        method: "POST",
        path: "/api/image/enhance/image-defogging",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageDehazeResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageLosslessEnlargementResponse> imageLosslessEnlargement(
    ImageLosslessEnlargementParams params,
  ) =>
      _requester.request<ImageLosslessEnlargementResponseData>(
        method: "POST",
        path: "/api/image/enhance/image-lossless-enlargement",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageLosslessEnlargementResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageClarityEnhancementResponse> imageClarityEnhancement(
    ImageClarityEnhancementParams params,
  ) =>
      _requester.request<ImageClarityEnhancementResponseData>(
        method: "POST",
        path: "/api/image/enhance/image-sharpness-enhancement",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageClarityEnhancementResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageDistortionCorrectionResponse> imageDistortionCorrection(
    ImageDistortionCorrectionParams params,
  ) =>
      _requester.request<ImageDistortionCorrectionResponseData>(
        method: "POST",
        path: "/api/image/enhance/stretch-image-recovery",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageDistortionCorrectionResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageCompositionAestheticsScoreResponse>
      imageCompositionAestheticsScore(
    ImageCompositionAestheticsScoreParams params,
  ) =>
          _requester.request<ImageCompositionAestheticsScoreResponseData>(
            method: "POST",
            path: "/api/image/rating/image-composition-aesthetics-scoring",
            parseData: (value) => value is Map<String, dynamic>
                ? ImageCompositionAestheticsScoreResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<ImageExposureRatingResponse> imageExposureRating(
    ImageExposureRatingParams params,
  ) =>
      _requester.request<ImageExposureRatingResponseData>(
        method: "POST",
        path: "/api/image/rating/image-exposure-score",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageExposureRatingResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageLosslessEnlargementResponse> upscale(
    ImageLosslessEnlargementParams params,
  ) =>
      imageLosslessEnlargement(params);

  Future<ImageRemoveObjectsResponse> removeObjects(
    ImageRemoveObjectsParams params,
  ) =>
      imageRemoveObjects(params);

  // BEGIN GENERATED OPENAPI ADDITIONS
  Future<ImageAINailArtResponse> imageAINailArt(ImageAINailArtParams params) =>
      _requester.request<ImageAINailArtResponseData>(
        method: "POST",
        path: "/api/image/editing/ai-nail-art",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageAINailArtResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageAINailArtProResponse> imageAINailArtPro(
          ImageAINailArtProParams params) =>
      _requester.request<ImageAINailArtProResponseData>(
        method: "POST",
        path: "/api/image/editing/ai-nail-art-pro",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageAINailArtProResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageAIPhotographyResponse> imageAIPhotography(
          ImageAIPhotographyParams params) =>
      _requester.request<ImageAIPhotographyResponseData>(
        method: "POST",
        path: "/api/image/effects/ai-photography",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageAIPhotographyResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageAIEmojiGeneratorResponse> imageAIEmojiGenerator(
          ImageAIEmojiGeneratorParams params) =>
      _requester.request<ImageAIEmojiGeneratorResponseData>(
        method: "POST",
        path: "/api/image/effects/photo-to-emoji-grid",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageAIEmojiGeneratorResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImagePhotoToColoringPageResponse> imagePhotoToColoringPage(
          ImagePhotoToColoringPageParams params) =>
      _requester.request<ImagePhotoToColoringPageResponseData>(
        method: "POST",
        path: "/api/image/effects/photo-to-line-art",
        parseData: (value) => value is Map<String, dynamic>
            ? ImagePhotoToColoringPageResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<ImageAIFlowerWallpaperResponse> imageAIFlowerWallpaper(
          ImageAIFlowerWallpaperParams params) =>
      _requester.request<ImageAIFlowerWallpaperResponseData>(
        method: "POST",
        path: "/api/image/generation/ai-flower-wallpaper",
        parseData: (value) => value is Map<String, dynamic>
            ? ImageAIFlowerWallpaperResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );
}
