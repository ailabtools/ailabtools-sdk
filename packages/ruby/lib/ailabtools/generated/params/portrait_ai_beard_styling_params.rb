# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitAIBeardStylingParams < AILabTools::Params
        attr_reader :image, :beard, :image_template
        def initialize(image:, beard: nil, image_template: nil)
          @image = image
          @beard = beard
          @image_template = image_template
          raise ArgumentError, "At least one of beard, image_template is required" if @beard.nil? && @image_template.nil?
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "beard" => @beard,
            "image_template" => @image_template,
          })
        end
      end
    end
  end
end
