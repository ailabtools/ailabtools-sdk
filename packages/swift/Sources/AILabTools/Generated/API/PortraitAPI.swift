// Generated from packages/spec.json. Do not edit manually.
import Foundation

public final class PortraitAPI {
    private let requester: Requester

    internal init(requester: Requester) {
        self.requester = requester
    }

    public func portraitFaceAnalyzer(
        _ parameters: PortraitFaceAnalyzerParams
    ) async throws -> PortraitFaceAnalyzerResponse {
        try await requester.request(method: "POST", path: "/api/portrait/analysis/face-analyzer", parameters: parameters, multipart: true)
    }

    public func portraitFaceAnalyzerAdvanced(
        _ parameters: PortraitFaceAnalyzerAdvancedParams
    ) async throws -> PortraitFaceAnalyzerAdvancedResponse {
        try await requester.request(method: "POST", path: "/api/portrait/analysis/face-analyzer-advanced", parameters: parameters, multipart: true)
    }

    public func portraitFacialLandmarks(
        _ parameters: PortraitFacialLandmarksParams
    ) async throws -> PortraitFacialLandmarksResponse {
        try await requester.request(method: "POST", path: "/api/portrait/analysis/face-key-points", parameters: parameters, multipart: true)
    }

    public func portraitSkinAnalysisBasic(
        _ parameters: PortraitSkinAnalysisBasicParams
    ) async throws -> PortraitSkinAnalysisBasicResponse {
        try await requester.request(method: "POST", path: "/api/portrait/analysis/skin-analysis", parameters: parameters, multipart: true)
    }

    public func portraitSkinAnalysisAdvanced(
        _ parameters: PortraitSkinAnalysisAdvancedParams
    ) async throws -> PortraitSkinAnalysisAdvancedResponse {
        try await requester.request(method: "POST", path: "/api/portrait/analysis/skin-analysis-advanced", parameters: parameters, multipart: true)
    }

    public func portraitSkinAnalysisProfessional(
        _ parameters: PortraitSkinAnalysisProfessionalParams
    ) async throws -> PortraitSkinAnalysisProfessionalResponse {
        try await requester.request(method: "POST", path: "/api/portrait/analysis/skin-analysis-pro", parameters: parameters, multipart: true)
    }

    public func portraitSkinDiseaseDetection(
        _ parameters: PortraitSkinDiseaseDetectionParams
    ) async throws -> PortraitSkinDiseaseDetectionResponse {
        try await requester.request(method: "POST", path: "/api/portrait/analysis/skin-disease-detection", parameters: parameters, multipart: true)
    }

    public func portraitTryOnClothes(
        _ parameters: PortraitTryOnClothesParams
    ) async throws -> PortraitTryOnClothesResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/try-on-clothes", parameters: parameters, multipart: true)
    }

    public func portraitTryOnClothesPro(
        _ parameters: PortraitTryOnClothesProParams
    ) async throws -> PortraitTryOnClothesProResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/try-on-clothes-pro", parameters: parameters, multipart: true)
    }

    public func portraitFacialBlurring(
        _ parameters: PortraitFacialBlurringParams
    ) async throws -> PortraitFacialBlurringResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/blurred-faces", parameters: parameters, multipart: true)
    }

    public func portraitExpressionEditing(
        _ parameters: PortraitExpressionEditingParams
    ) async throws -> PortraitExpressionEditingResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/emotion-editor", parameters: parameters, multipart: true)
    }

    public func portraitFaceRestorationEnhancement(
        _ parameters: PortraitFaceRestorationEnhancementParams
    ) async throws -> PortraitFaceRestorationEnhancementResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/enhance-face", parameters: parameters, multipart: true)
    }

    public func portraitFaceAttributeEditing(
        _ parameters: PortraitFaceAttributeEditingParams
    ) async throws -> PortraitFaceAttributeEditingResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/face-attribute-editing", parameters: parameters, multipart: true)
    }

    public func portraitFacialBeautification(
        _ parameters: PortraitFacialBeautificationParams
    ) async throws -> PortraitFacialBeautificationResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/face-beauty", parameters: parameters, multipart: true)
    }

    public func portraitFacialBeautificationAdvanced(
        _ parameters: PortraitFacialBeautificationAdvancedParams
    ) async throws -> PortraitFacialBeautificationAdvancedResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/face-beauty-advanced", parameters: parameters, multipart: true)
    }

    public func portraitFacialBeautificationPro(
        _ parameters: PortraitFacialBeautificationProParams
    ) async throws -> PortraitFacialBeautificationProResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/face-beauty-pro", parameters: parameters, multipart: true)
    }

    public func portraitFacialFilters(
        _ parameters: PortraitFacialFiltersParams
    ) async throws -> PortraitFacialFiltersResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/face-filter", parameters: parameters, multipart: true)
    }

    public func portraitFaceFusion(
        _ parameters: PortraitFaceFusionParams
    ) async throws -> PortraitFaceFusionResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/face-fusion", parameters: parameters, multipart: true)
    }

    public func portraitHairstyleEditing(
        _ parameters: PortraitHairstyleEditingParams
    ) async throws -> PortraitHairstyleEditingResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/hairstyle-editor", parameters: parameters, multipart: true)
    }

    public func portraitHairstyleEditingPro(
        _ parameters: PortraitHairstyleEditingProParams
    ) async throws -> PortraitHairstyleEditingProResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/hairstyle-editor-pro", parameters: parameters, multipart: true)
    }

    public func changeHairstyle(
        _ parameters: PortraitHairstyleEditingProParams
    ) async throws -> PortraitHairstyleEditingProResponse {
        try await portraitHairstyleEditingPro(parameters)
    }

    public func portraitLipsColorChanger(
        _ parameters: PortraitLipsColorChangerParams
    ) async throws -> PortraitLipsColorChangerResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/lips-color-changer", parameters: parameters, multipart: true)
    }

    public func portraitLivePhotos(
        _ parameters: PortraitLivePhotosParams
    ) async throws -> PortraitLivePhotosResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/live-photo", parameters: parameters, multipart: true)
    }

    public func portraitCartoonYourself(
        _ parameters: PortraitCartoonYourselfParams
    ) async throws -> PortraitCartoonYourselfResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/portrait-animation", parameters: parameters, multipart: true)
    }

    public func portraitIntelligentBeautification(
        _ parameters: PortraitIntelligentBeautificationParams
    ) async throws -> PortraitIntelligentBeautificationResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/smart-beauty", parameters: parameters, multipart: true)
    }

    public func retouch(
        _ parameters: PortraitIntelligentBeautificationParams
    ) async throws -> PortraitIntelligentBeautificationResponse {
        try await portraitIntelligentBeautification(parameters)
    }

    public func portraitIntelligentFaceSlimming(
        _ parameters: PortraitIntelligentFaceSlimmingParams
    ) async throws -> PortraitIntelligentFaceSlimmingResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/smart-face-slimming", parameters: parameters, multipart: true)
    }

    public func portraitIntelligentSkinRetouching(
        _ parameters: PortraitIntelligentSkinRetouchingParams
    ) async throws -> PortraitIntelligentSkinRetouchingResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/smart-skin", parameters: parameters, multipart: true)
    }

    public func portraitTryOnClothesRefiner(
        _ parameters: PortraitTryOnClothesRefinerParams
    ) async throws -> PortraitTryOnClothesRefinerResponse {
        try await requester.request(method: "POST", path: "/api/portrait/enhance/try-on-clothes-refiner", parameters: parameters, multipart: true)
    }

    public func portraitAIFaceRating(
        _ parameters: PortraitAIFaceRatingParams
    ) async throws -> PortraitAIFaceRatingResponse {
        try await requester.request(method: "POST", path: "/api/portrait/analysis/ai-face-rating", parameters: parameters, multipart: true)
    }

    public func portraitAIBald(
        _ parameters: PortraitAIBaldParams
    ) async throws -> PortraitAIBaldResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-bald", parameters: parameters, multipart: true)
    }

    public func portraitAIBeardRemoval(
        _ parameters: PortraitAIBeardRemovalParams
    ) async throws -> PortraitAIBeardRemovalResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-beard-removal", parameters: parameters, multipart: true)
    }

    public func portraitAIBeardStyling(
        _ parameters: PortraitAIBeardStylingParams
    ) async throws -> PortraitAIBeardStylingResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-beard-styling", parameters: parameters, multipart: true)
    }

    public func portraitAIBreastExpansion(
        _ parameters: PortraitAIBreastExpansionParams
    ) async throws -> PortraitAIBreastExpansionResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-big-tits", parameters: parameters, multipart: true)
    }

    public func portraitAIButtEnhancement(
        _ parameters: PortraitAIButtEnhancementParams
    ) async throws -> PortraitAIButtEnhancementResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-butt-enhancement", parameters: parameters, multipart: true)
    }

    public func portraitAIColoredContacts(
        _ parameters: PortraitAIColoredContactsParams
    ) async throws -> PortraitAIColoredContactsResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-colored-contacts", parameters: parameters, multipart: true)
    }

    public func portraitAIEyebrows(
        _ parameters: PortraitAIEyebrowsParams
    ) async throws -> PortraitAIEyebrowsResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-eyebrows", parameters: parameters, multipart: true)
    }

    public func portraitAIEyelashes(
        _ parameters: PortraitAIEyelashesParams
    ) async throws -> PortraitAIEyelashesResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-eyelashes", parameters: parameters, multipart: true)
    }

    public func portraitAIEyeshadowTryOn(
        _ parameters: PortraitAIEyeshadowTryOnParams
    ) async throws -> PortraitAIEyeshadowTryOnResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-eyeshadow", parameters: parameters, multipart: true)
    }

    public func portraitAIFaceSwap(
        _ parameters: PortraitAIFaceSwapParams
    ) async throws -> PortraitAIFaceSwapResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-face-swap", parameters: parameters, multipart: true)
    }

    public func portraitAIFatFilter(
        _ parameters: PortraitAIFatFilterParams
    ) async throws -> PortraitAIFatFilterResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-fat-filter", parameters: parameters, multipart: true)
    }

    public func portraitAIHairColor(
        _ parameters: PortraitAIHairColorParams
    ) async throws -> PortraitAIHairColorResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-hair-color", parameters: parameters, multipart: true)
    }

    public func portraitAIHairLossSimulation(
        _ parameters: PortraitAIHairLossSimulationParams
    ) async throws -> PortraitAIHairLossSimulationResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-hair-loss-simulation", parameters: parameters, multipart: true)
    }

    public func portraitAILipEnhancement(
        _ parameters: PortraitAILipEnhancementParams
    ) async throws -> PortraitAILipEnhancementResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-lip-enhancement", parameters: parameters, multipart: true)
    }

    public func portraitAIWaistSlimming(
        _ parameters: PortraitAIWaistSlimmingParams
    ) async throws -> PortraitAIWaistSlimmingResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/ai-waist-slimming", parameters: parameters, multipart: true)
    }

    public func portraitTryOnClothesPremium(
        _ parameters: PortraitTryOnClothesPremiumParams
    ) async throws -> PortraitTryOnClothesPremiumResponse {
        try await requester.request(method: "POST", path: "/api/portrait/editing/try-on-clothes-premium", parameters: parameters, multipart: true)
    }

    public func portraitAIBigHeadEffect(
        _ parameters: PortraitAIBigHeadEffectParams
    ) async throws -> PortraitAIBigHeadEffectResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/ai-big-head-effect", parameters: parameters, multipart: true)
    }

    public func portraitAIHalloweenMask(
        _ parameters: PortraitAIHalloweenMaskParams
    ) async throws -> PortraitAIHalloweenMaskResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/ai-halloween-mask", parameters: parameters, multipart: true)
    }

    public func portraitAILipBiteExpressions(
        _ parameters: PortraitAILipBiteExpressionsParams
    ) async throws -> PortraitAILipBiteExpressionsResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/ai-lip-bite-expressions", parameters: parameters, multipart: true)
    }

    public func portraitAIRedLipGloss(
        _ parameters: PortraitAIRedLipGlossParams
    ) async throws -> PortraitAIRedLipGlossResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/ai-red-lip-gloss", parameters: parameters, multipart: true)
    }

    public func portraitAISquareFaceFilter(
        _ parameters: PortraitAISquareFaceFilterParams
    ) async throws -> PortraitAISquareFaceFilterResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/ai-square-face-filter", parameters: parameters, multipart: true)
    }

    public func portraitExpressionEditingAdvanced(
        _ parameters: PortraitExpressionEditingAdvancedParams
    ) async throws -> PortraitExpressionEditingAdvancedResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/emotion-editor-advanced", parameters: parameters, multipart: true)
    }

    public func portraitHairstyleEditingPremium(
        _ parameters: PortraitHairstyleEditingPremiumParams
    ) async throws -> PortraitHairstyleEditingPremiumResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/hairstyle-editor-premium", parameters: parameters, multipart: true)
    }

    public func portraitAISkinEnhancementAdvanced(
        _ parameters: PortraitAISkinEnhancementAdvancedParams
    ) async throws -> PortraitAISkinEnhancementAdvancedResponse {
        try await requester.request(method: "POST", path: "/api/portrait/effects/smart-skin-advanced", parameters: parameters, multipart: true)
    }

}
