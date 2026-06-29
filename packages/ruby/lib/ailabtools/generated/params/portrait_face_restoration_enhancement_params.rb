# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitFaceRestorationEnhancementParams < AILabTools::Params
        attr_reader :image
        def initialize(image:)
          @image = image
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
          })
        end
      end
    end
  end
end
