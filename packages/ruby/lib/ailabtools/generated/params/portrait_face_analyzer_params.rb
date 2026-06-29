# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitFaceAnalyzerParams < AILabTools::Params
        attr_reader :image, :max_face_num, :face_attributes_type, :need_rotate_detection
        def initialize(image:, max_face_num: nil, face_attributes_type: nil, need_rotate_detection: nil)
          @image = image
          @max_face_num = max_face_num
          @face_attributes_type = face_attributes_type
          @need_rotate_detection = need_rotate_detection
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "max_face_num" => @max_face_num,
            "face_attributes_type" => @face_attributes_type,
            "need_rotate_detection" => @need_rotate_detection,
          })
        end
      end
    end
  end
end
