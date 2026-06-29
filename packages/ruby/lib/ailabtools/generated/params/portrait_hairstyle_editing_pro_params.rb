# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitHairstyleEditingProParams < AILabTools::Params
        attr_reader :task_type, :image, :hair_style, :color, :image_size, :mask, :bangs, :mode, :reference
        def initialize(task_type:, image:, hair_style:, color: nil, image_size: nil, mask: nil, bangs: nil, mode: nil, reference: nil)
          @task_type = task_type
          @image = image
          @hair_style = hair_style
          @color = color
          @image_size = image_size
          @mask = mask
          @bangs = bangs
          @mode = mode
          @reference = reference
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "task_type" => @task_type,
            "image" => @image,
            "hair_style" => @hair_style,
            "color" => @color,
            "image_size" => @image_size,
            "mask" => @mask,
            "bangs" => @bangs,
            "mode" => @mode,
            "reference" => @reference,
          })
        end
      end
    end
  end
end
