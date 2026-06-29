# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitHairstyleEditingParams < AILabTools::Params
        attr_reader :image_target, :hair_type
        def initialize(image_target:, hair_type: nil)
          @image_target = image_target
          @hair_type = hair_type
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image_target" => @image_target,
            "hair_type" => @hair_type,
          })
        end
      end
    end
  end
end
