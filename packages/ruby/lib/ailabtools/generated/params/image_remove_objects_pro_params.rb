# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageRemoveObjectsProParams < AILabTools::Params
        attr_reader :image, :mask
        def initialize(image:, mask:)
          @image = image
          @mask = mask
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "mask" => @mask,
          })
        end
      end
    end
  end
end
