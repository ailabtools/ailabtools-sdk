# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitFacialBeautificationProParams < AILabTools::Params
        attr_reader :image, :whitening, :smoothing, :thinface, :shrink_face, :enlarge_eye, :remove_eyebrow, :filter_type, :task_type
        def initialize(image:, whitening: nil, smoothing: nil, thinface: nil, shrink_face: nil, enlarge_eye: nil, remove_eyebrow: nil, filter_type: nil, task_type: nil)
          @image = image
          @whitening = whitening
          @smoothing = smoothing
          @thinface = thinface
          @shrink_face = shrink_face
          @enlarge_eye = enlarge_eye
          @remove_eyebrow = remove_eyebrow
          @filter_type = filter_type
          @task_type = task_type
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "whitening" => @whitening,
            "smoothing" => @smoothing,
            "thinface" => @thinface,
            "shrink_face" => @shrink_face,
            "enlarge_eye" => @enlarge_eye,
            "remove_eyebrow" => @remove_eyebrow,
            "filter_type" => @filter_type,
            "task_type" => @task_type,
          })
        end
      end
    end
  end
end
