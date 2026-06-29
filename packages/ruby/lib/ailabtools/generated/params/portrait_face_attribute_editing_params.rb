# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitFaceAttributeEditingParams < AILabTools::Params
        attr_reader :image, :action_type, :quality_control, :face_location
        def initialize(image:, action_type:, quality_control: nil, face_location: nil)
          @image = image
          @action_type = action_type
          @quality_control = quality_control
          @face_location = face_location
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "action_type" => @action_type,
            "quality_control" => @quality_control,
            "face_location" => @face_location,
          })
        end
      end
    end
  end
end
