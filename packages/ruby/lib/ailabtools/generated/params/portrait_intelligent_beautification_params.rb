# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitIntelligentBeautificationParams < AILabTools::Params
        attr_reader :image_target, :multi_face, :beauty_level, :task_type
        def initialize(image_target:, multi_face: nil, beauty_level: nil, task_type: nil)
          @image_target = image_target
          @multi_face = multi_face
          @beauty_level = beauty_level
          @task_type = task_type
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image_target" => @image_target,
            "multi_face" => @multi_face,
            "beauty_level" => @beauty_level,
            "task_type" => @task_type,
          })
        end
      end
    end
  end
end
