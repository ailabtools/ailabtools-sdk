# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageStyleTransferParams < AILabTools::Params
        attr_reader :image, :option
        def initialize(image:, option:)
          @image = image
          @option = option
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "option" => @option,
          })
        end
      end
    end
  end
end
