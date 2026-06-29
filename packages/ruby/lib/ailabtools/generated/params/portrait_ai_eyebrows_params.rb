# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitAIEyebrowsParams < AILabTools::Params
        attr_reader :image, :reference_image, :resolution
        def initialize(image:, reference_image:, resolution: nil)
          @image = image
          @reference_image = reference_image
          @resolution = resolution
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "reference_image" => @reference_image,
            "resolution" => @resolution,
          })
        end
      end
    end
  end
end
