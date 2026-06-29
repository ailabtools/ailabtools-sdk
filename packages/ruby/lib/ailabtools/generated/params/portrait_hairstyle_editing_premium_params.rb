# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitHairstyleEditingPremiumParams < AILabTools::Params
        attr_reader :image, :image_template, :hair_style, :color
        def initialize(image:, image_template: nil, hair_style: nil, color: nil)
          @image = image
          @image_template = image_template
          @hair_style = hair_style
          @color = color
          raise ArgumentError, "At least one of hair_style, image_template is required" if @hair_style.nil? && @image_template.nil?
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "image_template" => @image_template,
            "hair_style" => @hair_style,
            "color" => @color,
          })
        end
      end
    end
  end
end
