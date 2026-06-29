# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitAIHalloweenMaskParams < AILabTools::Params
        attr_reader :image, :mask_style, :image_template, :aspect_ratio
        def initialize(image:, mask_style: nil, image_template: nil, aspect_ratio: nil)
          @image = image
          @mask_style = mask_style
          @image_template = image_template
          @aspect_ratio = aspect_ratio
          raise ArgumentError, "At least one of mask_style, image_template is required" if @mask_style.nil? && @image_template.nil?
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "mask_style" => @mask_style,
            "image_template" => @image_template,
            "aspect_ratio" => @aspect_ratio,
          })
        end
      end
    end
  end
end
