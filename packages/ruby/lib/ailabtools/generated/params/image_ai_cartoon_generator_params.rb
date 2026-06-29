# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageAICartoonGeneratorParams < AILabTools::Params
        attr_reader :task_type, :image, :type
        def initialize(task_type:, image:, type:)
          @task_type = task_type
          @image = image
          @type = type
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "task_type" => @task_type,
            "image" => @image,
            "type" => @type,
          })
        end
      end
    end
  end
end
