# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitFacialBeautificationAdvancedParams < AILabTools::Params
        attr_reader :image, :whitening, :smoothing, :face_lifting, :eye_enlarging
        def initialize(image:, whitening: nil, smoothing: nil, face_lifting: nil, eye_enlarging: nil)
          @image = image
          @whitening = whitening
          @smoothing = smoothing
          @face_lifting = face_lifting
          @eye_enlarging = eye_enlarging
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "whitening" => @whitening,
            "smoothing" => @smoothing,
            "face_lifting" => @face_lifting,
            "eye_enlarging" => @eye_enlarging,
          })
        end
      end
    end
  end
end
