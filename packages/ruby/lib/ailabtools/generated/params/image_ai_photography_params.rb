# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageAIPhotographyParams < AILabTools::Params
        attr_reader :image, :style_title, :style_desc, :image_size
        def initialize(image:, style_title:, style_desc:, image_size: nil)
          @image = image
          @style_title = style_title
          @style_desc = style_desc
          @image_size = image_size
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "style_title" => @style_title,
            "style_desc" => @style_desc,
            "image_size" => @image_size,
          })
        end
      end
    end
  end
end
