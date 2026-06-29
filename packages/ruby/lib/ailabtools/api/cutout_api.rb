# frozen_string_literal: true

module AILabTools
  module API
    class CutoutAPI
      def initialize(requester)
        @requester = requester
      end

      def cutout_clothing_background_removal(params)
        @requester.request("POST", "/api/cutout/general/apparel-background-removal", params, AILabTools::Generated::Responses::CutoutClothingBackgroundRemovalResponse)
      end

      def cutout_product_background_removal(params)
        @requester.request("POST", "/api/cutout/general/commodity-background-removal", params, AILabTools::Generated::Responses::CutoutProductBackgroundRemovalResponse)
      end

      def cutout_food_background_removal(params)
        @requester.request("POST", "/api/cutout/general/food-background-removal", params, AILabTools::Generated::Responses::CutoutFoodBackgroundRemovalResponse)
      end

      def cutout_universal_background_removal(params)
        @requester.request("POST", "/api/cutout/general/universal-background-removal", params, AILabTools::Generated::Responses::CutoutUniversalBackgroundRemovalResponse)
      end

      def cutout_avatar_extraction(params)
        @requester.request("POST", "/api/cutout/portrait/avatar-extraction", params, AILabTools::Generated::Responses::CutoutAvatarExtractionResponse)
      end

      def cutout_hair_extraction(params)
        @requester.request("POST", "/api/cutout/portrait/hairstyle-extraction", params, AILabTools::Generated::Responses::CutoutHairExtractionResponse)
      end

      def cutout_human_background_removal(params)
        @requester.request("POST", "/api/cutout/portrait/portrait-background-removal", params, AILabTools::Generated::Responses::CutoutHumanBackgroundRemovalResponse)
      end

      def cutout_hd_universal_background_removal(params)
        @requester.request("POST", "/api/cutout/general/hd-universal-background-removal", params, AILabTools::Generated::Responses::CutoutHDUniversalBackgroundRemovalResponse)
      end

      def cutout_hd_human_body_background_removal(params)
        @requester.request("POST", "/api/cutout/portrait/hd-portrait-background-removal", params, AILabTools::Generated::Responses::CutoutHdHumanBodyBackgroundRemovalResponse)
      end

    end
  end
end
