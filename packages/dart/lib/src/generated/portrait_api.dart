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

  // BEGIN GENERATED OPENAPI ADDITIONS
  Future<PortraitAIFaceRatingResponse> portraitAIFaceRating(
          PortraitAIFaceRatingParams params) =>
      _requester.request<PortraitAIFaceRatingResponseData>(
        method: "POST",
        path: "/api/portrait/analysis/ai-face-rating",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIFaceRatingResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIBaldResponse> portraitAIBald(PortraitAIBaldParams params) =>
      _requester.request<PortraitAIBaldResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-bald",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIBaldResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIBeardRemovalResponse> portraitAIBeardRemoval(
          PortraitAIBeardRemovalParams params) =>
      _requester.request<PortraitAIBeardRemovalResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-beard-removal",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIBeardRemovalResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIBeardStylingResponse> portraitAIBeardStyling(
          PortraitAIBeardStylingParams params) =>
      _requester.request<PortraitAIBeardStylingResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-beard-styling",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIBeardStylingResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIBreastExpansionResponse> portraitAIBreastExpansion(
          PortraitAIBreastExpansionParams params) =>
      _requester.request<PortraitAIBreastExpansionResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-big-tits",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIBreastExpansionResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIButtEnhancementResponse> portraitAIButtEnhancement(
          PortraitAIButtEnhancementParams params) =>
      _requester.request<PortraitAIButtEnhancementResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-butt-enhancement",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIButtEnhancementResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIColoredContactsResponse> portraitAIColoredContacts(
          PortraitAIColoredContactsParams params) =>
      _requester.request<PortraitAIColoredContactsResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-colored-contacts",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIColoredContactsResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIEyebrowsResponse> portraitAIEyebrows(
          PortraitAIEyebrowsParams params) =>
      _requester.request<PortraitAIEyebrowsResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-eyebrows",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIEyebrowsResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIEyelashesResponse> portraitAIEyelashes(
          PortraitAIEyelashesParams params) =>
      _requester.request<PortraitAIEyelashesResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-eyelashes",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIEyelashesResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIEyeshadowTryOnResponse> portraitAIEyeshadowTryOn(
          PortraitAIEyeshadowTryOnParams params) =>
      _requester.request<PortraitAIEyeshadowTryOnResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-eyeshadow",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIEyeshadowTryOnResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIFaceSwapResponse> portraitAIFaceSwap(
          PortraitAIFaceSwapParams params) =>
      _requester.request<PortraitAIFaceSwapResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-face-swap",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIFaceSwapResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIFatFilterResponse> portraitAIFatFilter(
          PortraitAIFatFilterParams params) =>
      _requester.request<PortraitAIFatFilterResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-fat-filter",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIFatFilterResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIHairColorResponse> portraitAIHairColor(
          PortraitAIHairColorParams params) =>
      _requester.request<PortraitAIHairColorResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-hair-color",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIHairColorResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIHairLossSimulationResponse> portraitAIHairLossSimulation(
          PortraitAIHairLossSimulationParams params) =>
      _requester.request<PortraitAIHairLossSimulationResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-hair-loss-simulation",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIHairLossSimulationResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAILipEnhancementResponse> portraitAILipEnhancement(
          PortraitAILipEnhancementParams params) =>
      _requester.request<PortraitAILipEnhancementResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-lip-enhancement",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAILipEnhancementResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIWaistSlimmingResponse> portraitAIWaistSlimming(
          PortraitAIWaistSlimmingParams params) =>
      _requester.request<PortraitAIWaistSlimmingResponseData>(
        method: "POST",
        path: "/api/portrait/editing/ai-waist-slimming",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIWaistSlimmingResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitTryOnClothesPremiumResponse> portraitTryOnClothesPremium(
          PortraitTryOnClothesPremiumParams params) =>
      _requester.request<PortraitTryOnClothesPremiumResponseData>(
        method: "POST",
        path: "/api/portrait/editing/try-on-clothes-premium",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitTryOnClothesPremiumResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIBigHeadEffectResponse> portraitAIBigHeadEffect(
          PortraitAIBigHeadEffectParams params) =>
      _requester.request<PortraitAIBigHeadEffectResponseData>(
        method: "POST",
        path: "/api/portrait/effects/ai-big-head-effect",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIBigHeadEffectResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIHalloweenMaskResponse> portraitAIHalloweenMask(
          PortraitAIHalloweenMaskParams params) =>
      _requester.request<PortraitAIHalloweenMaskResponseData>(
        method: "POST",
        path: "/api/portrait/effects/ai-halloween-mask",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIHalloweenMaskResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAILipBiteExpressionsResponse> portraitAILipBiteExpressions(
          PortraitAILipBiteExpressionsParams params) =>
      _requester.request<PortraitAILipBiteExpressionsResponseData>(
        method: "POST",
        path: "/api/portrait/effects/ai-lip-bite-expressions",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAILipBiteExpressionsResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAIRedLipGlossResponse> portraitAIRedLipGloss(
          PortraitAIRedLipGlossParams params) =>
      _requester.request<PortraitAIRedLipGlossResponseData>(
        method: "POST",
        path: "/api/portrait/effects/ai-red-lip-gloss",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAIRedLipGlossResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitAISquareFaceFilterResponse> portraitAISquareFaceFilter(
          PortraitAISquareFaceFilterParams params) =>
      _requester.request<PortraitAISquareFaceFilterResponseData>(
        method: "POST",
        path: "/api/portrait/effects/ai-square-face-filter",
        parseData: (value) => value is Map<String, dynamic>
            ? PortraitAISquareFaceFilterResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<PortraitExpressionEditingAdvancedResponse>
      portraitExpressionEditingAdvanced(
              PortraitExpressionEditingAdvancedParams params) =>
          _requester.request<PortraitExpressionEditingAdvancedResponseData>(
            method: "POST",
            path: "/api/portrait/effects/emotion-editor-advanced",
            parseData: (value) => value is Map<String, dynamic>
                ? PortraitExpressionEditingAdvancedResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<PortraitHairstyleEditingPremiumResponse>
      portraitHairstyleEditingPremium(
              PortraitHairstyleEditingPremiumParams params) =>
          _requester.request<PortraitHairstyleEditingPremiumResponseData>(
            method: "POST",
            path: "/api/portrait/effects/hairstyle-editor-premium",
            parseData: (value) => value is Map<String, dynamic>
                ? PortraitHairstyleEditingPremiumResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<PortraitAISkinEnhancementAdvancedResponse>
      portraitAISkinEnhancementAdvanced(
              PortraitAISkinEnhancementAdvancedParams params) =>
          _requester.request<PortraitAISkinEnhancementAdvancedResponseData>(
            method: "POST",
            path: "/api/portrait/effects/smart-skin-advanced",
            parseData: (value) => value is Map<String, dynamic>
                ? PortraitAISkinEnhancementAdvancedResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );
}
