# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageColorEnhancementParams < AILabTools::Params
        attr_reader :image, :output_format, :mode
        def initialize(image:, output_format:, mode:)
          @image = image
          @output_format = output_format
          @mode = mode
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "output_format" => @output_format,
            "mode" => @mode,
          })
        end
      end
    end
  end
end
