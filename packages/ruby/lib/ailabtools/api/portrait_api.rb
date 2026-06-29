# frozen_string_literal: true

module AILabTools
  module API
    class PortraitAPI
      def initialize(requester)
        @requester = requester
      end

      def portrait_face_analyzer(params)
        @requester.request("POST", "/api/portrait/analysis/face-analyzer", params, AILabTools::Generated::Responses::PortraitFaceAnalyzerResponse)
      end

      def portrait_face_analyzer_advanced(params)
        @requester.request("POST", "/api/portrait/analysis/face-analyzer-advanced", params, AILabTools::Generated::Responses::PortraitFaceAnalyzerAdvancedResponse)
      end

      def portrait_facial_landmarks(params)
        @requester.request("POST", "/api/portrait/analysis/face-key-points", params, AILabTools::Generated::Responses::PortraitFacialLandmarksResponse)
      end

      def portrait_skin_analysis_basic(params)
        @requester.request("POST", "/api/portrait/analysis/skin-analysis", params, AILabTools::Generated::Responses::PortraitSkinAnalysisBasicResponse)
      end

      def portrait_skin_analysis_advanced(params)
        @requester.request("POST", "/api/portrait/analysis/skin-analysis-advanced", params, AILabTools::Generated::Responses::PortraitSkinAnalysisAdvancedResponse)
      end

      def portrait_skin_analysis_professional(params)
        @requester.request("POST", "/api/portrait/analysis/skin-analysis-pro", params, AILabTools::Generated::Responses::PortraitSkinAnalysisProfessionalResponse)
      end

      def portrait_skin_disease_detection(params)
        @requester.request("POST", "/api/portrait/analysis/skin-disease-detection", params, AILabTools::Generated::Responses::PortraitSkinDiseaseDetectionResponse)
      end

      def portrait_try_on_clothes(params)
        @requester.request("POST", "/api/portrait/editing/try-on-clothes", params, AILabTools::Generated::Responses::PortraitTryOnClothesResponse)
      end

      def portrait_try_on_clothes_pro(params)
        @requester.request("POST", "/api/portrait/editing/try-on-clothes-pro", params, AILabTools::Generated::Responses::PortraitTryOnClothesProResponse)
      end

      def portrait_facial_blurring(params)
        @requester.request("POST", "/api/portrait/effects/blurred-faces", params, AILabTools::Generated::Responses::PortraitFacialBlurringResponse)
      end

      def portrait_expression_editing(params)
        @requester.request("POST", "/api/portrait/effects/emotion-editor", params, AILabTools::Generated::Responses::PortraitExpressionEditingResponse)
      end

      def portrait_face_restoration_enhancement(params)
        @requester.request("POST", "/api/portrait/effects/enhance-face", params, AILabTools::Generated::Responses::PortraitFaceRestorationEnhancementResponse)
      end

      def portrait_face_attribute_editing(params)
        @requester.request("POST", "/api/portrait/effects/face-attribute-editing", params, AILabTools::Generated::Responses::PortraitFaceAttributeEditingResponse)
      end

      def portrait_facial_beautification(params)
        @requester.request("POST", "/api/portrait/effects/face-beauty", params, AILabTools::Generated::Responses::PortraitFacialBeautificationResponse)
      end

      def portrait_facial_beautification_advanced(params)
        @requester.request("POST", "/api/portrait/effects/face-beauty-advanced", params, AILabTools::Generated::Responses::PortraitFacialBeautificationAdvancedResponse)
      end

      def portrait_facial_beautification_pro(params)
        @requester.request("POST", "/api/portrait/effects/face-beauty-pro", params, AILabTools::Generated::Responses::PortraitFacialBeautificationProResponse)
      end

      def portrait_facial_filters(params)
        @requester.request("POST", "/api/portrait/effects/face-filter", params, AILabTools::Generated::Responses::PortraitFacialFiltersResponse)
      end

      def portrait_face_fusion(params)
        @requester.request("POST", "/api/portrait/effects/face-fusion", params, AILabTools::Generated::Responses::PortraitFaceFusionResponse)
      end

      def portrait_hairstyle_editing(params)
        @requester.request("POST", "/api/portrait/effects/hairstyle-editor", params, AILabTools::Generated::Responses::PortraitHairstyleEditingResponse)
      end

      def portrait_hairstyle_editing_pro(params)
        @requester.request("POST", "/api/portrait/effects/hairstyle-editor-pro", params, AILabTools::Generated::Responses::PortraitHairstyleEditingProResponse)
      end

      def change_hairstyle(params)
        portrait_hairstyle_editing_pro(params)
      end

      def portrait_lips_color_changer(params)
        @requester.request("POST", "/api/portrait/effects/lips-color-changer", params, AILabTools::Generated::Responses::PortraitLipsColorChangerResponse)
      end

      def portrait_live_photos(params)
        @requester.request("POST", "/api/portrait/effects/live-photo", params, AILabTools::Generated::Responses::PortraitLivePhotosResponse)
      end

      def portrait_cartoon_yourself(params)
        @requester.request("POST", "/api/portrait/effects/portrait-animation", params, AILabTools::Generated::Responses::PortraitCartoonYourselfResponse)
      end

      def portrait_intelligent_beautification(params)
        @requester.request("POST", "/api/portrait/effects/smart-beauty", params, AILabTools::Generated::Responses::PortraitIntelligentBeautificationResponse)
      end

      def retouch(params)
        portrait_intelligent_beautification(params)
      end

      def portrait_intelligent_face_slimming(params)
        @requester.request("POST", "/api/portrait/effects/smart-face-slimming", params, AILabTools::Generated::Responses::PortraitIntelligentFaceSlimmingResponse)
      end

      def portrait_intelligent_skin_retouching(params)
        @requester.request("POST", "/api/portrait/effects/smart-skin", params, AILabTools::Generated::Responses::PortraitIntelligentSkinRetouchingResponse)
      end

      def portrait_try_on_clothes_refiner(params)
        @requester.request("POST", "/api/portrait/enhance/try-on-clothes-refiner", params, AILabTools::Generated::Responses::PortraitTryOnClothesRefinerResponse)
      end

      def portrait_ai_face_rating(params)
        @requester.request("POST", "/api/portrait/analysis/ai-face-rating", params, AILabTools::Generated::Responses::PortraitAIFaceRatingResponse)
      end

      def portrait_ai_bald(params)
        @requester.request("POST", "/api/portrait/editing/ai-bald", params, AILabTools::Generated::Responses::PortraitAIBaldResponse)
      end

      def portrait_ai_beard_removal(params)
        @requester.request("POST", "/api/portrait/editing/ai-beard-removal", params, AILabTools::Generated::Responses::PortraitAIBeardRemovalResponse)
      end

      def portrait_ai_beard_styling(params)
        @requester.request("POST", "/api/portrait/editing/ai-beard-styling", params, AILabTools::Generated::Responses::PortraitAIBeardStylingResponse)
      end

      def portrait_ai_breast_expansion(params)
        @requester.request("POST", "/api/portrait/editing/ai-big-tits", params, AILabTools::Generated::Responses::PortraitAIBreastExpansionResponse)
      end

      def portrait_ai_butt_enhancement(params)
        @requester.request("POST", "/api/portrait/editing/ai-butt-enhancement", params, AILabTools::Generated::Responses::PortraitAIButtEnhancementResponse)
      end

      def portrait_ai_colored_contacts(params)
        @requester.request("POST", "/api/portrait/editing/ai-colored-contacts", params, AILabTools::Generated::Responses::PortraitAIColoredContactsResponse)
      end

      def portrait_ai_eyebrows(params)
        @requester.request("POST", "/api/portrait/editing/ai-eyebrows", params, AILabTools::Generated::Responses::PortraitAIEyebrowsResponse)
      end

      def portrait_ai_eyelashes(params)
        @requester.request("POST", "/api/portrait/editing/ai-eyelashes", params, AILabTools::Generated::Responses::PortraitAIEyelashesResponse)
      end

      def portrait_ai_eyeshadow_try_on(params)
        @requester.request("POST", "/api/portrait/editing/ai-eyeshadow", params, AILabTools::Generated::Responses::PortraitAIEyeshadowTryOnResponse)
      end

      def portrait_ai_face_swap(params)
        @requester.request("POST", "/api/portrait/editing/ai-face-swap", params, AILabTools::Generated::Responses::PortraitAIFaceSwapResponse)
      end

      def portrait_ai_fat_filter(params)
        @requester.request("POST", "/api/portrait/editing/ai-fat-filter", params, AILabTools::Generated::Responses::PortraitAIFatFilterResponse)
      end

      def portrait_ai_hair_color(params)
        @requester.request("POST", "/api/portrait/editing/ai-hair-color", params, AILabTools::Generated::Responses::PortraitAIHairColorResponse)
      end

      def portrait_ai_hair_loss_simulation(params)
        @requester.request("POST", "/api/portrait/editing/ai-hair-loss-simulation", params, AILabTools::Generated::Responses::PortraitAIHairLossSimulationResponse)
      end

      def portrait_ai_lip_enhancement(params)
        @requester.request("POST", "/api/portrait/editing/ai-lip-enhancement", params, AILabTools::Generated::Responses::PortraitAILipEnhancementResponse)
      end

      def portrait_ai_waist_slimming(params)
        @requester.request("POST", "/api/portrait/editing/ai-waist-slimming", params, AILabTools::Generated::Responses::PortraitAIWaistSlimmingResponse)
      end

      def portrait_try_on_clothes_premium(params)
        @requester.request("POST", "/api/portrait/editing/try-on-clothes-premium", params, AILabTools::Generated::Responses::PortraitTryOnClothesPremiumResponse)
      end

      def portrait_ai_big_head_effect(params)
        @requester.request("POST", "/api/portrait/effects/ai-big-head-effect", params, AILabTools::Generated::Responses::PortraitAIBigHeadEffectResponse)
      end

      def portrait_ai_halloween_mask(params)
        @requester.request("POST", "/api/portrait/effects/ai-halloween-mask", params, AILabTools::Generated::Responses::PortraitAIHalloweenMaskResponse)
      end

      def portrait_ai_lip_bite_expressions(params)
        @requester.request("POST", "/api/portrait/effects/ai-lip-bite-expressions", params, AILabTools::Generated::Responses::PortraitAILipBiteExpressionsResponse)
      end

      def portrait_ai_red_lip_gloss(params)
        @requester.request("POST", "/api/portrait/effects/ai-red-lip-gloss", params, AILabTools::Generated::Responses::PortraitAIRedLipGlossResponse)
      end

      def portrait_ai_square_face_filter(params)
        @requester.request("POST", "/api/portrait/effects/ai-square-face-filter", params, AILabTools::Generated::Responses::PortraitAISquareFaceFilterResponse)
      end

      def portrait_expression_editing_advanced(params)
        @requester.request("POST", "/api/portrait/effects/emotion-editor-advanced", params, AILabTools::Generated::Responses::PortraitExpressionEditingAdvancedResponse)
      end

      def portrait_hairstyle_editing_premium(params)
        @requester.request("POST", "/api/portrait/effects/hairstyle-editor-premium", params, AILabTools::Generated::Responses::PortraitHairstyleEditingPremiumResponse)
      end

      def portrait_ai_skin_enhancement_advanced(params)
        @requester.request("POST", "/api/portrait/effects/smart-skin-advanced", params, AILabTools::Generated::Responses::PortraitAISkinEnhancementAdvancedResponse)
      end

    end
  end
end
