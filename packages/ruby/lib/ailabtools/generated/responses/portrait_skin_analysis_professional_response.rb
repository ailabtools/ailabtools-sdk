# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class PortraitSkinAnalysisProfessionalResponseData
        include AILabTools::ResponseModel
        fields({
          :left_side_result => "left_side_result",
          :right_side_result => "right_side_result",
          :face_rectangle => "face_rectangle",
          :result => "result",
        }, {
        })
      end

      class PortraitSkinAnalysisProfessionalResponse
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
          :left_side_result => "left_side_result",
          :right_side_result => "right_side_result",
          :face_rectangle => "face_rectangle",
          :result => "result",
        }, {
          :data => PortraitSkinAnalysisProfessionalResponseData,
        })
      end
    end
  end
end
