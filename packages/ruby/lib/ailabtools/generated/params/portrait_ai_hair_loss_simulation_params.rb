# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitAIHairLossSimulationParams < AILabTools::Params
        attr_reader :image, :level
        def initialize(image:, level:)
          @image = image
          @level = level
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "level" => @level,
          })
        end
      end
    end
  end
end
