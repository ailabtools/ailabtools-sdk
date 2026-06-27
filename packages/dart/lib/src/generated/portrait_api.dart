// GENERATED FROM packages/spec.json. DO NOT EDIT BY HAND.

import '../requester.dart';
import 'endpoints.dart';

final class PortraitAPI {
  const PortraitAPI(this._requester);

  final Requester _requester;

  Future<PortraitFaceAnalyzerResponse> portraitFaceAnalyzer(
    PortraitFaceAnalyzerParams params,
  ) =>
      _requester.request<PortraitFaceAnalyzerResponseData>(
        method: "POST",
        path: "/api/portrait/analysis/face-analyzer",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitFaceAnalyzerResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitFaceAnalyzerAdvancedResponse> portraitFaceAnalyzerAdvanced(
    PortraitFaceAnalyzerAdvancedParams params,
  ) =>
      _requester.request<PortraitFaceAnalyzerAdvancedResponseData>(
        method: "POST",
        path: "/api/portrait/analysis/face-analyzer-advanced",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitFaceAnalyzerAdvancedResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitFacialLandmarksResponse> portraitFacialLandmarks(
    PortraitFacialLandmarksParams params,
  ) =>
      _requester.request<PortraitFacialLandmarksResponseData>(
        method: "POST",
        path: "/api/portrait/analysis/face-key-points",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitFacialLandmarksResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitSkinAnalysisBasicResponse> portraitSkinAnalysisBasic(
    PortraitSkinAnalysisBasicParams params,
  ) =>
      _requester.request<PortraitSkinAnalysisBasicResponseData>(
        method: "POST",
        path: "/api/portrait/analysis/skin-analysis",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitSkinAnalysisBasicResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitSkinAnalysisAdvancedResponse> portraitSkinAnalysisAdvanced(
    PortraitSkinAnalysisAdvancedParams params,
  ) =>
      _requester.request<PortraitSkinAnalysisAdvancedResponseData>(
        method: "POST",
        path: "/api/portrait/analysis/skin-analysis-advanced",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitSkinAnalysisAdvancedResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitSkinAnalysisProfessionalResponse>
      portraitSkinAnalysisProfessional(
    PortraitSkinAnalysisProfessionalParams params,
  ) =>
          _requester.request<PortraitSkinAnalysisProfessionalResponseData>(
            method: "POST",
            path: "/api/portrait/analysis/skin-analysis-pro",
            parseData: (value) => value is Map<String, dynamic>
                ? PortraitSkinAnalysisProfessionalResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<PortraitSkinDiseaseDetectionResponse> portraitSkinDiseaseDetection(
    PortraitSkinDiseaseDetectionParams params,
  ) =>
      _requester.request<PortraitSkinDiseaseDetectionResponseData>(
        method: "POST",
        path: "/api/portrait/analysis/skin-disease-detection",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitSkinDiseaseDetectionResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitTryOnClothesResponse> portraitTryOnClothes(
    PortraitTryOnClothesParams params,
  ) =>
      _requester.request<PortraitTryOnClothesResponseData>(
        method: "POST",
        path: "/api/portrait/editing/try-on-clothes",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitTryOnClothesResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitTryOnClothesProResponse> portraitTryOnClothesPro(
    PortraitTryOnClothesProParams params,
  ) =>
      _requester.request<PortraitTryOnClothesProResponseData>(
        method: "POST",
        path: "/api/portrait/editing/try-on-clothes-pro",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitTryOnClothesProResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitFacialBlurringResponse> portraitFacialBlurring(
    PortraitFacialBlurringParams params,
  ) =>
      _requester.request<PortraitFacialBlurringResponseData>(
        method: "POST",
        path: "/api/portrait/effects/blurred-faces",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitFacialBlurringResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitExpressionEditingResponse> portraitExpressionEditing(
    PortraitExpressionEditingParams params,
  ) =>
      _requester.request<PortraitExpressionEditingResponseData>(
        method: "POST",
        path: "/api/portrait/effects/emotion-editor",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitExpressionEditingResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitFaceRestorationEnhancementResponse>
      portraitFaceRestorationEnhancement(
    PortraitFaceRestorationEnhancementParams params,
  ) =>
          _requester.request<PortraitFaceRestorationEnhancementResponseData>(
            method: "POST",
            path: "/api/portrait/effects/enhance-face",
            parseData: (value) => value is Map<String, dynamic>
                ? PortraitFaceRestorationEnhancementResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<PortraitFaceAttributeEditingResponse> portraitFaceAttributeEditing(
    PortraitFaceAttributeEditingParams params,
  ) =>
      _requester.request<PortraitFaceAttributeEditingResponseData>(
        method: "POST",
        path: "/api/portrait/effects/face-attribute-editing",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitFaceAttributeEditingResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitFacialBeautificationResponse> portraitFacialBeautification(
    PortraitFacialBeautificationParams params,
  ) =>
      _requester.request<PortraitFacialBeautificationResponseData>(
        method: "POST",
        path: "/api/portrait/effects/face-beauty",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitFacialBeautificationResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitFacialBeautificationAdvancedResponse>
      portraitFacialBeautificationAdvanced(
    PortraitFacialBeautificationAdvancedParams params,
  ) =>
          _requester.request<PortraitFacialBeautificationAdvancedResponseData>(
            method: "POST",
            path: "/api/portrait/effects/face-beauty-advanced",
            parseData: (value) => value is Map<String, dynamic>
                ? PortraitFacialBeautificationAdvancedResponseData.fromJson(
                    value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<PortraitFacialBeautificationProResponse>
      portraitFacialBeautificationPro(
    PortraitFacialBeautificationProParams params,
  ) =>
          _requester.request<PortraitFacialBeautificationProResponseData>(
            method: "POST",
            path: "/api/portrait/effects/face-beauty-pro",
            parseData: (value) => value is Map<String, dynamic>
                ? PortraitFacialBeautificationProResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<PortraitFacialFiltersResponse> portraitFacialFilters(
    PortraitFacialFiltersParams params,
  ) =>
      _requester.request<PortraitFacialFiltersResponseData>(
        method: "POST",
        path: "/api/portrait/effects/face-filter",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitFacialFiltersResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitFaceFusionResponse> portraitFaceFusion(
    PortraitFaceFusionParams params,
  ) =>
      _requester.request<PortraitFaceFusionResponseData>(
        method: "POST",
        path: "/api/portrait/effects/face-fusion",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitFaceFusionResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitHairstyleEditingResponse> portraitHairstyleEditing(
    PortraitHairstyleEditingParams params,
  ) =>
      _requester.request<PortraitHairstyleEditingResponseData>(
        method: "POST",
        path: "/api/portrait/effects/hairstyle-editor",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitHairstyleEditingResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitHairstyleEditingProResponse> portraitHairstyleEditingPro(
    PortraitHairstyleEditingProParams params,
  ) =>
      _requester.request<PortraitHairstyleEditingProResponseData>(
        method: "POST",
        path: "/api/portrait/effects/hairstyle-editor-pro",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitHairstyleEditingProResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitLipsColorChangerResponse> portraitLipsColorChanger(
    PortraitLipsColorChangerParams params,
  ) =>
      _requester.request<PortraitLipsColorChangerResponseData>(
        method: "POST",
        path: "/api/portrait/effects/lips-color-changer",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitLipsColorChangerResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitLivePhotosResponse> portraitLivePhotos(
    PortraitLivePhotosParams params,
  ) =>
      _requester.request<PortraitLivePhotosResponseData>(
        method: "POST",
        path: "/api/portrait/effects/live-photo",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitLivePhotosResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitCartoonYourselfResponse> portraitCartoonYourself(
    PortraitCartoonYourselfParams params,
  ) =>
      _requester.request<PortraitCartoonYourselfResponseData>(
        method: "POST",
        path: "/api/portrait/effects/portrait-animation",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitCartoonYourselfResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitIntelligentBeautificationResponse>
      portraitIntelligentBeautification(
    PortraitIntelligentBeautificationParams params,
  ) =>
          _requester.request<PortraitIntelligentBeautificationResponseData>(
            method: "POST",
            path: "/api/portrait/effects/smart-beauty",
            parseData: (value) => value is Map<String, dynamic>
                ? PortraitIntelligentBeautificationResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<PortraitIntelligentFaceSlimmingResponse>
      portraitIntelligentFaceSlimming(
    PortraitIntelligentFaceSlimmingParams params,
  ) =>
          _requester.request<PortraitIntelligentFaceSlimmingResponseData>(
            method: "POST",
            path: "/api/portrait/effects/smart-face-slimming",
            parseData: (value) => value is Map<String, dynamic>
                ? PortraitIntelligentFaceSlimmingResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<PortraitIntelligentSkinRetouchingResponse>
      portraitIntelligentSkinRetouching(
    PortraitIntelligentSkinRetouchingParams params,
  ) =>
          _requester.request<PortraitIntelligentSkinRetouchingResponseData>(
            method: "POST",
            path: "/api/portrait/effects/smart-skin",
            parseData: (value) => value is Map<String, dynamic>
                ? PortraitIntelligentSkinRetouchingResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<PortraitTryOnClothesRefinerResponse> portraitTryOnClothesRefiner(
    PortraitTryOnClothesRefinerParams params,
  ) =>
      _requester.request<PortraitTryOnClothesRefinerResponseData>(
        method: "POST",
        path: "/api/portrait/enhance/try-on-clothes-refiner",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitTryOnClothesRefinerResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitHairstyleEditingProResponse> changeHairstyle(
    PortraitHairstyleEditingProParams params,
  ) =>
      portraitHairstyleEditingPro(params);

  Future<PortraitIntelligentBeautificationResponse> retouch(
    PortraitIntelligentBeautificationParams params,
  ) =>
      portraitIntelligentBeautification(params);
}
