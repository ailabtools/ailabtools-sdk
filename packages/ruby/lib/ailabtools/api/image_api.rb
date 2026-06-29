# frozen_string_literal: true

module AILabTools
  module API
    class ImageAPI
      def initialize(requester)
        @requester = requester
      end

      def image_querying_async_task_results(params)
        @requester.request("GET", "/api/image/asyn-task-results", params, AILabTools::Generated::Responses::ImageQueryingAsyncTaskResultsResponse)
      end

      def image_ai_image_extender(params)
        @requester.request("POST", "/api/image/editing/ai-image-extender", params, AILabTools::Generated::Responses::ImageAiImageExtenderResponse)
      end

      def image_ai_object_replacer(params)
        @requester.request("POST", "/api/image/editing/ai-object-replacer", params, AILabTools::Generated::Responses::ImageAiObjectReplacerResponse)
      end

      def image_ai_image_cropping(params)
        @requester.request("POST", "/api/image/editing/image-cropping", params, AILabTools::Generated::Responses::ImageAIImageCroppingResponse)
      end

      def image_erasure(params)
        @requester.request("POST", "/api/image/editing/image-erase", params, AILabTools::Generated::Responses::ImageErasureResponse)
      end

      def image_invisible_image_watermark(params)
        @requester.request("POST", "/api/image/editing/image-invisible-image-watermark", params, AILabTools::Generated::Responses::ImageInvisibleImageWatermarkResponse)
      end

      def image_invisible_text_watermark(params)
        @requester.request("POST", "/api/image/editing/image-invisible-text-watermarking", params, AILabTools::Generated::Responses::ImageInvisibleTextWatermarkResponse)
      end

      def image_intelligent_composition(params)
        @requester.request("POST", "/api/image/editing/intelligent-composition", params, AILabTools::Generated::Responses::ImageIntelligentCompositionResponse)
      end

      def image_photo_editing(params)
        @requester.request("POST", "/api/image/editing/photo-retouching", params, AILabTools::Generated::Responses::ImagePhotoEditingResponse)
      end

      def image_remove_objects(params)
        @requester.request("POST", "/api/image/editing/remove-objects", params, AILabTools::Generated::Responses::ImageRemoveObjectsResponse)
      end

      def remove_objects(params)
        image_remove_objects(params)
      end

      def image_remove_objects_advanced(params)
        @requester.request("POST", "/api/image/editing/remove-objects-advanced", params, AILabTools::Generated::Responses::ImageRemoveObjectsAdvancedResponse)
      end

      def image_remove_objects_pro(params)
        @requester.request("POST", "/api/image/editing/remove-objects-pro", params, AILabTools::Generated::Responses::ImageRemoveObjectsProResponse)
      end

      def image_ai_cartoon_generator(params)
        @requester.request("POST", "/api/image/effects/ai-anime-generator", params, AILabTools::Generated::Responses::ImageAICartoonGeneratorResponse)
      end

      def image_coloring(params)
        @requester.request("POST", "/api/image/effects/image-colorization", params, AILabTools::Generated::Responses::ImageColoringResponse)
      end

      def image_style_transfer(params)
        @requester.request("POST", "/api/image/effects/image-style-conversion", params, AILabTools::Generated::Responses::ImageStyleTransferResponse)
      end

      def image_style_migration(params)
        @requester.request("POST", "/api/image/effects/image-style-migration", params, AILabTools::Generated::Responses::ImageStyleMigrationResponse)
      end

      def image_color_enhancement(params)
        @requester.request("POST", "/api/image/enhance/image-color-enhancement", params, AILabTools::Generated::Responses::ImageColorEnhancementResponse)
      end

      def image_contrast_enhancement(params)
        @requester.request("POST", "/api/image/enhance/image-contrast-enhancement", params, AILabTools::Generated::Responses::ImageContrastEnhancementResponse)
      end

      def image_dehaze(params)
        @requester.request("POST", "/api/image/enhance/image-defogging", params, AILabTools::Generated::Responses::ImageDehazeResponse)
      end

      def image_lossless_enlargement(params)
        @requester.request("POST", "/api/image/enhance/image-lossless-enlargement", params, AILabTools::Generated::Responses::ImageLosslessEnlargementResponse)
      end

      def upscale(params)
        image_lossless_enlargement(params)
      end

      def image_clarity_enhancement(params)
        @requester.request("POST", "/api/image/enhance/image-sharpness-enhancement", params, AILabTools::Generated::Responses::ImageClarityEnhancementResponse)
      end

      def image_distortion_correction(params)
        @requester.request("POST", "/api/image/enhance/stretch-image-recovery", params, AILabTools::Generated::Responses::ImageDistortionCorrectionResponse)
      end

      def image_composition_aesthetics_score(params)
        @requester.request("POST", "/api/image/rating/image-composition-aesthetics-scoring", params, AILabTools::Generated::Responses::ImageCompositionAestheticsScoreResponse)
      end

      def image_exposure_rating(params)
        @requester.request("POST", "/api/image/rating/image-exposure-score", params, AILabTools::Generated::Responses::ImageExposureRatingResponse)
      end

      def image_ai_nail_art(params)
        @requester.request("POST", "/api/image/editing/ai-nail-art", params, AILabTools::Generated::Responses::ImageAINailArtResponse)
      end

      def image_ai_nail_art_pro(params)
        @requester.request("POST", "/api/image/editing/ai-nail-art-pro", params, AILabTools::Generated::Responses::ImageAINailArtProResponse)
      end

      def image_ai_photography(params)
        @requester.request("POST", "/api/image/effects/ai-photography", params, AILabTools::Generated::Responses::ImageAIPhotographyResponse)
      end

      def image_ai_emoji_generator(params)
        @requester.request("POST", "/api/image/effects/photo-to-emoji-grid", params, AILabTools::Generated::Responses::ImageAIEmojiGeneratorResponse)
      end

      def image_photo_to_coloring_page(params)
        @requester.request("POST", "/api/image/effects/photo-to-line-art", params, AILabTools::Generated::Responses::ImagePhotoToColoringPageResponse)
      end

      def image_ai_flower_wallpaper(params)
        @requester.request("POST", "/api/image/generation/ai-flower-wallpaper", params, AILabTools::Generated::Responses::ImageAIFlowerWallpaperResponse)
      end

    end
  end
end
