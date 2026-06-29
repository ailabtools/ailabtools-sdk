# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitAILipBiteExpressionsParams < AILabTools::Params
        attr_reader :image, :grid_count, :aspect_ratio
        def initialize(image:, grid_count: nil, aspect_ratio: nil)
          @image = image
          @grid_count = grid_count
          @aspect_ratio = aspect_ratio
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "grid_count" => @grid_count,
            "aspect_ratio" => @aspect_ratio,
          })
        end
      end
    end
  end
end
