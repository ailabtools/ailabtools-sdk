# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageAIImageCroppingParams < AILabTools::Params
        attr_reader :image, :width, :height
        def initialize(image:, width:, height:)
          @image = image
          @width = width
          @height = height
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "width" => @width,
            "height" => @height,
          })
        end
      end
    end
  end
end
