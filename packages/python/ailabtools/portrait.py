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
    validate_portraitTryOnClothesRefiner_params,
    PortraitAIFaceRatingParams,
    PortraitAIFaceRatingResponse,
    PortraitAIFaceRatingParamMap,
    validate_portraitAIFaceRating_params,
    PortraitAIBaldParams,
    PortraitAIBaldResponse,
    PortraitAIBaldParamMap,
    validate_portraitAIBald_params,
    PortraitAIBeardRemovalParams,
    PortraitAIBeardRemovalResponse,
    PortraitAIBeardRemovalParamMap,
    validate_portraitAIBeardRemoval_params,
    PortraitAIBeardStylingParams,
    PortraitAIBeardStylingResponse,
    PortraitAIBeardStylingParamMap,
    validate_portraitAIBeardStyling_params,
    PortraitAIBreastExpansionParams,
    PortraitAIBreastExpansionResponse,
    PortraitAIBreastExpansionParamMap,
    validate_portraitAIBreastExpansion_params,
    PortraitAIButtEnhancementParams,
    PortraitAIButtEnhancementResponse,
    PortraitAIButtEnhancementParamMap,
    validate_portraitAIButtEnhancement_params,
    PortraitAIColoredContactsParams,
    PortraitAIColoredContactsResponse,
    PortraitAIColoredContactsParamMap,
    validate_portraitAIColoredContacts_params,
    PortraitAIEyebrowsParams,
    PortraitAIEyebrowsResponse,
    PortraitAIEyebrowsParamMap,
    validate_portraitAIEyebrows_params,
    PortraitAIEyelashesParams,
    PortraitAIEyelashesResponse,
    PortraitAIEyelashesParamMap,
    validate_portraitAIEyelashes_params,
    PortraitAIEyeshadowTryOnParams,
    PortraitAIEyeshadowTryOnResponse,
    PortraitAIEyeshadowTryOnParamMap,
    validate_portraitAIEyeshadowTryOn_params,
    PortraitAIFaceSwapParams,
    PortraitAIFaceSwapResponse,
    PortraitAIFaceSwapParamMap,
    validate_portraitAIFaceSwap_params,
    PortraitAIFatFilterParams,
    PortraitAIFatFilterResponse,
    PortraitAIFatFilterParamMap,
    validate_portraitAIFatFilter_params,
    PortraitAIHairColorParams,
    PortraitAIHairColorResponse,
    PortraitAIHairColorParamMap,
    validate_portraitAIHairColor_params,
    PortraitAIHairLossSimulationParams,
    PortraitAIHairLossSimulationResponse,
    PortraitAIHairLossSimulationParamMap,
    validate_portraitAIHairLossSimulation_params,
    PortraitAILipEnhancementParams,
    PortraitAILipEnhancementResponse,
    PortraitAILipEnhancementParamMap,
    validate_portraitAILipEnhancement_params,
    PortraitAIWaistSlimmingParams,
    PortraitAIWaistSlimmingResponse,
    PortraitAIWaistSlimmingParamMap,
    validate_portraitAIWaistSlimming_params,
    PortraitTryOnClothesPremiumParams,
    PortraitTryOnClothesPremiumResponse,
    PortraitTryOnClothesPremiumParamMap,
    validate_portraitTryOnClothesPremium_params,
    PortraitAIBigHeadEffectParams,
    PortraitAIBigHeadEffectResponse,
    PortraitAIBigHeadEffectParamMap,
    validate_portraitAIBigHeadEffect_params,
    PortraitAIHalloweenMaskParams,
    PortraitAIHalloweenMaskResponse,
    PortraitAIHalloweenMaskParamMap,
    validate_portraitAIHalloweenMask_params,
    PortraitAILipBiteExpressionsParams,
    PortraitAILipBiteExpressionsResponse,
    PortraitAILipBiteExpressionsParamMap,
    validate_portraitAILipBiteExpressions_params,
    PortraitAIRedLipGlossParams,
    PortraitAIRedLipGlossResponse,
    PortraitAIRedLipGlossParamMap,
    validate_portraitAIRedLipGloss_params,
    PortraitAISquareFaceFilterParams,
    PortraitAISquareFaceFilterResponse,
    PortraitAISquareFaceFilterParamMap,
    validate_portraitAISquareFaceFilter_params,
    PortraitExpressionEditingAdvancedParams,
    PortraitExpressionEditingAdvancedResponse,
    PortraitExpressionEditingAdvancedParamMap,
    validate_portraitExpressionEditingAdvanced_params,
    PortraitHairstyleEditingPremiumParams,
    PortraitHairstyleEditingPremiumResponse,
    PortraitHairstyleEditingPremiumParamMap,
    validate_portraitHairstyleEditingPremium_params,
    PortraitAISkinEnhancementAdvancedParams,
    PortraitAISkinEnhancementAdvancedResponse,
    PortraitAISkinEnhancementAdvancedParamMap,
    validate_portraitAISkinEnhancementAdvanced_params
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

    async def change_hairstyle(self, params: PortraitHairstyleEditingProParams) -> PortraitHairstyleEditingProResponse:
        return await self.portraitHairstyleEditingPro(params)

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

    async def retouch(self, params: PortraitIntelligentBeautificationParams) -> PortraitIntelligentBeautificationResponse:
        return await self.portraitIntelligentBeautification(params)

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

    async def portraitAIFaceRating(self, params: PortraitAIFaceRatingParams) -> PortraitAIFaceRatingResponse:
        validate_portraitAIFaceRating_params(params)
        mapped = map_params(params, PortraitAIFaceRatingParamMap)
        return await self._requester.request('POST', '/api/portrait/analysis/ai-face-rating', body=mapped, multipart=True)

    async def portraitAIBald(self, params: PortraitAIBaldParams) -> PortraitAIBaldResponse:
        validate_portraitAIBald_params(params)
        mapped = map_params(params, PortraitAIBaldParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-bald', body=mapped, multipart=True)

    async def portraitAIBeardRemoval(self, params: PortraitAIBeardRemovalParams) -> PortraitAIBeardRemovalResponse:
        validate_portraitAIBeardRemoval_params(params)
        mapped = map_params(params, PortraitAIBeardRemovalParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-beard-removal', body=mapped, multipart=True)

    async def portraitAIBeardStyling(self, params: PortraitAIBeardStylingParams) -> PortraitAIBeardStylingResponse:
        validate_portraitAIBeardStyling_params(params)
        mapped = map_params(params, PortraitAIBeardStylingParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-beard-styling', body=mapped, multipart=True)

    async def portraitAIBreastExpansion(self, params: PortraitAIBreastExpansionParams) -> PortraitAIBreastExpansionResponse:
        validate_portraitAIBreastExpansion_params(params)
        mapped = map_params(params, PortraitAIBreastExpansionParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-big-tits', body=mapped, multipart=True)

    async def portraitAIButtEnhancement(self, params: PortraitAIButtEnhancementParams) -> PortraitAIButtEnhancementResponse:
        validate_portraitAIButtEnhancement_params(params)
        mapped = map_params(params, PortraitAIButtEnhancementParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-butt-enhancement', body=mapped, multipart=True)

    async def portraitAIColoredContacts(self, params: PortraitAIColoredContactsParams) -> PortraitAIColoredContactsResponse:
        validate_portraitAIColoredContacts_params(params)
        mapped = map_params(params, PortraitAIColoredContactsParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-colored-contacts', body=mapped, multipart=True)

    async def portraitAIEyebrows(self, params: PortraitAIEyebrowsParams) -> PortraitAIEyebrowsResponse:
        validate_portraitAIEyebrows_params(params)
        mapped = map_params(params, PortraitAIEyebrowsParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-eyebrows', body=mapped, multipart=True)

    async def portraitAIEyelashes(self, params: PortraitAIEyelashesParams) -> PortraitAIEyelashesResponse:
        validate_portraitAIEyelashes_params(params)
        mapped = map_params(params, PortraitAIEyelashesParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-eyelashes', body=mapped, multipart=True)

    async def portraitAIEyeshadowTryOn(self, params: PortraitAIEyeshadowTryOnParams) -> PortraitAIEyeshadowTryOnResponse:
        validate_portraitAIEyeshadowTryOn_params(params)
        mapped = map_params(params, PortraitAIEyeshadowTryOnParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-eyeshadow', body=mapped, multipart=True)

    async def portraitAIFaceSwap(self, params: PortraitAIFaceSwapParams) -> PortraitAIFaceSwapResponse:
        validate_portraitAIFaceSwap_params(params)
        mapped = map_params(params, PortraitAIFaceSwapParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-face-swap', body=mapped, multipart=True)

    async def portraitAIFatFilter(self, params: PortraitAIFatFilterParams) -> PortraitAIFatFilterResponse:
        validate_portraitAIFatFilter_params(params)
        mapped = map_params(params, PortraitAIFatFilterParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-fat-filter', body=mapped, multipart=True)

    async def portraitAIHairColor(self, params: PortraitAIHairColorParams) -> PortraitAIHairColorResponse:
        validate_portraitAIHairColor_params(params)
        mapped = map_params(params, PortraitAIHairColorParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-hair-color', body=mapped, multipart=True)

    async def portraitAIHairLossSimulation(self, params: PortraitAIHairLossSimulationParams) -> PortraitAIHairLossSimulationResponse:
        validate_portraitAIHairLossSimulation_params(params)
        mapped = map_params(params, PortraitAIHairLossSimulationParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-hair-loss-simulation', body=mapped, multipart=True)

    async def portraitAILipEnhancement(self, params: PortraitAILipEnhancementParams) -> PortraitAILipEnhancementResponse:
        validate_portraitAILipEnhancement_params(params)
        mapped = map_params(params, PortraitAILipEnhancementParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-lip-enhancement', body=mapped, multipart=True)

    async def portraitAIWaistSlimming(self, params: PortraitAIWaistSlimmingParams) -> PortraitAIWaistSlimmingResponse:
        validate_portraitAIWaistSlimming_params(params)
        mapped = map_params(params, PortraitAIWaistSlimmingParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/ai-waist-slimming', body=mapped, multipart=True)

    async def portraitTryOnClothesPremium(self, params: PortraitTryOnClothesPremiumParams) -> PortraitTryOnClothesPremiumResponse:
        validate_portraitTryOnClothesPremium_params(params)
        mapped = map_params(params, PortraitTryOnClothesPremiumParamMap)
        return await self._requester.request('POST', '/api/portrait/editing/try-on-clothes-premium', body=mapped, multipart=True)

    async def portraitAIBigHeadEffect(self, params: PortraitAIBigHeadEffectParams) -> PortraitAIBigHeadEffectResponse:
        validate_portraitAIBigHeadEffect_params(params)
        mapped = map_params(params, PortraitAIBigHeadEffectParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/ai-big-head-effect', body=mapped, multipart=True)

    async def portraitAIHalloweenMask(self, params: PortraitAIHalloweenMaskParams) -> PortraitAIHalloweenMaskResponse:
        validate_portraitAIHalloweenMask_params(params)
        mapped = map_params(params, PortraitAIHalloweenMaskParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/ai-halloween-mask', body=mapped, multipart=True)

    async def portraitAILipBiteExpressions(self, params: PortraitAILipBiteExpressionsParams) -> PortraitAILipBiteExpressionsResponse:
        validate_portraitAILipBiteExpressions_params(params)
        mapped = map_params(params, PortraitAILipBiteExpressionsParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/ai-lip-bite-expressions', body=mapped, multipart=True)

    async def portraitAIRedLipGloss(self, params: PortraitAIRedLipGlossParams) -> PortraitAIRedLipGlossResponse:
        validate_portraitAIRedLipGloss_params(params)
        mapped = map_params(params, PortraitAIRedLipGlossParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/ai-red-lip-gloss', body=mapped, multipart=True)

    async def portraitAISquareFaceFilter(self, params: PortraitAISquareFaceFilterParams) -> PortraitAISquareFaceFilterResponse:
        validate_portraitAISquareFaceFilter_params(params)
        mapped = map_params(params, PortraitAISquareFaceFilterParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/ai-square-face-filter', body=mapped, multipart=True)

    async def portraitExpressionEditingAdvanced(self, params: PortraitExpressionEditingAdvancedParams) -> PortraitExpressionEditingAdvancedResponse:
        validate_portraitExpressionEditingAdvanced_params(params)
        mapped = map_params(params, PortraitExpressionEditingAdvancedParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/emotion-editor-advanced', body=mapped, multipart=True)

    async def portraitHairstyleEditingPremium(self, params: PortraitHairstyleEditingPremiumParams) -> PortraitHairstyleEditingPremiumResponse:
        validate_portraitHairstyleEditingPremium_params(params)
        mapped = map_params(params, PortraitHairstyleEditingPremiumParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/hairstyle-editor-premium', body=mapped, multipart=True)

    async def portraitAISkinEnhancementAdvanced(self, params: PortraitAISkinEnhancementAdvancedParams) -> PortraitAISkinEnhancementAdvancedResponse:
        validate_portraitAISkinEnhancementAdvanced_params(params)
        mapped = map_params(params, PortraitAISkinEnhancementAdvancedParamMap)
        return await self._requester.request('POST', '/api/portrait/effects/smart-skin-advanced', body=mapped, multipart=True)
