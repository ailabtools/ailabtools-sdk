# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitTryOnClothesParams < AILabTools::Params
        attr_reader :task_type, :person_image, :clothes_image, :clothes_type
        def initialize(task_type:, person_image:, clothes_image:, clothes_type:)
          @task_type = task_type
          @person_image = person_image
          @clothes_image = clothes_image
          @clothes_type = clothes_type
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "task_type" => @task_type,
            "person_image" => @person_image,
            "clothes_image" => @clothes_image,
            "clothes_type" => @clothes_type,
          })
        end
      end
    end
  end
end
