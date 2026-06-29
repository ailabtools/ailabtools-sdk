# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageAINailArtParams < AILabTools::Params
        attr_reader :image, :nail_name, :nail_desc
        def initialize(image:, nail_name:, nail_desc:)
          @image = image
          @nail_name = nail_name
          @nail_desc = nail_desc
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "nail_name" => @nail_name,
            "nail_desc" => @nail_desc,
          })
        end
      end
    end
  end
end
