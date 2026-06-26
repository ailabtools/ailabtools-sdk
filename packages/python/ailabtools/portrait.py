from .http import Requester
from .utils import map_params
from .generated.endpoints import (
    PortraitFaceAnalyzerParams,
    PortraitFaceAnalyzerResponse,
    PortraitFaceAnalyzerParamMap,
    validate_portraitFaceAnalyzer_params,
    PortraitFaceAnalyzerAdvancedParams,
    PortraitFaceAnalyzerAdvancedResponse,
    PortraitFaceAnalyzerAdvancedParamMap,
    validate_portraitFaceAnalyzerAdvanced_params,
    PortraitFacialLandmarksParams,
    PortraitFacialLandmarksResponse,
    PortraitFacialLandmarksParamMap,
    validate_portraitFacialLandmarks_params,
    PortraitSkinAnalysisBasicParams,
    PortraitSkinAnalysisBasicResponse,
    PortraitSkinAnalysisBasicParamMap,
    validate_portraitSkinAnalysisBasic_params,
    PortraitSkinAnalysisAdvancedParams,
    PortraitSkinAnalysisAdvancedResponse,
    PortraitSkinAnalysisAdvancedParamMap,
    validate_portraitSkinAnalysisAdvanced_params,
    PortraitSkinAnalysisProfessionalParams,
    PortraitSkinAnalysisProfessionalResponse,
    PortraitSkinAnalysisProfessionalParamMap,
    validate_portraitSkinAnalysisProfessional_params,
    PortraitSkinDiseaseDetectionParams,
    PortraitSkinDiseaseDetectionResponse,
    PortraitSkinDiseaseDetectionParamMap,
    validate_portraitSkinDiseaseDetection_params,
    PortraitTryOnClothesParams,
    PortraitTryOnClothesResponse,
    PortraitTryOnClothesParamMap,
    validate_portraitTryOnClothes_params,
    PortraitTryOnClothesProParams,
    PortraitTryOnClothesProResponse,
    PortraitTryOnClothesProParamMap,
    validate_portraitTryOnClothesPro_params,
    PortraitFacialBlurringParams,
    PortraitFacialBlurringResponse,
    PortraitFacialBlurringParamMap,
    validate_portraitFacialBlurring_params,
    PortraitExpressionEditingParams,
    PortraitExpressionEditingResponse,
    PortraitExpressionEditingParamMap,
    validate_portraitExpressionEditing_params,
    PortraitFaceRestorationEnhancementParams,
    PortraitFaceRestorationEnhancementResponse,
    PortraitFaceRestorationEnhancementParamMap,
    validate_portraitFaceRestorationEnhancement_params,
    PortraitFaceAttributeEditingParams,
    PortraitFaceAttributeEditingResponse,
    PortraitFaceAttributeEditingParamMap,
    validate_portraitFaceAttributeEditing_params,
    PortraitFacialBeautificationParams,
    PortraitFacialBeautificationResponse,
    PortraitFacialBeautificationParamMap,
    validate_portraitFacialBeautification_params,
    PortraitFacialBeautificationAdvancedParams,
    PortraitFacialBeautificationAdvancedResponse,
    PortraitFacialBeautificationAdvancedParamMap,
    validate_portraitFacialBeautificationAdvanced_params,
    PortraitFacialBeautificationProParams,
    PortraitFacialBeautificationProResponse,
    PortraitFacialBeautificationProParamMap,
    validate_portraitFacialBeautificationPro_params,
    PortraitFacialFiltersParams,
    PortraitFacialFiltersResponse,
    PortraitFacialFiltersParamMap,
    validate_portraitFacialFilters_params,
    PortraitFaceFusionParams,
    PortraitFaceFusionResponse,
    PortraitFaceFusionParamMap,
    validate_portraitFaceFusion_params,
    PortraitHairstyleEditingParams,
    PortraitHairstyleEditingResponse,
    PortraitHairstyleEditingParamMap,
    validate_portraitHairstyleEditing_params,
    PortraitHairstyleEditingProParams,
    PortraitHairstyleEditingProResponse,
    PortraitHairstyleEditingProParamMap,
    validate_portraitHairstyleEditingPro_params,
    PortraitLipsColorChangerParams,
    PortraitLipsColorChangerResponse,
    PortraitLipsColorChangerParamMap,
    validate_portraitLipsColorChanger_params,
    PortraitLivePhotosParams,
    PortraitLivePhotosResponse,
    PortraitLivePhotosParamMap,
    validate_portraitLivePhotos_params,
    PortraitCartoonYourselfParams,
    PortraitCartoonYourselfResponse,
    PortraitCartoonYourselfParamMap,
    validate_portraitCartoonYourself_params,
    PortraitIntelligentBeautificationParams,
    PortraitIntelligentBeautificationResponse,
    PortraitIntelligentBeautificationParamMap,
    validate_portraitIntelligentBeautification_params,
    PortraitIntelligentFaceSlimmingParams,
    PortraitIntelligentFaceSlimmingResponse,
    PortraitIntelligentFaceSlimmingParamMap,
    validate_portraitIntelligentFaceSlimming_params,
    PortraitIntelligentSkinRetouchingParams,
    PortraitIntelligentSkinRetouchingResponse,
    PortraitIntelligentSkinRetouchingParamMap,
    validate_portraitIntelligentSkinRetouching_params,
    PortraitTryOnClothesRefinerParams,
    PortraitTryOnClothesRefinerResponse,
    PortraitTryOnClothesRefinerParamMap,
    validate_portraitTryOnClothesRefiner_params
)

class PortraitAPI:
    def __init__(self, requester: Requester):
        self._requester = requester

    async def portraitFaceAnalyzer(self, params: PortraitFaceAnalyzerParams) -> PortraitFaceAnalyzerResponse:
        validate_portraitFaceAnalyzer_params(params)
        mapped = map_params(params, PortraitFaceAnalyzerParamMap)
        return await self._requester.request('POST', '/api/portrait/analysis/face-analyzer', body=mapped, multipart=True)

    async def portraitFaceAnalyzerAdvanced(self, params: PortraitFaceAnalyzerAdvancedParams) -> PortraitFaceAnalyzerAdvancedResponse:
        validate_portraitFaceAnalyzerAdvanced_params(params)
        mapped = map_params(params, PortraitFaceAnalyzerAdvancedParamMap)
        return await self._requester.request('POST', '/api/portrait/analysis/face-analyzer-advanced', body=mapped, multipart=True)

    async def portraitFacialLandmarks(self, params: PortraitFacialLandmarksParams) -> PortraitFacialLandmarksResponse:
        validate_portraitFacialLandmarks_params(params)
        mapped = map_params(params, PortraitFacialLandmarksParamMap)
        return await self._requester.request('POST', '/api/portrait/analysis/face-key-points', body=mapped, multipart=True)

    async def portraitSkinAnalysisBasic(self, params: PortraitSkinAnalysisBasicParams) -> PortraitSkinAnalysisBasicResponse:
        validate_portraitSkinAnalysisBasic_params(params)
        mapped = map_params(params, PortraitSkinAnalysisBasicParamMap)
        return await self._requester.request('POST', '/api/portrait/analysis/skin-analysis', body=mapped, multipart=True)

    async def portraitSkinAnalysisAdvanced(self, params: PortraitSkinAnalysisAdvancedParams) -> PortraitSkinAnalysisAdvancedResponse:
        validate_portraitSkinAnalysisAdvanced_params(params)
        mapped = map_params(params, PortraitSkinAnalysisAdvancedParamMap)
        return await self._requester.request('POST', '/api/portrait/analysis/skin-analysis-advanced', body=mapped, multipart=True)

    async def portraitSkinAnalysisProfessional(self, params: PortraitSkinAnalysisProfessionalParams) -> PortraitSkinAnalysisProfessionalResponse:
        validate_portraitSkinAnalysisProfessional_params(params)
        mapped = map_params(params, PortraitSkinAnalysisProfessionalParamMap)
        return await self._requester.request('POST', '/api/portrait/analysis/skin-analysis-pro', body=mapped, multipart=True)

    async def portraitSkinDiseaseDetection(self, params: PortraitSkinDiseaseDetectionParams) -> PortraitSkinDiseaseDetectionResponse:
        validate_portraitSkinDiseaseDetection_params(params)
        mapped = map_params(params, PortraitSkinDiseaseDetectionParamMap)
        return await self._requester.request('POST', '/api/portrait/analysis/skin-disease-detection', body=mapped, multipart=True)

    async def portraitTryOnClothes(self, params: PortraitTryOnClothesParams) -> PortraitTryOnClothesResponse:
        validate_portraitTryOnClothes_params(params)
        mapped = map_params(params, PortraitTryOnClothesParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/try-on-clothes', body=mapped, multipart=True)

    async def portraitTryOnClothesPro(self, params: PortraitTryOnClothesProParams) -> PortraitTryOnClothesProResponse:
        validate_portraitTryOnClothesPro_params(params)
        mapped = map_params(params, PortraitTryOnClothesProParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/try-on-clothes-pro', body=mapped, multipart=True)

    async def portraitFacialBlurring(self, params: PortraitFacialBlurringParams) -> PortraitFacialBlurringResponse:
        validate_portraitFacialBlurring_params(params)
        mapped = map_params(params, PortraitFacialBlurringParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/blurred-faces', body=mapped, multipart=True)

    async def portraitExpressionEditing(self, params: PortraitExpressionEditingParams) -> PortraitExpressionEditingResponse:
        validate_portraitExpressionEditing_params(params)
        mapped = map_params(params, PortraitExpressionEditingParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/emotion-editor', body=mapped, multipart=True)

    async def portraitFaceRestorationEnhancement(self, params: PortraitFaceRestorationEnhancementParams) -> PortraitFaceRestorationEnhancementResponse:
        validate_portraitFaceRestorationEnhancement_params(params)
        mapped = map_params(params, PortraitFaceRestorationEnhancementParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/enhance-face', body=mapped, multipart=True)

    async def portraitFaceAttributeEditing(self, params: PortraitFaceAttributeEditingParams) -> PortraitFaceAttributeEditingResponse:
        validate_portraitFaceAttributeEditing_params(params)
        mapped = map_params(params, PortraitFaceAttributeEditingParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/face-attribute-editing', body=mapped, multipart=True)

    async def portraitFacialBeautification(self, params: PortraitFacialBeautificationParams) -> PortraitFacialBeautificationResponse:
        validate_portraitFacialBeautification_params(params)
        mapped = map_params(params, PortraitFacialBeautificationParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/face-beauty', body=mapped, multipart=True)

    async def portraitFacialBeautificationAdvanced(self, params: PortraitFacialBeautificationAdvancedParams) -> PortraitFacialBeautificationAdvancedResponse:
        validate_portraitFacialBeautificationAdvanced_params(params)
        mapped = map_params(params, PortraitFacialBeautificationAdvancedParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/face-beauty-advanced', body=mapped, multipart=True)

    async def portraitFacialBeautificationPro(self, params: PortraitFacialBeautificationProParams) -> PortraitFacialBeautificationProResponse:
        validate_portraitFacialBeautificationPro_params(params)
        mapped = map_params(params, PortraitFacialBeautificationProParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/face-beauty-pro', body=mapped, multipart=True)

    async def portraitFacialFilters(self, params: PortraitFacialFiltersParams) -> PortraitFacialFiltersResponse:
        validate_portraitFacialFilters_params(params)
        mapped = map_params(params, PortraitFacialFiltersParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/face-filter', body=mapped, multipart=True)

    async def portraitFaceFusion(self, params: PortraitFaceFusionParams) -> PortraitFaceFusionResponse:
        validate_portraitFaceFusion_params(params)
        mapped = map_params(params, PortraitFaceFusionParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/face-fusion', body=mapped, multipart=True)

    async def portraitHairstyleEditing(self, params: PortraitHairstyleEditingParams) -> PortraitHairstyleEditingResponse:
        validate_portraitHairstyleEditing_params(params)
        mapped = map_params(params, PortraitHairstyleEditingParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/hairstyle-editor', body=mapped, multipart=True)

    async def portraitHairstyleEditingPro(self, params: PortraitHairstyleEditingProParams) -> PortraitHairstyleEditingProResponse:
        validate_portraitHairstyleEditingPro_params(params)
        mapped = map_params(params, PortraitHairstyleEditingProParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/hairstyle-editor-pro', body=mapped, multipart=True)

    async def portraitLipsColorChanger(self, params: PortraitLipsColorChangerParams) -> PortraitLipsColorChangerResponse:
        validate_portraitLipsColorChanger_params(params)
        mapped = map_params(params, PortraitLipsColorChangerParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/lips-color-changer', body=mapped, multipart=True)

    async def portraitLivePhotos(self, params: PortraitLivePhotosParams) -> PortraitLivePhotosResponse:
        validate_portraitLivePhotos_params(params)
        mapped = map_params(params, PortraitLivePhotosParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/live-photo', body=mapped, multipart=True)

    async def portraitCartoonYourself(self, params: PortraitCartoonYourselfParams) -> PortraitCartoonYourselfResponse:
        validate_portraitCartoonYourself_params(params)
        mapped = map_params(params, PortraitCartoonYourselfParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/portrait-animation', body=mapped, multipart=True)

    async def portraitIntelligentBeautification(self, params: PortraitIntelligentBeautificationParams) -> PortraitIntelligentBeautificationResponse:
        validate_portraitIntelligentBeautification_params(params)
        mapped = map_params(params, PortraitIntelligentBeautificationParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/smart-beauty', body=mapped, multipart=True)

    async def portraitIntelligentFaceSlimming(self, params: PortraitIntelligentFaceSlimmingParams) -> PortraitIntelligentFaceSlimmingResponse:
        validate_portraitIntelligentFaceSlimming_params(params)
        mapped = map_params(params, PortraitIntelligentFaceSlimmingParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/smart-face-slimming', body=mapped, multipart=True)

    async def portraitIntelligentSkinRetouching(self, params: PortraitIntelligentSkinRetouchingParams) -> PortraitIntelligentSkinRetouchingResponse:
        validate_portraitIntelligentSkinRetouching_params(params)
        mapped = map_params(params, PortraitIntelligentSkinRetouchingParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/smart-skin', body=mapped, multipart=True)

    async def portraitTryOnClothesRefiner(self, params: PortraitTryOnClothesRefinerParams) -> PortraitTryOnClothesRefinerResponse:
        validate_portraitTryOnClothesRefiner_params(params)
        mapped = map_params(params, PortraitTryOnClothesRefinerParamMap)
        return await self._requester.request('POST', '/api/portrait/enhance/try-on-clothes-refiner', body=mapped, multipart=True)
