# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitCartoonYourselfParams < AILabTools::Params
        attr_reader :image, :type
        def initialize(image:, type:)
          @image = image
          @type = type
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "type" => @type,
          })
        end
      end
    end
  end
end
