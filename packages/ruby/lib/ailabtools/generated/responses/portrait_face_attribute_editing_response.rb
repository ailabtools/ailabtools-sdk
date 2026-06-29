# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class PortraitFaceAttributeEditingResponseData
        include AILabTools::ResponseModel
        fields({
          :result => "result",
          :image => "image",
        }, {
        })
      end

      class PortraitFaceAttributeEditingResponse
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
          :result => "result",
        }, {
          :data => PortraitFaceAttributeEditingResponseData,
        })
      end
    end
  end
end
