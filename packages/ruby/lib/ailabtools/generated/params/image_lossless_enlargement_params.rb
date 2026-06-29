# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageLosslessEnlargementParams < AILabTools::Params
        attr_reader :image, :upscale_factor, :mode, :output_format, :output_quality
        def initialize(image:, upscale_factor: nil, mode: nil, output_format: nil, output_quality: nil)
          @image = image
          @upscale_factor = upscale_factor
          @mode = mode
          @output_format = output_format
          @output_quality = output_quality
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "upscale_factor" => @upscale_factor,
            "mode" => @mode,
            "output_format" => @output_format,
            "output_quality" => @output_quality,
          })
        end
      end
    end
  end
end
