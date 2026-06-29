package com.ailabtools.sdk.api

import com.ailabtools.sdk.Requester
import com.ailabtools.sdk.generated.params.PortraitFaceAnalyzerParams
import com.ailabtools.sdk.generated.response.PortraitFaceAnalyzerResponse
import com.ailabtools.sdk.generated.params.PortraitFaceAnalyzerAdvancedParams
import com.ailabtools.sdk.generated.response.PortraitFaceAnalyzerAdvancedResponse
import com.ailabtools.sdk.generated.params.PortraitFacialLandmarksParams
import com.ailabtools.sdk.generated.response.PortraitFacialLandmarksResponse
import com.ailabtools.sdk.generated.params.PortraitSkinAnalysisBasicParams
import com.ailabtools.sdk.generated.response.PortraitSkinAnalysisBasicResponse
import com.ailabtools.sdk.generated.params.PortraitSkinAnalysisAdvancedParams
import com.ailabtools.sdk.generated.response.PortraitSkinAnalysisAdvancedResponse
import com.ailabtools.sdk.generated.params.PortraitSkinAnalysisProfessionalParams
import com.ailabtools.sdk.generated.response.PortraitSkinAnalysisProfessionalResponse
import com.ailabtools.sdk.generated.params.PortraitSkinDiseaseDetectionParams
import com.ailabtools.sdk.generated.response.PortraitSkinDiseaseDetectionResponse
import com.ailabtools.sdk.generated.params.PortraitTryOnClothesParams
import com.ailabtools.sdk.generated.response.PortraitTryOnClothesResponse
import com.ailabtools.sdk.generated.params.PortraitTryOnClothesProParams
import com.ailabtools.sdk.generated.response.PortraitTryOnClothesProResponse
import com.ailabtools.sdk.generated.params.PortraitFacialBlurringParams
import com.ailabtools.sdk.generated.response.PortraitFacialBlurringResponse
import com.ailabtools.sdk.generated.params.PortraitExpressionEditingParams
import com.ailabtools.sdk.generated.response.PortraitExpressionEditingResponse
import com.ailabtools.sdk.generated.params.PortraitFaceRestorationEnhancementParams
import com.ailabtools.sdk.generated.response.PortraitFaceRestorationEnhancementResponse
import com.ailabtools.sdk.generated.params.PortraitFaceAttributeEditingParams
import com.ailabtools.sdk.generated.response.PortraitFaceAttributeEditingResponse
import com.ailabtools.sdk.generated.params.PortraitFacialBeautificationParams
import com.ailabtools.sdk.generated.response.PortraitFacialBeautificationResponse
import com.ailabtools.sdk.generated.params.PortraitFacialBeautificationAdvancedParams
import com.ailabtools.sdk.generated.response.PortraitFacialBeautificationAdvancedResponse
import com.ailabtools.sdk.generated.params.PortraitFacialBeautificationProParams
import com.ailabtools.sdk.generated.response.PortraitFacialBeautificationProResponse
import com.ailabtools.sdk.generated.params.PortraitFacialFiltersParams
import com.ailabtools.sdk.generated.response.PortraitFacialFiltersResponse
import com.ailabtools.sdk.generated.params.PortraitFaceFusionParams
import com.ailabtools.sdk.generated.response.PortraitFaceFusionResponse
import com.ailabtools.sdk.generated.params.PortraitHairstyleEditingParams
import com.ailabtools.sdk.generated.response.PortraitHairstyleEditingResponse
import com.ailabtools.sdk.generated.params.PortraitHairstyleEditingProParams
import com.ailabtools.sdk.generated.response.PortraitHairstyleEditingProResponse
import com.ailabtools.sdk.generated.params.PortraitLipsColorChangerParams
import com.ailabtools.sdk.generated.response.PortraitLipsColorChangerResponse
import com.ailabtools.sdk.generated.params.PortraitLivePhotosParams
import com.ailabtools.sdk.generated.response.PortraitLivePhotosResponse
import com.ailabtools.sdk.generated.params.PortraitCartoonYourselfParams
import com.ailabtools.sdk.generated.response.PortraitCartoonYourselfResponse
import com.ailabtools.sdk.generated.params.PortraitIntelligentBeautificationParams
import com.ailabtools.sdk.generated.response.PortraitIntelligentBeautificationResponse
import com.ailabtools.sdk.generated.params.PortraitIntelligentFaceSlimmingParams
import com.ailabtools.sdk.generated.response.PortraitIntelligentFaceSlimmingResponse
import com.ailabtools.sdk.generated.params.PortraitIntelligentSkinRetouchingParams
import com.ailabtools.sdk.generated.response.PortraitIntelligentSkinRetouchingResponse
import com.ailabtools.sdk.generated.params.PortraitTryOnClothesRefinerParams
import com.ailabtools.sdk.generated.response.PortraitTryOnClothesRefinerResponse
import com.ailabtools.sdk.generated.params.PortraitAIFaceRatingParams
import com.ailabtools.sdk.generated.response.PortraitAIFaceRatingResponse
import com.ailabtools.sdk.generated.params.PortraitAIBaldParams
import com.ailabtools.sdk.generated.response.PortraitAIBaldResponse
import com.ailabtools.sdk.generated.params.PortraitAIBeardRemovalParams
import com.ailabtools.sdk.generated.response.PortraitAIBeardRemovalResponse
import com.ailabtools.sdk.generated.params.PortraitAIBeardStylingParams
import com.ailabtools.sdk.generated.response.PortraitAIBeardStylingResponse
import com.ailabtools.sdk.generated.params.PortraitAIBreastExpansionParams
import com.ailabtools.sdk.generated.response.PortraitAIBreastExpansionResponse
import com.ailabtools.sdk.generated.params.PortraitAIButtEnhancementParams
import com.ailabtools.sdk.generated.response.PortraitAIButtEnhancementResponse
import com.ailabtools.sdk.generated.params.PortraitAIColoredContactsParams
import com.ailabtools.sdk.generated.response.PortraitAIColoredContactsResponse
import com.ailabtools.sdk.generated.params.PortraitAIEyebrowsParams
import com.ailabtools.sdk.generated.response.PortraitAIEyebrowsResponse
import com.ailabtools.sdk.generated.params.PortraitAIEyelashesParams
import com.ailabtools.sdk.generated.response.PortraitAIEyelashesResponse
import com.ailabtools.sdk.generated.params.PortraitAIEyeshadowTryOnParams
import com.ailabtools.sdk.generated.response.PortraitAIEyeshadowTryOnResponse
import com.ailabtools.sdk.generated.params.PortraitAIFaceSwapParams
import com.ailabtools.sdk.generated.response.PortraitAIFaceSwapResponse
import com.ailabtools.sdk.generated.params.PortraitAIFatFilterParams
import com.ailabtools.sdk.generated.response.PortraitAIFatFilterResponse
import com.ailabtools.sdk.generated.params.PortraitAIHairColorParams
import com.ailabtools.sdk.generated.response.PortraitAIHairColorResponse
import com.ailabtools.sdk.generated.params.PortraitAIHairLossSimulationParams
import com.ailabtools.sdk.generated.response.PortraitAIHairLossSimulationResponse
import com.ailabtools.sdk.generated.params.PortraitAILipEnhancementParams
import com.ailabtools.sdk.generated.response.PortraitAILipEnhancementResponse
import com.ailabtools.sdk.generated.params.PortraitAIWaistSlimmingParams
import com.ailabtools.sdk.generated.response.PortraitAIWaistSlimmingResponse
import com.ailabtools.sdk.generated.params.PortraitTryOnClothesPremiumParams
import com.ailabtools.sdk.generated.response.PortraitTryOnClothesPremiumResponse
import com.ailabtools.sdk.generated.params.PortraitAIBigHeadEffectParams
import com.ailabtools.sdk.generated.response.PortraitAIBigHeadEffectResponse
import com.ailabtools.sdk.generated.params.PortraitAIHalloweenMaskParams
import com.ailabtools.sdk.generated.response.PortraitAIHalloweenMaskResponse
import com.ailabtools.sdk.generated.params.PortraitAILipBiteExpressionsParams
import com.ailabtools.sdk.generated.response.PortraitAILipBiteExpressionsResponse
import com.ailabtools.sdk.generated.params.PortraitAIRedLipGlossParams
import com.ailabtools.sdk.generated.response.PortraitAIRedLipGlossResponse
import com.ailabtools.sdk.generated.params.PortraitAISquareFaceFilterParams
import com.ailabtools.sdk.generated.response.PortraitAISquareFaceFilterResponse
import com.ailabtools.sdk.generated.params.PortraitExpressionEditingAdvancedParams
import com.ailabtools.sdk.generated.response.PortraitExpressionEditingAdvancedResponse
import com.ailabtools.sdk.generated.params.PortraitHairstyleEditingPremiumParams
import com.ailabtools.sdk.generated.response.PortraitHairstyleEditingPremiumResponse
import com.ailabtools.sdk.generated.params.PortraitAISkinEnhancementAdvancedParams
import com.ailabtools.sdk.generated.response.PortraitAISkinEnhancementAdvancedResponse

/** Portrait API operations. */
public class PortraitApi internal constructor(private val requester: Requester) {
    /** Calls [Face Analyzer API](https://www.ailabtools.com/docs/ai-portrait/analysis/face-analyzer/api). */
    public suspend fun portraitFaceAnalyzer(parameters: PortraitFaceAnalyzerParams): PortraitFaceAnalyzerResponse =
        requester.request("POST", "/api/portrait/analysis/face-analyzer", parameters, PortraitFaceAnalyzerResponse.serializer())

    /** Calls [Face Analyzer Advanced API](https://www.ailabtools.com/docs/ai-portrait/analysis/face-analyzer-advanced/api). */
    public suspend fun portraitFaceAnalyzerAdvanced(parameters: PortraitFaceAnalyzerAdvancedParams): PortraitFaceAnalyzerAdvancedResponse =
        requester.request("POST", "/api/portrait/analysis/face-analyzer-advanced", parameters, PortraitFaceAnalyzerAdvancedResponse.serializer())

    /** Calls [Facial Landmarks API](https://www.ailabtools.com/docs/ai-portrait/analysis/face-key-points/api). */
    public suspend fun portraitFacialLandmarks(parameters: PortraitFacialLandmarksParams): PortraitFacialLandmarksResponse =
        requester.request("POST", "/api/portrait/analysis/face-key-points", parameters, PortraitFacialLandmarksResponse.serializer())

    /** Calls [Skin Analyze API](https://www.ailabtools.com/docs/ai-portrait/analysis/skin-analysis/api). */
    public suspend fun portraitSkinAnalysisBasic(parameters: PortraitSkinAnalysisBasicParams): PortraitSkinAnalysisBasicResponse =
        requester.request("POST", "/api/portrait/analysis/skin-analysis", parameters, PortraitSkinAnalysisBasicResponse.serializer())

    /** Calls [Skin Analyze Advanced API](https://www.ailabtools.com/docs/ai-portrait/analysis/skin-analysis-advanced/api). */
    public suspend fun portraitSkinAnalysisAdvanced(parameters: PortraitSkinAnalysisAdvancedParams): PortraitSkinAnalysisAdvancedResponse =
        requester.request("POST", "/api/portrait/analysis/skin-analysis-advanced", parameters, PortraitSkinAnalysisAdvancedResponse.serializer())

    /** Calls [Skin Analyze Pro API](https://www.ailabtools.com/docs/ai-portrait/analysis/skin-analysis-pro/api). */
    public suspend fun portraitSkinAnalysisProfessional(parameters: PortraitSkinAnalysisProfessionalParams): PortraitSkinAnalysisProfessionalResponse =
        requester.request("POST", "/api/portrait/analysis/skin-analysis-pro", parameters, PortraitSkinAnalysisProfessionalResponse.serializer())

    /** Calls [Detect Skin Disease API](https://www.ailabtools.com/docs). */
    public suspend fun portraitSkinDiseaseDetection(parameters: PortraitSkinDiseaseDetectionParams): PortraitSkinDiseaseDetectionResponse =
        requester.request("POST", "/api/portrait/analysis/skin-disease-detection", parameters, PortraitSkinDiseaseDetectionResponse.serializer())

    /** Calls [Try on Clothes API](https://www.ailabtools.com/docs/ai-portrait/editing/try-on-clothes/api). */
    public suspend fun portraitTryOnClothes(parameters: PortraitTryOnClothesParams): PortraitTryOnClothesResponse =
        requester.request("POST", "/api/portrait/editing/try-on-clothes", parameters, PortraitTryOnClothesResponse.serializer())

    /** Calls [Try on Clothes Pro API](https://www.ailabtools.com/docs/ai-portrait/editing/try-on-clothes-pro/api). */
    public suspend fun portraitTryOnClothesPro(parameters: PortraitTryOnClothesProParams): PortraitTryOnClothesProResponse =
        requester.request("POST", "/api/portrait/editing/try-on-clothes-pro", parameters, PortraitTryOnClothesProResponse.serializer())

    /** Calls [Face Blur API](https://www.ailabtools.com/docs/ai-portrait/effects/blurred-faces/api). */
    public suspend fun portraitFacialBlurring(parameters: PortraitFacialBlurringParams): PortraitFacialBlurringResponse =
        requester.request("POST", "/api/portrait/effects/blurred-faces", parameters, PortraitFacialBlurringResponse.serializer())

    /** Calls [Change Facial Expressions API](https://www.ailabtools.com/docs/ai-portrait/effects/emotion-editor/api). */
    public suspend fun portraitExpressionEditing(parameters: PortraitExpressionEditingParams): PortraitExpressionEditingResponse =
        requester.request("POST", "/api/portrait/effects/emotion-editor", parameters, PortraitExpressionEditingResponse.serializer())

    /** Calls [AI Face Enhancer API](https://www.ailabtools.com/docs/ai-portrait/effects/ai-face-enhancer/api). */
    public suspend fun portraitFaceRestorationEnhancement(parameters: PortraitFaceRestorationEnhancementParams): PortraitFaceRestorationEnhancementResponse =
        requester.request("POST", "/api/portrait/effects/enhance-face", parameters, PortraitFaceRestorationEnhancementResponse.serializer())

    /** Calls [Age & Gender Swap API](https://www.ailabtools.com/docs/ai-portrait/effects/face-attribute-editing/api). */
    public suspend fun portraitFaceAttributeEditing(parameters: PortraitFaceAttributeEditingParams): PortraitFaceAttributeEditingResponse =
        requester.request("POST", "/api/portrait/effects/face-attribute-editing", parameters, PortraitFaceAttributeEditingResponse.serializer())

    /** Calls [Face Beauty API](https://www.ailabtools.com/docs/ai-portrait/effects/face-beauty/api). */
    public suspend fun portraitFacialBeautification(parameters: PortraitFacialBeautificationParams): PortraitFacialBeautificationResponse =
        requester.request("POST", "/api/portrait/effects/face-beauty", parameters, PortraitFacialBeautificationResponse.serializer())

    /** Calls [Face Beauty Advanced API](https://www.ailabtools.com/docs/ai-portrait/effects/face-beauty-advanced/api). */
    public suspend fun portraitFacialBeautificationAdvanced(parameters: PortraitFacialBeautificationAdvancedParams): PortraitFacialBeautificationAdvancedResponse =
        requester.request("POST", "/api/portrait/effects/face-beauty-advanced", parameters, PortraitFacialBeautificationAdvancedResponse.serializer())

    /** Calls [Face Beauty Pro API](https://www.ailabtools.com/docs/ai-portrait/effects/face-beauty-pro/api). */
    public suspend fun portraitFacialBeautificationPro(parameters: PortraitFacialBeautificationProParams): PortraitFacialBeautificationProResponse =
        requester.request("POST", "/api/portrait/effects/face-beauty-pro", parameters, PortraitFacialBeautificationProResponse.serializer())

    /** Calls [Face Filters API](https://www.ailabtools.com/docs/ai-portrait/effects/face-filter/api). */
    public suspend fun portraitFacialFilters(parameters: PortraitFacialFiltersParams): PortraitFacialFiltersResponse =
        requester.request("POST", "/api/portrait/effects/face-filter", parameters, PortraitFacialFiltersResponse.serializer())

    /** Calls [Merge Portraits API](https://www.ailabtools.com/docs/ai-portrait/effects/face-fusion/api). */
    public suspend fun portraitFaceFusion(parameters: PortraitFaceFusionParams): PortraitFaceFusionResponse =
        requester.request("POST", "/api/portrait/effects/face-fusion", parameters, PortraitFaceFusionResponse.serializer())

    /** Calls [Hairstyle Changer API](https://www.ailabtools.com/docs). */
    public suspend fun portraitHairstyleEditing(parameters: PortraitHairstyleEditingParams): PortraitHairstyleEditingResponse =
        requester.request("POST", "/api/portrait/effects/hairstyle-editor", parameters, PortraitHairstyleEditingResponse.serializer())

    /** Calls [Hairstyle Changer Pro API](https://www.ailabtools.com/docs/ai-portrait/effects/hairstyle-editor-pro/api). */
    public suspend fun portraitHairstyleEditingPro(parameters: PortraitHairstyleEditingProParams): PortraitHairstyleEditingProResponse =
        requester.request("POST", "/api/portrait/effects/hairstyle-editor-pro", parameters, PortraitHairstyleEditingProResponse.serializer())

    /** Convenience alias for [portraitHairstyleEditingPro]. */
    public suspend fun changeHairstyle(parameters: PortraitHairstyleEditingProParams): PortraitHairstyleEditingProResponse = portraitHairstyleEditingPro(parameters)

    /** Calls [Lips Color Changer API](https://www.ailabtools.com/docs/ai-portrait/effects/lips-color-changer/api). */
    public suspend fun portraitLipsColorChanger(parameters: PortraitLipsColorChangerParams): PortraitLipsColorChangerResponse =
        requester.request("POST", "/api/portrait/effects/lips-color-changer", parameters, PortraitLipsColorChangerResponse.serializer())

    /** Calls [Live Photos API](https://www.ailabtools.com/docs). */
    public suspend fun portraitLivePhotos(parameters: PortraitLivePhotosParams): PortraitLivePhotosResponse =
        requester.request("POST", "/api/portrait/effects/live-photo", parameters, PortraitLivePhotosResponse.serializer())

    /** Calls [Cartoon Yourself API](https://www.ailabtools.com/docs/ai-portrait/effects/portrait-animation/api). */
    public suspend fun portraitCartoonYourself(parameters: PortraitCartoonYourselfParams): PortraitCartoonYourselfResponse =
        requester.request("POST", "/api/portrait/effects/portrait-animation", parameters, PortraitCartoonYourselfResponse.serializer())

    /** Calls [Smart Beauty API](https://www.ailabtools.com/docs/ai-portrait/effects/smart-beauty/api). */
    public suspend fun portraitIntelligentBeautification(parameters: PortraitIntelligentBeautificationParams): PortraitIntelligentBeautificationResponse =
        requester.request("POST", "/api/portrait/effects/smart-beauty", parameters, PortraitIntelligentBeautificationResponse.serializer())

    /** Convenience alias for [portraitIntelligentBeautification]. */
    public suspend fun retouch(parameters: PortraitIntelligentBeautificationParams): PortraitIntelligentBeautificationResponse = portraitIntelligentBeautification(parameters)

    /** Calls [AI Face Slimming API](https://www.ailabtools.com/docs/ai-portrait/effects/smart-face-slimming/api). */
    public suspend fun portraitIntelligentFaceSlimming(parameters: PortraitIntelligentFaceSlimmingParams): PortraitIntelligentFaceSlimmingResponse =
        requester.request("POST", "/api/portrait/effects/smart-face-slimming", parameters, PortraitIntelligentFaceSlimmingResponse.serializer())

    /** Calls [AI Skin Beauty API](https://www.ailabtools.com/docs/ai-portrait/effects/smart-skin/api). */
    public suspend fun portraitIntelligentSkinRetouching(parameters: PortraitIntelligentSkinRetouchingParams): PortraitIntelligentSkinRetouchingResponse =
        requester.request("POST", "/api/portrait/effects/smart-skin", parameters, PortraitIntelligentSkinRetouchingResponse.serializer())

    /** Calls [Try on Clothes Refiner API](https://www.ailabtools.com/docs/ai-portrait/enhance/try-on-clothes-refiner/api). */
    public suspend fun portraitTryOnClothesRefiner(parameters: PortraitTryOnClothesRefinerParams): PortraitTryOnClothesRefinerResponse =
        requester.request("POST", "/api/portrait/enhance/try-on-clothes-refiner", parameters, PortraitTryOnClothesRefinerResponse.serializer())

    /** Calls [AI Face Rating API](https://www.ailabtools.com/docs/ai-portrait/analysis/ai-face-rating/api). */
    public suspend fun portraitAIFaceRating(parameters: PortraitAIFaceRatingParams): PortraitAIFaceRatingResponse =
        requester.request("POST", "/api/portrait/analysis/ai-face-rating", parameters, PortraitAIFaceRatingResponse.serializer())

    /** Calls [AI Bald API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-bald/api). */
    public suspend fun portraitAIBald(parameters: PortraitAIBaldParams): PortraitAIBaldResponse =
        requester.request("POST", "/api/portrait/editing/ai-bald", parameters, PortraitAIBaldResponse.serializer())

    /** Calls [AI Beard Removal API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-beard-removal/api). */
    public suspend fun portraitAIBeardRemoval(parameters: PortraitAIBeardRemovalParams): PortraitAIBeardRemovalResponse =
        requester.request("POST", "/api/portrait/editing/ai-beard-removal", parameters, PortraitAIBeardRemovalResponse.serializer())

    /** Calls [AI Beard Styling API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-beard-styling/api). */
    public suspend fun portraitAIBeardStyling(parameters: PortraitAIBeardStylingParams): PortraitAIBeardStylingResponse =
        requester.request("POST", "/api/portrait/editing/ai-beard-styling", parameters, PortraitAIBeardStylingResponse.serializer())

    /** Calls [AI Breast Expansion API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-breast-expansion/api). */
    public suspend fun portraitAIBreastExpansion(parameters: PortraitAIBreastExpansionParams): PortraitAIBreastExpansionResponse =
        requester.request("POST", "/api/portrait/editing/ai-big-tits", parameters, PortraitAIBreastExpansionResponse.serializer())

    /** Calls [AI Butt Enhancement API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-butt-enhancement/api). */
    public suspend fun portraitAIButtEnhancement(parameters: PortraitAIButtEnhancementParams): PortraitAIButtEnhancementResponse =
        requester.request("POST", "/api/portrait/editing/ai-butt-enhancement", parameters, PortraitAIButtEnhancementResponse.serializer())

    /** Calls [AI Colored Contacts API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-colored-contacts/api). */
    public suspend fun portraitAIColoredContacts(parameters: PortraitAIColoredContactsParams): PortraitAIColoredContactsResponse =
        requester.request("POST", "/api/portrait/editing/ai-colored-contacts", parameters, PortraitAIColoredContactsResponse.serializer())

    /** Calls [AI Eyebrows API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-eyebrows/api). */
    public suspend fun portraitAIEyebrows(parameters: PortraitAIEyebrowsParams): PortraitAIEyebrowsResponse =
        requester.request("POST", "/api/portrait/editing/ai-eyebrows", parameters, PortraitAIEyebrowsResponse.serializer())

    /** Calls [AI Eyelashes API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-eyelashes/api). */
    public suspend fun portraitAIEyelashes(parameters: PortraitAIEyelashesParams): PortraitAIEyelashesResponse =
        requester.request("POST", "/api/portrait/editing/ai-eyelashes", parameters, PortraitAIEyelashesResponse.serializer())

    /** Calls [AI Eyeshadow Try-On API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-eyeshadow/api). */
    public suspend fun portraitAIEyeshadowTryOn(parameters: PortraitAIEyeshadowTryOnParams): PortraitAIEyeshadowTryOnResponse =
        requester.request("POST", "/api/portrait/editing/ai-eyeshadow", parameters, PortraitAIEyeshadowTryOnResponse.serializer())

    /** Calls [AI Face Swap API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-face-swap/api). */
    public suspend fun portraitAIFaceSwap(parameters: PortraitAIFaceSwapParams): PortraitAIFaceSwapResponse =
        requester.request("POST", "/api/portrait/editing/ai-face-swap", parameters, PortraitAIFaceSwapResponse.serializer())

    /** Calls [AI Fat Filter API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-fat-filter/api). */
    public suspend fun portraitAIFatFilter(parameters: PortraitAIFatFilterParams): PortraitAIFatFilterResponse =
        requester.request("POST", "/api/portrait/editing/ai-fat-filter", parameters, PortraitAIFatFilterResponse.serializer())

    /** Calls [AI Hair Color API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-hair-color/api). */
    public suspend fun portraitAIHairColor(parameters: PortraitAIHairColorParams): PortraitAIHairColorResponse =
        requester.request("POST", "/api/portrait/editing/ai-hair-color", parameters, PortraitAIHairColorResponse.serializer())

    /** Calls [AI Hair Loss Simulation API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-hair-loss-simulation/api). */
    public suspend fun portraitAIHairLossSimulation(parameters: PortraitAIHairLossSimulationParams): PortraitAIHairLossSimulationResponse =
        requester.request("POST", "/api/portrait/editing/ai-hair-loss-simulation", parameters, PortraitAIHairLossSimulationResponse.serializer())

    /** Calls [AI Lip Enhancement API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-lip-enhancement/api). */
    public suspend fun portraitAILipEnhancement(parameters: PortraitAILipEnhancementParams): PortraitAILipEnhancementResponse =
        requester.request("POST", "/api/portrait/editing/ai-lip-enhancement", parameters, PortraitAILipEnhancementResponse.serializer())

    /** Calls [AI Waist Slimming API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-waist-slimming/api). */
    public suspend fun portraitAIWaistSlimming(parameters: PortraitAIWaistSlimmingParams): PortraitAIWaistSlimmingResponse =
        requester.request("POST", "/api/portrait/editing/ai-waist-slimming", parameters, PortraitAIWaistSlimmingResponse.serializer())

    /** Calls [Try on Clothes Premium API](https://www.ailabtools.com/docs/ai-portrait/editing/try-on-clothes-premium/api). */
    public suspend fun portraitTryOnClothesPremium(parameters: PortraitTryOnClothesPremiumParams): PortraitTryOnClothesPremiumResponse =
        requester.request("POST", "/api/portrait/editing/try-on-clothes-premium", parameters, PortraitTryOnClothesPremiumResponse.serializer())

    /** Calls [AI Big Head Effect API](https://www.ailabtools.com/docs/ai-portrait/effects/ai-big-head-effect/api). */
    public suspend fun portraitAIBigHeadEffect(parameters: PortraitAIBigHeadEffectParams): PortraitAIBigHeadEffectResponse =
        requester.request("POST", "/api/portrait/effects/ai-big-head-effect", parameters, PortraitAIBigHeadEffectResponse.serializer())

    /** Calls [AI Halloween Mask API](https://www.ailabtools.com/docs/ai-portrait/effects/ai-halloween-mask/api). */
    public suspend fun portraitAIHalloweenMask(parameters: PortraitAIHalloweenMaskParams): PortraitAIHalloweenMaskResponse =
        requester.request("POST", "/api/portrait/effects/ai-halloween-mask", parameters, PortraitAIHalloweenMaskResponse.serializer())

    /** Calls [AI Lip Bite Expressions API](https://www.ailabtools.com/docs/ai-portrait/effects/ai-lip-bite-expressions/api). */
    public suspend fun portraitAILipBiteExpressions(parameters: PortraitAILipBiteExpressionsParams): PortraitAILipBiteExpressionsResponse =
        requester.request("POST", "/api/portrait/effects/ai-lip-bite-expressions", parameters, PortraitAILipBiteExpressionsResponse.serializer())

    /** Calls [AI Red Lip Gloss API](https://www.ailabtools.com/docs/ai-portrait/effects/ai-red-lip-gloss/api). */
    public suspend fun portraitAIRedLipGloss(parameters: PortraitAIRedLipGlossParams): PortraitAIRedLipGlossResponse =
        requester.request("POST", "/api/portrait/effects/ai-red-lip-gloss", parameters, PortraitAIRedLipGlossResponse.serializer())

    /** Calls [AI Square Face Filter API](https://www.ailabtools.com/docs/ai-portrait/effects/ai-square-face-filter/api). */
    public suspend fun portraitAISquareFaceFilter(parameters: PortraitAISquareFaceFilterParams): PortraitAISquareFaceFilterResponse =
        requester.request("POST", "/api/portrait/effects/ai-square-face-filter", parameters, PortraitAISquareFaceFilterResponse.serializer())

    /** Calls [Change Facial Expressions Advanced API](https://www.ailabtools.com/docs/ai-portrait/effects/emotion-editor-advanced/api). */
    public suspend fun portraitExpressionEditingAdvanced(parameters: PortraitExpressionEditingAdvancedParams): PortraitExpressionEditingAdvancedResponse =
        requester.request("POST", "/api/portrait/effects/emotion-editor-advanced", parameters, PortraitExpressionEditingAdvancedResponse.serializer())

    /** Calls [Hairstyle Changer Premium API](https://www.ailabtools.com/docs/ai-portrait/effects/hairstyle-editor-premium/api). */
    public suspend fun portraitHairstyleEditingPremium(parameters: PortraitHairstyleEditingPremiumParams): PortraitHairstyleEditingPremiumResponse =
        requester.request("POST", "/api/portrait/effects/hairstyle-editor-premium", parameters, PortraitHairstyleEditingPremiumResponse.serializer())

    /** Calls [AI Skin Enhancement Advanced API](https://www.ailabtools.com/docs/ai-portrait/effects/smart-skin-advanced/api). */
    public suspend fun portraitAISkinEnhancementAdvanced(parameters: PortraitAISkinEnhancementAdvancedParams): PortraitAISkinEnhancementAdvancedResponse =
        requester.request("POST", "/api/portrait/effects/smart-skin-advanced", parameters, PortraitAISkinEnhancementAdvancedResponse.serializer())

}
