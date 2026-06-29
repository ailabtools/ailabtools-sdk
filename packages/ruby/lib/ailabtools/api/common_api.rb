# frozen_string_literal: true

module AILabTools
  module API
    class CommonAPI
      def initialize(requester)
        @requester = requester
      end

      def common_query_async_task_result(params)
        @requester.request("GET", "/api/common/query-async-task-result", params, AILabTools::Generated::Responses::CommonQueryAsyncTaskResultResponse)
      end

      def common_query_credits(params)
        @requester.request("GET", "/api/common/query-credits", params, AILabTools::Generated::Responses::CommonQueryCreditsResponse)
      end

    end
  end
end
