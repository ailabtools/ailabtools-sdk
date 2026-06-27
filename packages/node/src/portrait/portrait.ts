import { Requester } from "../http";
import { mapParams } from "../utils";
import {
  PortraitFaceAnalyzerParams,
  PortraitFaceAnalyzerResponse,
  PortraitFaceAnalyzerResponseData,
  validatePortraitFaceAnalyzerParams,
  PortraitFaceAnalyzerParamMap,
  PortraitFaceAnalyzerAdvancedParams,
  PortraitFaceAnalyzerAdvancedResponse,
  PortraitFaceAnalyzerAdvancedResponseData,
  validatePortraitFaceAnalyzerAdvancedParams,
  PortraitFaceAnalyzerAdvancedParamMap,
  PortraitFacialLandmarksParams,
  PortraitFacialLandmarksResponse,
  PortraitFacialLandmarksResponseData,
  validatePortraitFacialLandmarksParams,
  PortraitFacialLandmarksParamMap,
  PortraitSkinAnalysisBasicParams,
  PortraitSkinAnalysisBasicResponse,
  PortraitSkinAnalysisBasicResponseData,
  validatePortraitSkinAnalysisBasicParams,
  PortraitSkinAnalysisBasicParamMap,
  PortraitSkinAnalysisAdvancedParams,
  PortraitSkinAnalysisAdvancedResponse,
  PortraitSkinAnalysisAdvancedResponseData,
  validatePortraitSkinAnalysisAdvancedParams,
  PortraitSkinAnalysisAdvancedParamMap,
  PortraitSkinAnalysisProfessionalParams,
  PortraitSkinAnalysisProfessionalResponse,
  PortraitSkinAnalysisProfessionalResponseData,
  validatePortraitSkinAnalysisProfessionalParams,
  PortraitSkinAnalysisProfessionalParamMap,
  PortraitSkinDiseaseDetectionParams,
  PortraitSkinDiseaseDetectionResponse,
  PortraitSkinDiseaseDetectionResponseData,
  validatePortraitSkinDiseaseDetectionParams,
  PortraitSkinDiseaseDetectionParamMap,
  PortraitTryOnClothesParams,
  PortraitTryOnClothesResponse,
  PortraitTryOnClothesResponseData,
  validatePortraitTryOnClothesParams,
  PortraitTryOnClothesParamMap,
  PortraitTryOnClothesProParams,
  PortraitTryOnClothesProResponse,
  PortraitTryOnClothesProResponseData,
  validatePortraitTryOnClothesProParams,
  PortraitTryOnClothesProParamMap,
  PortraitFacialBlurringParams,
  PortraitFacialBlurringResponse,
  PortraitFacialBlurringResponseData,
  validatePortraitFacialBlurringParams,
  PortraitFacialBlurringParamMap,
  PortraitExpressionEditingParams,
  PortraitExpressionEditingResponse,
  PortraitExpressionEditingResponseData,
  validatePortraitExpressionEditingParams,
  PortraitExpressionEditingParamMap,
  PortraitFaceRestorationEnhancementParams,
  PortraitFaceRestorationEnhancementResponse,
  PortraitFaceRestorationEnhancementResponseData,
  validatePortraitFaceRestorationEnhancementParams,
  PortraitFaceRestorationEnhancementParamMap,
  PortraitFaceAttributeEditingParams,
  PortraitFaceAttributeEditingResponse,
  PortraitFaceAttributeEditingResponseData,
  validatePortraitFaceAttributeEditingParams,
  PortraitFaceAttributeEditingParamMap,
  PortraitFacialBeautificationParams,
  PortraitFacialBeautificationResponse,
  PortraitFacialBeautificationResponseData,
  validatePortraitFacialBeautificationParams,
  PortraitFacialBeautificationParamMap,
  PortraitFacialBeautificationAdvancedParams,
  PortraitFacialBeautificationAdvancedResponse,
  PortraitFacialBeautificationAdvancedResponseData,
  validatePortraitFacialBeautificationAdvancedParams,
  PortraitFacialBeautificationAdvancedParamMap,
  PortraitFacialBeautificationProParams,
  PortraitFacialBeautificationProResponse,
  PortraitFacialBeautificationProResponseData,
  validatePortraitFacialBeautificationProParams,
  PortraitFacialBeautificationProParamMap,
  PortraitFacialFiltersParams,
  PortraitFacialFiltersResponse,
  PortraitFacialFiltersResponseData,
  validatePortraitFacialFiltersParams,
  PortraitFacialFiltersParamMap,
  PortraitFaceFusionParams,
  PortraitFaceFusionResponse,
  PortraitFaceFusionResponseData,
  validatePortraitFaceFusionParams,
  PortraitFaceFusionParamMap,
  PortraitHairstyleEditingParams,
  PortraitHairstyleEditingResponse,
  PortraitHairstyleEditingResponseData,
  validatePortraitHairstyleEditingParams,
  PortraitHairstyleEditingParamMap,
  PortraitHairstyleEditingProParams,
  PortraitHairstyleEditingProResponse,
  PortraitHairstyleEditingProResponseData,
  validatePortraitHairstyleEditingProParams,
  PortraitHairstyleEditingProParamMap,
  PortraitLipsColorChangerParams,
  PortraitLipsColorChangerResponse,
  PortraitLipsColorChangerResponseData,
  validatePortraitLipsColorChangerParams,
  PortraitLipsColorChangerParamMap,
  PortraitLivePhotosParams,
  PortraitLivePhotosResponse,
  PortraitLivePhotosResponseData,
  validatePortraitLivePhotosParams,
  PortraitLivePhotosParamMap,
  PortraitCartoonYourselfParams,
  PortraitCartoonYourselfResponse,
  PortraitCartoonYourselfResponseData,
  validatePortraitCartoonYourselfParams,
  PortraitCartoonYourselfParamMap,
  PortraitIntelligentBeautificationParams,
  PortraitIntelligentBeautificationResponse,
  PortraitIntelligentBeautificationResponseData,
  validatePortraitIntelligentBeautificationParams,
  PortraitIntelligentBeautificationParamMap,
  PortraitIntelligentFaceSlimmingParams,
  PortraitIntelligentFaceSlimmingResponse,
  PortraitIntelligentFaceSlimmingResponseData,
  validatePortraitIntelligentFaceSlimmingParams,
  PortraitIntelligentFaceSlimmingParamMap,
  PortraitIntelligentSkinRetouchingParams,
  PortraitIntelligentSkinRetouchingResponse,
  PortraitIntelligentSkinRetouchingResponseData,
  validatePortraitIntelligentSkinRetouchingParams,
  PortraitIntelligentSkinRetouchingParamMap,
  PortraitTryOnClothesRefinerParams,
  PortraitTryOnClothesRefinerResponse,
  PortraitTryOnClothesRefinerResponseData,
  validatePortraitTryOnClothesRefinerParams,
  PortraitTryOnClothesRefinerParamMap,
  PortraitAIFaceRatingParams,
  PortraitAIFaceRatingResponse,
  PortraitAIFaceRatingResponseData,
  validatePortraitAIFaceRatingParams,
  PortraitAIFaceRatingParamMap,
  PortraitAIBaldParams,
  PortraitAIBaldResponse,
  PortraitAIBaldResponseData,
  validatePortraitAIBaldParams,
  PortraitAIBaldParamMap,
  PortraitAIBeardRemovalParams,
  PortraitAIBeardRemovalResponse,
  PortraitAIBeardRemovalResponseData,
  validatePortraitAIBeardRemovalParams,
  PortraitAIBeardRemovalParamMap,
  PortraitAIBeardStylingParams,
  PortraitAIBeardStylingResponse,
  PortraitAIBeardStylingResponseData,
  validatePortraitAIBeardStylingParams,
  PortraitAIBeardStylingParamMap,
  PortraitAIBreastExpansionParams,
  PortraitAIBreastExpansionResponse,
  PortraitAIBreastExpansionResponseData,
  validatePortraitAIBreastExpansionParams,
  PortraitAIBreastExpansionParamMap,
  PortraitAIButtEnhancementParams,
  PortraitAIButtEnhancementResponse,
  PortraitAIButtEnhancementResponseData,
  validatePortraitAIButtEnhancementParams,
  PortraitAIButtEnhancementParamMap,
  PortraitAIColoredContactsParams,
  PortraitAIColoredContactsResponse,
  PortraitAIColoredContactsResponseData,
  validatePortraitAIColoredContactsParams,
  PortraitAIColoredContactsParamMap,
  PortraitAIEyebrowsParams,
  PortraitAIEyebrowsResponse,
  PortraitAIEyebrowsResponseData,
  validatePortraitAIEyebrowsParams,
  PortraitAIEyebrowsParamMap,
  PortraitAIEyelashesParams,
  PortraitAIEyelashesResponse,
  PortraitAIEyelashesResponseData,
  validatePortraitAIEyelashesParams,
  PortraitAIEyelashesParamMap,
  PortraitAIEyeshadowTryOnParams,
  PortraitAIEyeshadowTryOnResponse,
  PortraitAIEyeshadowTryOnResponseData,
  validatePortraitAIEyeshadowTryOnParams,
  PortraitAIEyeshadowTryOnParamMap,
  PortraitAIFaceSwapParams,
  PortraitAIFaceSwapResponse,
  PortraitAIFaceSwapResponseData,
  validatePortraitAIFaceSwapParams,
  PortraitAIFaceSwapParamMap,
  PortraitAIFatFilterParams,
  PortraitAIFatFilterResponse,
  PortraitAIFatFilterResponseData,
  validatePortraitAIFatFilterParams,
  PortraitAIFatFilterParamMap,
  PortraitAIHairColorParams,
  PortraitAIHairColorResponse,
  PortraitAIHairColorResponseData,
  validatePortraitAIHairColorParams,
  PortraitAIHairColorParamMap,
  PortraitAIHairLossSimulationParams,
  PortraitAIHairLossSimulationResponse,
  PortraitAIHairLossSimulationResponseData,
  validatePortraitAIHairLossSimulationParams,
  PortraitAIHairLossSimulationParamMap,
  PortraitAILipEnhancementParams,
  PortraitAILipEnhancementResponse,
  PortraitAILipEnhancementResponseData,
  validatePortraitAILipEnhancementParams,
  PortraitAILipEnhancementParamMap,
  PortraitAIWaistSlimmingParams,
  PortraitAIWaistSlimmingResponse,
  PortraitAIWaistSlimmingResponseData,
  validatePortraitAIWaistSlimmingParams,
  PortraitAIWaistSlimmingParamMap,
  PortraitTryOnClothesPremiumParams,
  PortraitTryOnClothesPremiumResponse,
  PortraitTryOnClothesPremiumResponseData,
  validatePortraitTryOnClothesPremiumParams,
  PortraitTryOnClothesPremiumParamMap,
  PortraitAIBigHeadEffectParams,
  PortraitAIBigHeadEffectResponse,
  PortraitAIBigHeadEffectResponseData,
  validatePortraitAIBigHeadEffectParams,
  PortraitAIBigHeadEffectParamMap,
  PortraitAIHalloweenMaskParams,
  PortraitAIHalloweenMaskResponse,
  PortraitAIHalloweenMaskResponseData,
  validatePortraitAIHalloweenMaskParams,
  PortraitAIHalloweenMaskParamMap,
  PortraitAILipBiteExpressionsParams,
  PortraitAILipBiteExpressionsResponse,
  PortraitAILipBiteExpressionsResponseData,
  validatePortraitAILipBiteExpressionsParams,
  PortraitAILipBiteExpressionsParamMap,
  PortraitAIRedLipGlossParams,
  PortraitAIRedLipGlossResponse,
  PortraitAIRedLipGlossResponseData,
  validatePortraitAIRedLipGlossParams,
  PortraitAIRedLipGlossParamMap,
  PortraitAISquareFaceFilterParams,
  PortraitAISquareFaceFilterResponse,
  PortraitAISquareFaceFilterResponseData,
  validatePortraitAISquareFaceFilterParams,
  PortraitAISquareFaceFilterParamMap,
  PortraitExpressionEditingAdvancedParams,
  PortraitExpressionEditingAdvancedResponse,
  PortraitExpressionEditingAdvancedResponseData,
  validatePortraitExpressionEditingAdvancedParams,
  PortraitExpressionEditingAdvancedParamMap,
  PortraitHairstyleEditingPremiumParams,
  PortraitHairstyleEditingPremiumResponse,
  PortraitHairstyleEditingPremiumResponseData,
  validatePortraitHairstyleEditingPremiumParams,
  PortraitHairstyleEditingPremiumParamMap,
  PortraitAISkinEnhancementAdvancedParams,
  PortraitAISkinEnhancementAdvancedResponse,
  PortraitAISkinEnhancementAdvancedResponseData,
  validatePortraitAISkinEnhancementAdvancedParams,
  PortraitAISkinEnhancementAdvancedParamMap
} from "../generated/endpoints";

export class PortraitAPI {
  constructor(private request: Requester) {}

  async portraitFaceAnalyzer(params: PortraitFaceAnalyzerParams): Promise<PortraitFaceAnalyzerResponse> {
    validatePortraitFaceAnalyzerParams(params);
    const mapped = mapParams(params, PortraitFaceAnalyzerParamMap);
    return this.request.request<PortraitFaceAnalyzerResponseData>("POST", "/api/portrait/analysis/face-analyzer", { body: mapped, multipart: true });
  }

  async portraitFaceAnalyzerAdvanced(params: PortraitFaceAnalyzerAdvancedParams): Promise<PortraitFaceAnalyzerAdvancedResponse> {
    validatePortraitFaceAnalyzerAdvancedParams(params);
    const mapped = mapParams(params, PortraitFaceAnalyzerAdvancedParamMap);
    return this.request.request<PortraitFaceAnalyzerAdvancedResponseData>("POST", "/api/portrait/analysis/face-analyzer-advanced", { body: mapped, multipart: true });
  }

  async portraitFacialLandmarks(params: PortraitFacialLandmarksParams): Promise<PortraitFacialLandmarksResponse> {
    validatePortraitFacialLandmarksParams(params);
    const mapped = mapParams(params, PortraitFacialLandmarksParamMap);
    return this.request.request<PortraitFacialLandmarksResponseData>("POST", "/api/portrait/analysis/face-key-points", { body: mapped, multipart: true });
  }

  async portraitSkinAnalysisBasic(params: PortraitSkinAnalysisBasicParams): Promise<PortraitSkinAnalysisBasicResponse> {
    validatePortraitSkinAnalysisBasicParams(params);
    const mapped = mapParams(params, PortraitSkinAnalysisBasicParamMap);
    return this.request.request<PortraitSkinAnalysisBasicResponseData>("POST", "/api/portrait/analysis/skin-analysis", { body: mapped, multipart: true });
  }

  async portraitSkinAnalysisAdvanced(params: PortraitSkinAnalysisAdvancedParams): Promise<PortraitSkinAnalysisAdvancedResponse> {
    validatePortraitSkinAnalysisAdvancedParams(params);
    const mapped = mapParams(params, PortraitSkinAnalysisAdvancedParamMap);
    return this.request.request<PortraitSkinAnalysisAdvancedResponseData>("POST", "/api/portrait/analysis/skin-analysis-advanced", { body: mapped, multipart: true });
  }

  async portraitSkinAnalysisProfessional(params: PortraitSkinAnalysisProfessionalParams): Promise<PortraitSkinAnalysisProfessionalResponse> {
    validatePortraitSkinAnalysisProfessionalParams(params);
    const mapped = mapParams(params, PortraitSkinAnalysisProfessionalParamMap);
    return this.request.request<PortraitSkinAnalysisProfessionalResponseData>("POST", "/api/portrait/analysis/skin-analysis-pro", { body: mapped, multipart: true });
  }

  async portraitSkinDiseaseDetection(params: PortraitSkinDiseaseDetectionParams): Promise<PortraitSkinDiseaseDetectionResponse> {
    validatePortraitSkinDiseaseDetectionParams(params);
    const mapped = mapParams(params, PortraitSkinDiseaseDetectionParamMap);
    return this.request.request<PortraitSkinDiseaseDetectionResponseData>("POST", "/api/portrait/analysis/skin-disease-detection", { body: mapped, multipart: true });
  }

  async portraitTryOnClothes(params: PortraitTryOnClothesParams): Promise<PortraitTryOnClothesResponse> {
    validatePortraitTryOnClothesParams(params);
    const mapped = mapParams(params, PortraitTryOnClothesParamMap);
    return this.request.request<PortraitTryOnClothesResponseData>("POST", "/api/portrait/editing/try-on-clothes", { body: mapped, multipart: true });
  }

  async portraitTryOnClothesPro(params: PortraitTryOnClothesProParams): Promise<PortraitTryOnClothesProResponse> {
    validatePortraitTryOnClothesProParams(params);
    const mapped = mapParams(params, PortraitTryOnClothesProParamMap);
    return this.request.request<PortraitTryOnClothesProResponseData>("POST", "/api/portrait/editing/try-on-clothes-pro", { body: mapped, multipart: true });
  }

  async portraitFacialBlurring(params: PortraitFacialBlurringParams): Promise<PortraitFacialBlurringResponse> {
    validatePortraitFacialBlurringParams(params);
    const mapped = mapParams(params, PortraitFacialBlurringParamMap);
    return this.request.request<PortraitFacialBlurringResponseData>("POST", "/api/portrait/effects/blurred-faces", { body: mapped, multipart: true });
  }

  async portraitExpressionEditing(params: PortraitExpressionEditingParams): Promise<PortraitExpressionEditingResponse> {
    validatePortraitExpressionEditingParams(params);
    const mapped = mapParams(params, PortraitExpressionEditingParamMap);
    return this.request.request<PortraitExpressionEditingResponseData>("POST", "/api/portrait/effects/emotion-editor", { body: mapped, multipart: true });
  }

  async portraitFaceRestorationEnhancement(params: PortraitFaceRestorationEnhancementParams): Promise<PortraitFaceRestorationEnhancementResponse> {
    validatePortraitFaceRestorationEnhancementParams(params);
    const mapped = mapParams(params, PortraitFaceRestorationEnhancementParamMap);
    return this.request.request<PortraitFaceRestorationEnhancementResponseData>("POST", "/api/portrait/effects/enhance-face", { body: mapped, multipart: true });
  }

  async portraitFaceAttributeEditing(params: PortraitFaceAttributeEditingParams): Promise<PortraitFaceAttributeEditingResponse> {
    validatePortraitFaceAttributeEditingParams(params);
    const mapped = mapParams(params, PortraitFaceAttributeEditingParamMap);
    return this.request.request<PortraitFaceAttributeEditingResponseData>("POST", "/api/portrait/effects/face-attribute-editing", { body: mapped, multipart: true });
  }

  async portraitFacialBeautification(params: PortraitFacialBeautificationParams): Promise<PortraitFacialBeautificationResponse> {
    validatePortraitFacialBeautificationParams(params);
    const mapped = mapParams(params, PortraitFacialBeautificationParamMap);
    return this.request.request<PortraitFacialBeautificationResponseData>("POST", "/api/portrait/effects/face-beauty", { body: mapped, multipart: true });
  }

  async portraitFacialBeautificationAdvanced(params: PortraitFacialBeautificationAdvancedParams): Promise<PortraitFacialBeautificationAdvancedResponse> {
    validatePortraitFacialBeautificationAdvancedParams(params);
    const mapped = mapParams(params, PortraitFacialBeautificationAdvancedParamMap);
    return this.request.request<PortraitFacialBeautificationAdvancedResponseData>("POST", "/api/portrait/effects/face-beauty-advanced", { body: mapped, multipart: true });
  }

  async portraitFacialBeautificationPro(params: PortraitFacialBeautificationProParams): Promise<PortraitFacialBeautificationProResponse> {
    validatePortraitFacialBeautificationProParams(params);
    const mapped = mapParams(params, PortraitFacialBeautificationProParamMap);
    return this.request.request<PortraitFacialBeautificationProResponseData>("POST", "/api/portrait/effects/face-beauty-pro", { body: mapped, multipart: true });
  }

  async portraitFacialFilters(params: PortraitFacialFiltersParams): Promise<PortraitFacialFiltersResponse> {
    validatePortraitFacialFiltersParams(params);
    const mapped = mapParams(params, PortraitFacialFiltersParamMap);
    return this.request.request<PortraitFacialFiltersResponseData>("POST", "/api/portrait/effects/face-filter", { body: mapped, multipart: true });
  }

  async portraitFaceFusion(params: PortraitFaceFusionParams): Promise<PortraitFaceFusionResponse> {
    validatePortraitFaceFusionParams(params);
    const mapped = mapParams(params, PortraitFaceFusionParamMap);
    return this.request.request<PortraitFaceFusionResponseData>("POST", "/api/portrait/effects/face-fusion", { body: mapped, multipart: true });
  }

  async portraitHairstyleEditing(params: PortraitHairstyleEditingParams): Promise<PortraitHairstyleEditingResponse> {
    validatePortraitHairstyleEditingParams(params);
    const mapped = mapParams(params, PortraitHairstyleEditingParamMap);
    return this.request.request<PortraitHairstyleEditingResponseData>("POST", "/api/portrait/effects/hairstyle-editor", { body: mapped, multipart: true });
  }

  async portraitHairstyleEditingPro(params: PortraitHairstyleEditingProParams): Promise<PortraitHairstyleEditingProResponse> {
    validatePortraitHairstyleEditingProParams(params);
    const mapped = mapParams(params, PortraitHairstyleEditingProParamMap);
    return this.request.request<PortraitHairstyleEditingProResponseData>("POST", "/api/portrait/effects/hairstyle-editor-pro", { body: mapped, multipart: true });
  }

  async changeHairstyle(params: PortraitHairstyleEditingProParams): Promise<PortraitHairstyleEditingProResponse> {
    return this.portraitHairstyleEditingPro(params);
  }

  async portraitLipsColorChanger(params: PortraitLipsColorChangerParams): Promise<PortraitLipsColorChangerResponse> {
    validatePortraitLipsColorChangerParams(params);
    const mapped = mapParams(params, PortraitLipsColorChangerParamMap);
    return this.request.request<PortraitLipsColorChangerResponseData>("POST", "/api/portrait/effects/lips-color-changer", { body: mapped, multipart: true });
  }

  async portraitLivePhotos(params: PortraitLivePhotosParams): Promise<PortraitLivePhotosResponse> {
    validatePortraitLivePhotosParams(params);
    const mapped = mapParams(params, PortraitLivePhotosParamMap);
    return this.request.request<PortraitLivePhotosResponseData>("POST", "/api/portrait/effects/live-photo", { body: mapped, multipart: true });
  }

  async portraitCartoonYourself(params: PortraitCartoonYourselfParams): Promise<PortraitCartoonYourselfResponse> {
    validatePortraitCartoonYourselfParams(params);
    const mapped = mapParams(params, PortraitCartoonYourselfParamMap);
    return this.request.request<PortraitCartoonYourselfResponseData>("POST", "/api/portrait/effects/portrait-animation", { body: mapped, multipart: true });
  }

  async portraitIntelligentBeautification(params: PortraitIntelligentBeautificationParams): Promise<PortraitIntelligentBeautificationResponse> {
    validatePortraitIntelligentBeautificationParams(params);
    const mapped = mapParams(params, PortraitIntelligentBeautificationParamMap);
    return this.request.request<PortraitIntelligentBeautificationResponseData>("POST", "/api/portrait/effects/smart-beauty", { body: mapped, multipart: true });
  }

  async retouch(params: PortraitIntelligentBeautificationParams): Promise<PortraitIntelligentBeautificationResponse> {
    return this.portraitIntelligentBeautification(params);
  }

  async portraitIntelligentFaceSlimming(params: PortraitIntelligentFaceSlimmingParams): Promise<PortraitIntelligentFaceSlimmingResponse> {
    validatePortraitIntelligentFaceSlimmingParams(params);
    const mapped = mapParams(params, PortraitIntelligentFaceSlimmingParamMap);
    return this.request.request<PortraitIntelligentFaceSlimmingResponseData>("POST", "/api/portrait/effects/smart-face-slimming", { body: mapped, multipart: true });
  }

  async portraitIntelligentSkinRetouching(params: PortraitIntelligentSkinRetouchingParams): Promise<PortraitIntelligentSkinRetouchingResponse> {
    validatePortraitIntelligentSkinRetouchingParams(params);
    const mapped = mapParams(params, PortraitIntelligentSkinRetouchingParamMap);
    return this.request.request<PortraitIntelligentSkinRetouchingResponseData>("POST", "/api/portrait/effects/smart-skin", { body: mapped, multipart: true });
  }

  async portraitTryOnClothesRefiner(params: PortraitTryOnClothesRefinerParams): Promise<PortraitTryOnClothesRefinerResponse> {
    validatePortraitTryOnClothesRefinerParams(params);
    const mapped = mapParams(params, PortraitTryOnClothesRefinerParamMap);
    return this.request.request<PortraitTryOnClothesRefinerResponseData>("POST", "/api/portrait/enhance/try-on-clothes-refiner", { body: mapped, multipart: true });
  }

  async portraitAIFaceRating(params: PortraitAIFaceRatingParams): Promise<PortraitAIFaceRatingResponse> {
    validatePortraitAIFaceRatingParams(params);
    const mapped = mapParams(params, PortraitAIFaceRatingParamMap);
    return this.request.request<PortraitAIFaceRatingResponseData>("POST", "/api/portrait/analysis/ai-face-rating", { body: mapped, multipart: true });
  }

  async portraitAIBald(params: PortraitAIBaldParams): Promise<PortraitAIBaldResponse> {
    validatePortraitAIBaldParams(params);
    const mapped = mapParams(params, PortraitAIBaldParamMap);
    return this.request.request<PortraitAIBaldResponseData>("POST", "/api/portrait/editing/ai-bald", { body: mapped, multipart: true });
  }

  async portraitAIBeardRemoval(params: PortraitAIBeardRemovalParams): Promise<PortraitAIBeardRemovalResponse> {
    validatePortraitAIBeardRemovalParams(params);
    const mapped = mapParams(params, PortraitAIBeardRemovalParamMap);
    return this.request.request<PortraitAIBeardRemovalResponseData>("POST", "/api/portrait/editing/ai-beard-removal", { body: mapped, multipart: true });
  }

  async portraitAIBeardStyling(params: PortraitAIBeardStylingParams): Promise<PortraitAIBeardStylingResponse> {
    validatePortraitAIBeardStylingParams(params);
    const mapped = mapParams(params, PortraitAIBeardStylingParamMap);
    return this.request.request<PortraitAIBeardStylingResponseData>("POST", "/api/portrait/editing/ai-beard-styling", { body: mapped, multipart: true });
  }

  async portraitAIBreastExpansion(params: PortraitAIBreastExpansionParams): Promise<PortraitAIBreastExpansionResponse> {
    validatePortraitAIBreastExpansionParams(params);
    const mapped = mapParams(params, PortraitAIBreastExpansionParamMap);
    return this.request.request<PortraitAIBreastExpansionResponseData>("POST", "/api/portrait/editing/ai-big-tits", { body: mapped, multipart: true });
  }

  async portraitAIButtEnhancement(params: PortraitAIButtEnhancementParams): Promise<PortraitAIButtEnhancementResponse> {
    validatePortraitAIButtEnhancementParams(params);
    const mapped = mapParams(params, PortraitAIButtEnhancementParamMap);
    return this.request.request<PortraitAIButtEnhancementResponseData>("POST", "/api/portrait/editing/ai-butt-enhancement", { body: mapped, multipart: true });
  }

  async portraitAIColoredContacts(params: PortraitAIColoredContactsParams): Promise<PortraitAIColoredContactsResponse> {
    validatePortraitAIColoredContactsParams(params);
    const mapped = mapParams(params, PortraitAIColoredContactsParamMap);
    return this.request.request<PortraitAIColoredContactsResponseData>("POST", "/api/portrait/editing/ai-colored-contacts", { body: mapped, multipart: true });
  }

  async portraitAIEyebrows(params: PortraitAIEyebrowsParams): Promise<PortraitAIEyebrowsResponse> {
    validatePortraitAIEyebrowsParams(params);
    const mapped = mapParams(params, PortraitAIEyebrowsParamMap);
    return this.request.request<PortraitAIEyebrowsResponseData>("POST", "/api/portrait/editing/ai-eyebrows", { body: mapped, multipart: true });
  }

  async portraitAIEyelashes(params: PortraitAIEyelashesParams): Promise<PortraitAIEyelashesResponse> {
    validatePortraitAIEyelashesParams(params);
    const mapped = mapParams(params, PortraitAIEyelashesParamMap);
    return this.request.request<PortraitAIEyelashesResponseData>("POST", "/api/portrait/editing/ai-eyelashes", { body: mapped, multipart: true });
  }

  async portraitAIEyeshadowTryOn(params: PortraitAIEyeshadowTryOnParams): Promise<PortraitAIEyeshadowTryOnResponse> {
    validatePortraitAIEyeshadowTryOnParams(params);
    const mapped = mapParams(params, PortraitAIEyeshadowTryOnParamMap);
    return this.request.request<PortraitAIEyeshadowTryOnResponseData>("POST", "/api/portrait/editing/ai-eyeshadow", { body: mapped, multipart: true });
  }

  async portraitAIFaceSwap(params: PortraitAIFaceSwapParams): Promise<PortraitAIFaceSwapResponse> {
    validatePortraitAIFaceSwapParams(params);
    const mapped = mapParams(params, PortraitAIFaceSwapParamMap);
    return this.request.request<PortraitAIFaceSwapResponseData>("POST", "/api/portrait/editing/ai-face-swap", { body: mapped, multipart: true });
  }

  async portraitAIFatFilter(params: PortraitAIFatFilterParams): Promise<PortraitAIFatFilterResponse> {
    validatePortraitAIFatFilterParams(params);
    const mapped = mapParams(params, PortraitAIFatFilterParamMap);
    return this.request.request<PortraitAIFatFilterResponseData>("POST", "/api/portrait/editing/ai-fat-filter", { body: mapped, multipart: true });
  }

  async portraitAIHairColor(params: PortraitAIHairColorParams): Promise<PortraitAIHairColorResponse> {
    validatePortraitAIHairColorParams(params);
    const mapped = mapParams(params, PortraitAIHairColorParamMap);
    return this.request.request<PortraitAIHairColorResponseData>("POST", "/api/portrait/editing/ai-hair-color", { body: mapped, multipart: true });
  }

  async portraitAIHairLossSimulation(params: PortraitAIHairLossSimulationParams): Promise<PortraitAIHairLossSimulationResponse> {
    validatePortraitAIHairLossSimulationParams(params);
    const mapped = mapParams(params, PortraitAIHairLossSimulationParamMap);
    return this.request.request<PortraitAIHairLossSimulationResponseData>("POST", "/api/portrait/editing/ai-hair-loss-simulation", { body: mapped, multipart: true });
  }

  async portraitAILipEnhancement(params: PortraitAILipEnhancementParams): Promise<PortraitAILipEnhancementResponse> {
    validatePortraitAILipEnhancementParams(params);
    const mapped = mapParams(params, PortraitAILipEnhancementParamMap);
    return this.request.request<PortraitAILipEnhancementResponseData>("POST", "/api/portrait/editing/ai-lip-enhancement", { body: mapped, multipart: true });
  }

  async portraitAIWaistSlimming(params: PortraitAIWaistSlimmingParams): Promise<PortraitAIWaistSlimmingResponse> {
    validatePortraitAIWaistSlimmingParams(params);
    const mapped = mapParams(params, PortraitAIWaistSlimmingParamMap);
    return this.request.request<PortraitAIWaistSlimmingResponseData>("POST", "/api/portrait/editing/ai-waist-slimming", { body: mapped, multipart: true });
  }

  async portraitTryOnClothesPremium(params: PortraitTryOnClothesPremiumParams): Promise<PortraitTryOnClothesPremiumResponse> {
    validatePortraitTryOnClothesPremiumParams(params);
    const mapped = mapParams(params, PortraitTryOnClothesPremiumParamMap);
    return this.request.request<PortraitTryOnClothesPremiumResponseData>("POST", "/api/portrait/editing/try-on-clothes-premium", { body: mapped, multipart: true });
  }

  async portraitAIBigHeadEffect(params: PortraitAIBigHeadEffectParams): Promise<PortraitAIBigHeadEffectResponse> {
    validatePortraitAIBigHeadEffectParams(params);
    const mapped = mapParams(params, PortraitAIBigHeadEffectParamMap);
    return this.request.request<PortraitAIBigHeadEffectResponseData>("POST", "/api/portrait/effects/ai-big-head-effect", { body: mapped, multipart: true });
  }

  async portraitAIHalloweenMask(params: PortraitAIHalloweenMaskParams): Promise<PortraitAIHalloweenMaskResponse> {
    validatePortraitAIHalloweenMaskParams(params);
    const mapped = mapParams(params, PortraitAIHalloweenMaskParamMap);
    return this.request.request<PortraitAIHalloweenMaskResponseData>("POST", "/api/portrait/effects/ai-halloween-mask", { body: mapped, multipart: true });
  }

  async portraitAILipBiteExpressions(params: PortraitAILipBiteExpressionsParams): Promise<PortraitAILipBiteExpressionsResponse> {
    validatePortraitAILipBiteExpressionsParams(params);
    const mapped = mapParams(params, PortraitAILipBiteExpressionsParamMap);
    return this.request.request<PortraitAILipBiteExpressionsResponseData>("POST", "/api/portrait/effects/ai-lip-bite-expressions", { body: mapped, multipart: true });
  }

  async portraitAIRedLipGloss(params: PortraitAIRedLipGlossParams): Promise<PortraitAIRedLipGlossResponse> {
    validatePortraitAIRedLipGlossParams(params);
    const mapped = mapParams(params, PortraitAIRedLipGlossParamMap);
    return this.request.request<PortraitAIRedLipGlossResponseData>("POST", "/api/portrait/effects/ai-red-lip-gloss", { body: mapped, multipart: true });
  }

  async portraitAISquareFaceFilter(params: PortraitAISquareFaceFilterParams): Promise<PortraitAISquareFaceFilterResponse> {
    validatePortraitAISquareFaceFilterParams(params);
    const mapped = mapParams(params, PortraitAISquareFaceFilterParamMap);
    return this.request.request<PortraitAISquareFaceFilterResponseData>("POST", "/api/portrait/effects/ai-square-face-filter", { body: mapped, multipart: true });
  }

  async portraitExpressionEditingAdvanced(params: PortraitExpressionEditingAdvancedParams): Promise<PortraitExpressionEditingAdvancedResponse> {
    validatePortraitExpressionEditingAdvancedParams(params);
    const mapped = mapParams(params, PortraitExpressionEditingAdvancedParamMap);
    return this.request.request<PortraitExpressionEditingAdvancedResponseData>("POST", "/api/portrait/effects/emotion-editor-advanced", { body: mapped, multipart: true });
  }

  async portraitHairstyleEditingPremium(params: PortraitHairstyleEditingPremiumParams): Promise<PortraitHairstyleEditingPremiumResponse> {
    validatePortraitHairstyleEditingPremiumParams(params);
    const mapped = mapParams(params, PortraitHairstyleEditingPremiumParamMap);
    return this.request.request<PortraitHairstyleEditingPremiumResponseData>("POST", "/api/portrait/effects/hairstyle-editor-premium", { body: mapped, multipart: true });
  }

  async portraitAISkinEnhancementAdvanced(params: PortraitAISkinEnhancementAdvancedParams): Promise<PortraitAISkinEnhancementAdvancedResponse> {
    validatePortraitAISkinEnhancementAdvancedParams(params);
    const mapped = mapParams(params, PortraitAISkinEnhancementAdvancedParamMap);
    return this.request.request<PortraitAISkinEnhancementAdvancedResponseData>("POST", "/api/portrait/effects/smart-skin-advanced", { body: mapped, multipart: true });
  }

}
