# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitTryOnClothesProParams < AILabTools::Params
        attr_reader :task_type, :person_image, :top_garment, :bottom_garment, :resolution, :restore_face
        def initialize(task_type:, person_image:, top_garment:, bottom_garment: nil, resolution: nil, restore_face: nil)
          @task_type = task_type
          @person_image = person_image
          @top_garment = top_garment
          @bottom_garment = bottom_garment
          @resolution = resolution
          @restore_face = restore_face
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "task_type" => @task_type,
            "person_image" => @person_image,
            "top_garment" => @top_garment,
            "bottom_garment" => @bottom_garment,
            "resolution" => @resolution,
            "restore_face" => @restore_face,
          })
        end
      end
    end
  end
end
