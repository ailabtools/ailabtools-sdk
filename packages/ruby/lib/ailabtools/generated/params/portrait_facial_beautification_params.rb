# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitFacialBeautificationParams < AILabTools::Params
        attr_reader :image, :sharp, :smooth, :white
        def initialize(image:, sharp:, smooth:, white:)
          @image = image
          @sharp = sharp
          @smooth = smooth
          @white = white
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "sharp" => @sharp,
            "smooth" => @smooth,
            "white" => @white,
          })
        end
      end
    end
  end
end
