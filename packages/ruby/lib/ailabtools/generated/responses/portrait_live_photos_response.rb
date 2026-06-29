# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class PortraitLivePhotosResponseData
        include AILabTools::ResponseModel
        fields({
          :video => "video",
        }, {
        })
      end

      class PortraitLivePhotosResponse
        include AILabTools::ResponseModel
        fields({
          :request_id => "request_id",
          :log_id => "log_id",
          :error_code => "error_code",
          :error_code_str => "error_code_str",
          :error_msg => "error_msg",
          :error_detail => "error_detail",
          :data => "data",
          :image => "image",
          :ratio => "ratio",
          :task_type => "task_type",
          :task_id => "task_id",
          :task_status => "task_status",
          :video => "video",
        }, {
          :data => PortraitLivePhotosResponseData,
        })
      end
    end
  end
end
