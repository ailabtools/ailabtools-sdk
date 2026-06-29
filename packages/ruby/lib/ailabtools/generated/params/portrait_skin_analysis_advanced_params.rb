# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitSkinAnalysisAdvancedParams < AILabTools::Params
        attr_reader :image, :face_quality_control, :return_rect_confidence, :return_maps
        def initialize(image:, face_quality_control: nil, return_rect_confidence: nil, return_maps: nil)
          @image = image
          @face_quality_control = face_quality_control
          @return_rect_confidence = return_rect_confidence
          @return_maps = return_maps
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "face_quality_control" => @face_quality_control,
            "return_rect_confidence" => @return_rect_confidence,
            "return_maps" => @return_maps,
          })
        end
      end
    end
  end
end
