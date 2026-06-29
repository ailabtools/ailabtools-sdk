# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageInvisibleTextWatermarkParams < AILabTools::Params
        attr_reader :function_type, :origin_image, :text, :watermark_image, :output_file_type, :quality_factor
        def initialize(function_type:, origin_image: nil, text: nil, watermark_image: nil, output_file_type: nil, quality_factor: nil)
          @function_type = function_type
          @origin_image = origin_image
          @text = text
          @watermark_image = watermark_image
          @output_file_type = output_file_type
          @quality_factor = quality_factor
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "function_type" => @function_type,
            "origin_image" => @origin_image,
            "text" => @text,
            "watermark_image" => @watermark_image,
            "output_file_type" => @output_file_type,
            "quality_factor" => @quality_factor,
          })
        end
      end
    end
  end
end
