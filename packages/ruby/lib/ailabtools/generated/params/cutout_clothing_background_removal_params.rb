# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class CutoutClothingBackgroundRemovalParams < AILabTools::Params
        attr_reader :image, :out_mode, :cloth_class, :return_form
        def initialize(image:, out_mode: nil, cloth_class: nil, return_form: nil)
          @image = image
          @out_mode = out_mode
          @cloth_class = cloth_class
          @return_form = return_form
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "out_mode" => @out_mode,
            "cloth_class" => @cloth_class,
            "return_form" => @return_form,
          })
        end
      end
    end
  end
end
