# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitLipsColorChangerParams < AILabTools::Params
        attr_reader :image, :lip_color_infos
        def initialize(image:, lip_color_infos:)
          @image = image
          @lip_color_infos = lip_color_infos
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "lip_color_infos" => @lip_color_infos,
          })
        end
      end
    end
  end
end
