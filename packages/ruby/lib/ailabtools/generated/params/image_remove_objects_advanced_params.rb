# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageRemoveObjectsAdvancedParams < AILabTools::Params
        attr_reader :image, :mask, :steps, :strength, :scale, :seed, :dilate_size, :quality
        def initialize(image:, mask:, steps: nil, strength: nil, scale: nil, seed: nil, dilate_size: nil, quality: nil)
          @image = image
          @mask = mask
          @steps = steps
          @strength = strength
          @scale = scale
          @seed = seed
          @dilate_size = dilate_size
          @quality = quality
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "mask" => @mask,
            "steps" => @steps,
            "strength" => @strength,
            "scale" => @scale,
            "seed" => @seed,
            "dilate_size" => @dilate_size,
            "quality" => @quality,
          })
        end
      end
    end
  end
end
