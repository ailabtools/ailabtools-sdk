# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageAiImageExtenderParams < AILabTools::Params
        attr_reader :custom_prompt, :steps, :strength, :scale, :seed, :max_height, :max_width, :image, :top, :bottom, :left, :right, :mask
        def initialize(custom_prompt: nil, steps: nil, strength: nil, scale: nil, seed: nil, max_height: nil, max_width: nil, image:, top: nil, bottom: nil, left: nil, right: nil, mask: nil)
          @custom_prompt = custom_prompt
          @steps = steps
          @strength = strength
          @scale = scale
          @seed = seed
          @max_height = max_height
          @max_width = max_width
          @image = image
          @top = top
          @bottom = bottom
          @left = left
          @right = right
          @mask = mask
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "custom_prompt" => @custom_prompt,
            "steps" => @steps,
            "strength" => @strength,
            "scale" => @scale,
            "seed" => @seed,
            "max_height" => @max_height,
            "max_width" => @max_width,
            "image" => @image,
            "top" => @top,
            "bottom" => @bottom,
            "left" => @left,
            "right" => @right,
            "mask" => @mask,
          })
        end
      end
    end
  end
end
