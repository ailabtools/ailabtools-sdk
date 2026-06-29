# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageAIEmojiGeneratorParams < AILabTools::Params
        attr_reader :image, :expression, :style, :scene, :filler
        def initialize(image:, expression:, style:, scene:, filler: nil)
          @image = image
          @expression = expression
          @style = style
          @scene = scene
          @filler = filler
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "expression" => @expression,
            "style" => @style,
            "scene" => @scene,
            "filler" => @filler,
          })
        end
      end
    end
  end
end
