# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageAiObjectReplacerParams < AILabTools::Params
        attr_reader :image, :mask, :custom_prompt, :steps, :scale, :seed
        def initialize(image:, mask:, custom_prompt: nil, steps: nil, scale: nil, seed: nil)
          @image = image
          @mask = mask
          @custom_prompt = custom_prompt
          @steps = steps
          @scale = scale
          @seed = seed
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "mask" => @mask,
            "custom_prompt" => @custom_prompt,
            "steps" => @steps,
            "scale" => @scale,
            "seed" => @seed,
          })
        end
      end
    end
  end
end
