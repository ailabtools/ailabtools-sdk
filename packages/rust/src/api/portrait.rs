use crate::generated::params::*;
use crate::generated::responses::*;
use crate::requester::Requester;
use crate::Result;
use reqwest::Method;

#[derive(Clone)]
pub struct PortraitApi { requester: Requester }
impl PortraitApi {
    pub(crate) fn new(requester: Requester) -> Self { Self { requester } }
    pub async fn portrait_face_analyzer(&self, params: PortraitFaceAnalyzerParams) -> Result<PortraitFaceAnalyzerResponse> {
        self.requester.request(Method::POST, "/api/portrait/analysis/face-analyzer", params).await
    }
    pub async fn portrait_face_analyzer_advanced(&self, params: PortraitFaceAnalyzerAdvancedParams) -> Result<PortraitFaceAnalyzerAdvancedResponse> {
        self.requester.request(Method::POST, "/api/portrait/analysis/face-analyzer-advanced", params).await
    }
    pub async fn portrait_facial_landmarks(&self, params: PortraitFacialLandmarksParams) -> Result<PortraitFacialLandmarksResponse> {
        self.requester.request(Method::POST, "/api/portrait/analysis/face-key-points", params).await
    }
    pub async fn portrait_skin_analysis_basic(&self, params: PortraitSkinAnalysisBasicParams) -> Result<PortraitSkinAnalysisBasicResponse> {
        self.requester.request(Method::POST, "/api/portrait/analysis/skin-analysis", params).await
    }
    pub async fn portrait_skin_analysis_advanced(&self, params: PortraitSkinAnalysisAdvancedParams) -> Result<PortraitSkinAnalysisAdvancedResponse> {
        self.requester.request(Method::POST, "/api/portrait/analysis/skin-analysis-advanced", params).await
    }
    pub async fn portrait_skin_analysis_professional(&self, params: PortraitSkinAnalysisProfessionalParams) -> Result<PortraitSkinAnalysisProfessionalResponse> {
        self.requester.request(Method::POST, "/api/portrait/analysis/skin-analysis-pro", params).await
    }
    pub async fn portrait_skin_disease_detection(&self, params: PortraitSkinDiseaseDetectionParams) -> Result<PortraitSkinDiseaseDetectionResponse> {
        self.requester.request(Method::POST, "/api/portrait/analysis/skin-disease-detection", params).await
    }
    pub async fn portrait_try_on_clothes(&self, params: PortraitTryOnClothesParams) -> Result<PortraitTryOnClothesResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/try-on-clothes", params).await
    }
    pub async fn portrait_try_on_clothes_pro(&self, params: PortraitTryOnClothesProParams) -> Result<PortraitTryOnClothesProResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/try-on-clothes-pro", params).await
    }
    pub async fn portrait_facial_blurring(&self, params: PortraitFacialBlurringParams) -> Result<PortraitFacialBlurringResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/blurred-faces", params).await
    }
    pub async fn portrait_expression_editing(&self, params: PortraitExpressionEditingParams) -> Result<PortraitExpressionEditingResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/emotion-editor", params).await
    }
    pub async fn portrait_face_restoration_enhancement(&self, params: PortraitFaceRestorationEnhancementParams) -> Result<PortraitFaceRestorationEnhancementResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/enhance-face", params).await
    }
    pub async fn portrait_face_attribute_editing(&self, params: PortraitFaceAttributeEditingParams) -> Result<PortraitFaceAttributeEditingResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/face-attribute-editing", params).await
    }
    pub async fn portrait_facial_beautification(&self, params: PortraitFacialBeautificationParams) -> Result<PortraitFacialBeautificationResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/face-beauty", params).await
    }
    pub async fn portrait_facial_beautification_advanced(&self, params: PortraitFacialBeautificationAdvancedParams) -> Result<PortraitFacialBeautificationAdvancedResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/face-beauty-advanced", params).await
    }
    pub async fn portrait_facial_beautification_pro(&self, params: PortraitFacialBeautificationProParams) -> Result<PortraitFacialBeautificationProResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/face-beauty-pro", params).await
    }
    pub async fn portrait_facial_filters(&self, params: PortraitFacialFiltersParams) -> Result<PortraitFacialFiltersResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/face-filter", params).await
    }
    pub async fn portrait_face_fusion(&self, params: PortraitFaceFusionParams) -> Result<PortraitFaceFusionResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/face-fusion", params).await
    }
    pub async fn portrait_hairstyle_editing(&self, params: PortraitHairstyleEditingParams) -> Result<PortraitHairstyleEditingResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/hairstyle-editor", params).await
    }
    pub async fn portrait_hairstyle_editing_pro(&self, params: PortraitHairstyleEditingProParams) -> Result<PortraitHairstyleEditingProResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/hairstyle-editor-pro", params).await
    }
    pub async fn portrait_lips_color_changer(&self, params: PortraitLipsColorChangerParams) -> Result<PortraitLipsColorChangerResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/lips-color-changer", params).await
    }
    pub async fn portrait_live_photos(&self, params: PortraitLivePhotosParams) -> Result<PortraitLivePhotosResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/live-photo", params).await
    }
    pub async fn portrait_cartoon_yourself(&self, params: PortraitCartoonYourselfParams) -> Result<PortraitCartoonYourselfResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/portrait-animation", params).await
    }
    pub async fn portrait_intelligent_beautification(&self, params: PortraitIntelligentBeautificationParams) -> Result<PortraitIntelligentBeautificationResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/smart-beauty", params).await
    }
    pub async fn portrait_intelligent_face_slimming(&self, params: PortraitIntelligentFaceSlimmingParams) -> Result<PortraitIntelligentFaceSlimmingResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/smart-face-slimming", params).await
    }
    pub async fn portrait_intelligent_skin_retouching(&self, params: PortraitIntelligentSkinRetouchingParams) -> Result<PortraitIntelligentSkinRetouchingResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/smart-skin", params).await
    }
    pub async fn portrait_try_on_clothes_refiner(&self, params: PortraitTryOnClothesRefinerParams) -> Result<PortraitTryOnClothesRefinerResponse> {
        self.requester.request(Method::POST, "/api/portrait/enhance/try-on-clothes-refiner", params).await
    }
    pub async fn portrait_ai_face_rating(&self, params: PortraitAIFaceRatingParams) -> Result<PortraitAIFaceRatingResponse> {
        self.requester.request(Method::POST, "/api/portrait/analysis/ai-face-rating", params).await
    }
    pub async fn portrait_ai_bald(&self, params: PortraitAIBaldParams) -> Result<PortraitAIBaldResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-bald", params).await
    }
    pub async fn portrait_ai_beard_removal(&self, params: PortraitAIBeardRemovalParams) -> Result<PortraitAIBeardRemovalResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-beard-removal", params).await
    }
    pub async fn portrait_ai_beard_styling(&self, params: PortraitAIBeardStylingParams) -> Result<PortraitAIBeardStylingResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-beard-styling", params).await
    }
    pub async fn portrait_ai_breast_expansion(&self, params: PortraitAIBreastExpansionParams) -> Result<PortraitAIBreastExpansionResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-big-tits", params).await
    }
    pub async fn portrait_ai_butt_enhancement(&self, params: PortraitAIButtEnhancementParams) -> Result<PortraitAIButtEnhancementResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-butt-enhancement", params).await
    }
    pub async fn portrait_ai_colored_contacts(&self, params: PortraitAIColoredContactsParams) -> Result<PortraitAIColoredContactsResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-colored-contacts", params).await
    }
    pub async fn portrait_ai_eyebrows(&self, params: PortraitAIEyebrowsParams) -> Result<PortraitAIEyebrowsResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-eyebrows", params).await
    }
    pub async fn portrait_ai_eyelashes(&self, params: PortraitAIEyelashesParams) -> Result<PortraitAIEyelashesResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-eyelashes", params).await
    }
    pub async fn portrait_ai_eyeshadow_try_on(&self, params: PortraitAIEyeshadowTryOnParams) -> Result<PortraitAIEyeshadowTryOnResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-eyeshadow", params).await
    }
    pub async fn portrait_ai_face_swap(&self, params: PortraitAIFaceSwapParams) -> Result<PortraitAIFaceSwapResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-face-swap", params).await
    }
    pub async fn portrait_ai_fat_filter(&self, params: PortraitAIFatFilterParams) -> Result<PortraitAIFatFilterResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-fat-filter", params).await
    }
    pub async fn portrait_ai_hair_color(&self, params: PortraitAIHairColorParams) -> Result<PortraitAIHairColorResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-hair-color", params).await
    }
    pub async fn portrait_ai_hair_loss_simulation(&self, params: PortraitAIHairLossSimulationParams) -> Result<PortraitAIHairLossSimulationResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-hair-loss-simulation", params).await
    }
    pub async fn portrait_ai_lip_enhancement(&self, params: PortraitAILipEnhancementParams) -> Result<PortraitAILipEnhancementResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-lip-enhancement", params).await
    }
    pub async fn portrait_ai_waist_slimming(&self, params: PortraitAIWaistSlimmingParams) -> Result<PortraitAIWaistSlimmingResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/ai-waist-slimming", params).await
    }
    pub async fn portrait_try_on_clothes_premium(&self, params: PortraitTryOnClothesPremiumParams) -> Result<PortraitTryOnClothesPremiumResponse> {
        self.requester.request(Method::POST, "/api/portrait/editing/try-on-clothes-premium", params).await
    }
    pub async fn portrait_ai_big_head_effect(&self, params: PortraitAIBigHeadEffectParams) -> Result<PortraitAIBigHeadEffectResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/ai-big-head-effect", params).await
    }
    pub async fn portrait_ai_halloween_mask(&self, params: PortraitAIHalloweenMaskParams) -> Result<PortraitAIHalloweenMaskResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/ai-halloween-mask", params).await
    }
    pub async fn portrait_ai_lip_bite_expressions(&self, params: PortraitAILipBiteExpressionsParams) -> Result<PortraitAILipBiteExpressionsResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/ai-lip-bite-expressions", params).await
    }
    pub async fn portrait_ai_red_lip_gloss(&self, params: PortraitAIRedLipGlossParams) -> Result<PortraitAIRedLipGlossResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/ai-red-lip-gloss", params).await
    }
    pub async fn portrait_ai_square_face_filter(&self, params: PortraitAISquareFaceFilterParams) -> Result<PortraitAISquareFaceFilterResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/ai-square-face-filter", params).await
    }
    pub async fn portrait_expression_editing_advanced(&self, params: PortraitExpressionEditingAdvancedParams) -> Result<PortraitExpressionEditingAdvancedResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/emotion-editor-advanced", params).await
    }
    pub async fn portrait_hairstyle_editing_premium(&self, params: PortraitHairstyleEditingPremiumParams) -> Result<PortraitHairstyleEditingPremiumResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/hairstyle-editor-premium", params).await
    }
    pub async fn portrait_ai_skin_enhancement_advanced(&self, params: PortraitAISkinEnhancementAdvancedParams) -> Result<PortraitAISkinEnhancementAdvancedResponse> {
        self.requester.request(Method::POST, "/api/portrait/effects/smart-skin-advanced", params).await
    }
    pub async fn change_hairstyle(&self, params: PortraitHairstyleEditingProParams) -> Result<PortraitHairstyleEditingProResponse> { self.portrait_hairstyle_editing_pro(params).await }
    pub async fn retouch(&self, params: PortraitIntelligentBeautificationParams) -> Result<PortraitIntelligentBeautificationResponse> { self.portrait_intelligent_beautification(params).await }
}
