# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitFacialFiltersParams < AILabTools::Params
        attr_reader :image, :resource_type, :strength
        def initialize(image:, resource_type:, strength:)
          @image = image
          @resource_type = resource_type
          @strength = strength
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "resource_type" => @resource_type,
            "strength" => @strength,
          })
        end
      end
    end
  end
end
