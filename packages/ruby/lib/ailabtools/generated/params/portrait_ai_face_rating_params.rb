# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitAIFaceRatingParams < AILabTools::Params
        attr_reader :image, :aspect_ratio
        def initialize(image:, aspect_ratio: nil)
          @image = image
          @aspect_ratio = aspect_ratio
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "aspect_ratio" => @aspect_ratio,
          })
        end
      end
    end
  end
end
