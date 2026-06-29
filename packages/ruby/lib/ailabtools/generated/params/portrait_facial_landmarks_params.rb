# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitFacialLandmarksParams < AILabTools::Params
        attr_reader :image, :max_face_num, :face_field
        def initialize(image:, max_face_num: nil, face_field: nil)
          @image = image
          @max_face_num = max_face_num
          @face_field = face_field
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "max_face_num" => @max_face_num,
            "face_field" => @face_field,
          })
        end
      end
    end
  end
end
