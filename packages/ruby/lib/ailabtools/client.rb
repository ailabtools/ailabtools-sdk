# frozen_string_literal: true

module AILabTools
  class Client
    attr_reader :common, :cutout, :image, :portrait, :background

    def initialize(api_key:, base_url: "https://www.ailabapi.com", timeout: 120)
      requester = Requester.new(api_key: api_key, base_url: base_url, timeout: timeout)
      @common = API::CommonAPI.new(requester)
      @cutout = API::CutoutAPI.new(requester)
      @image = API::ImageAPI.new(requester)
      @portrait = API::PortraitAPI.new(requester)
      @background = API::BackgroundAPI.new(@cutout)
    end

    def wait_for_task(task_id, interval: 5, timeout: 300, raise_on_failed: true)
      deadline = Time.now + timeout
      loop do
        result = @common.common_query_async_task_result(
          Generated::Params::CommonQueryAsyncTaskResultParams.new(task_id: task_id)
        )
        status = result.data && result.data.task_status || result.task_status
        return result if status == 2
        if status == 3
          raise SDKError, "AILabTools task failed: #{task_id}" if raise_on_failed
          return result
        end
        raise SDKError, "AILabTools task timed out: #{task_id}" if Time.now >= deadline
        sleep interval if interval.positive?
      end
    end

    def close
      nil
    end
  end
end
