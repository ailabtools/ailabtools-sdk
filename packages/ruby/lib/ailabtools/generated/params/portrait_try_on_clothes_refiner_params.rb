# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitTryOnClothesRefinerParams < AILabTools::Params
        attr_reader :task_type, :person_image, :top_garment, :coarse_image, :gender, :bottom_garment
        def initialize(task_type:, person_image:, top_garment:, coarse_image:, gender:, bottom_garment: nil)
          @task_type = task_type
          @person_image = person_image
          @top_garment = top_garment
          @coarse_image = coarse_image
          @gender = gender
          @bottom_garment = bottom_garment
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "task_type" => @task_type,
            "person_image" => @person_image,
            "top_garment" => @top_garment,
            "coarse_image" => @coarse_image,
            "gender" => @gender,
            "bottom_garment" => @bottom_garment,
          })
        end
      end
    end
  end
end
