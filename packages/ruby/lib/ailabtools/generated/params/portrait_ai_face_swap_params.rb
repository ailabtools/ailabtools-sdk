# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitAIFaceSwapParams < AILabTools::Params
        attr_reader :image_target, :image_template
        def initialize(image_target:, image_template:)
          @image_target = image_target
          @image_template = image_template
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image_target" => @image_target,
            "image_template" => @image_template,
          })
        end
      end
    end
  end
end
