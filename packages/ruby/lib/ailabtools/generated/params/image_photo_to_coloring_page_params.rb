# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImagePhotoToColoringPageParams < AILabTools::Params
        attr_reader :image, :prompt, :image_size
        def initialize(image:, prompt: nil, image_size: nil)
          @image = image
          @prompt = prompt
          @image_size = image_size
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "prompt" => @prompt,
            "image_size" => @image_size,
          })
        end
      end
    end
  end
end
