# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitExpressionEditingParams < AILabTools::Params
        attr_reader :image_target, :service_choice
        def initialize(image_target:, service_choice:)
          @image_target = image_target
          @service_choice = service_choice
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image_target" => @image_target,
            "service_choice" => @service_choice,
          })
        end
      end
    end
  end
end
