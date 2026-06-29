# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageIntelligentCompositionParams < AILabTools::Params
        attr_reader :image, :num_boxes
        def initialize(image:, num_boxes: nil)
          @image = image
          @num_boxes = num_boxes
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "num_boxes" => @num_boxes,
          })
        end
      end
    end
  end
end
