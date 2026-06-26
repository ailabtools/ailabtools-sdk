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
  PortraitTryOnClothesRefinerParamMap
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

}
