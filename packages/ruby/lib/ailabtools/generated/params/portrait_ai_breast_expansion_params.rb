# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitAIBreastExpansionParams < AILabTools::Params
        attr_reader :task_type, :person_image
        def initialize(task_type: nil, person_image:)
          @task_type = task_type
          @person_image = person_image
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "task_type" => @task_type,
            "person_image" => @person_image,
          })
        end
      end
    end
  end
end
