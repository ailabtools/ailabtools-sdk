# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageQueryingAsyncTaskResultsParams < AILabTools::Params
        attr_reader :job_id, :type
        def initialize(job_id:, type:)
          @job_id = job_id
          @type = type
        end

        def query_fields
          compact_hash({
            "job_id" => @job_id,
            "type" => @type,
          })
        end

        def body_fields
          {}
        end
      end
    end
  end
end
