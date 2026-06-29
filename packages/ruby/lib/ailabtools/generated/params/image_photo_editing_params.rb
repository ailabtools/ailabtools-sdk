# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImagePhotoEditingParams < AILabTools::Params
        attr_reader :image, :style
        def initialize(image:, style:)
          @image = image
          @style = style
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "style" => @style,
          })
        end
      end
    end
  end
end
