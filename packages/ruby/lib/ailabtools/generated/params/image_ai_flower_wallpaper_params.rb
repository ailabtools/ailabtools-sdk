# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageAIFlowerWallpaperParams < AILabTools::Params
        attr_reader :name, :flower_elements, :style, :background, :aspect_ratio
        def initialize(name: nil, flower_elements: nil, style: nil, background: nil, aspect_ratio: nil)
          @name = name
          @flower_elements = flower_elements
          @style = style
          @background = background
          @aspect_ratio = aspect_ratio
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "name" => @name,
            "flower_elements" => @flower_elements,
            "style" => @style,
            "background" => @background,
            "aspect_ratio" => @aspect_ratio,
          })
        end
      end
    end
  end
end
