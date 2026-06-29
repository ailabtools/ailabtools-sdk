# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitAIEyeshadowTryOnParams < AILabTools::Params
        attr_reader :image, :eyeshadow_style, :image_template, :aspect_ratio
        def initialize(image:, eyeshadow_style: nil, image_template: nil, aspect_ratio: nil)
          @image = image
          @eyeshadow_style = eyeshadow_style
          @image_template = image_template
          @aspect_ratio = aspect_ratio
          raise ArgumentError, "At least one of eyeshadow_style, image_template is required" if @eyeshadow_style.nil? && @image_template.nil?
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "eyeshadow_style" => @eyeshadow_style,
            "image_template" => @image_template,
            "aspect_ratio" => @aspect_ratio,
          })
        end
      end
    end
  end
end
