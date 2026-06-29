# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class CommonQueryAsyncTaskResultParams < AILabTools::Params
        attr_reader :task_id
        def initialize(task_id:)
          @task_id = task_id
        end

        def query_fields
          compact_hash({
            "task_id" => @task_id,
          })
        end

        def body_fields
          {}
        end
      end
    end
  end
end
