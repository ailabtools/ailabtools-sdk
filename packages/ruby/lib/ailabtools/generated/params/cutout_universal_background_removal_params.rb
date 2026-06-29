# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class CutoutUniversalBackgroundRemovalParams < AILabTools::Params
        attr_reader :image, :return_form
        def initialize(image:, return_form: nil)
          @image = image
          @return_form = return_form
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "return_form" => @return_form,
          })
        end
      end
    end
  end
end
