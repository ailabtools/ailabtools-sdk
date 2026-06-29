# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class PortraitFacialLandmarksResponseData
        include AILabTools::ResponseModel
        fields({
          :result => "result",
          :face_num => "face_num",
          :face_list => "face_list",
          :face_token => "face_token",
          :location => "location",
          :left => "left",
          :top => "top",
          :width => "width",
          :height => "height",
          :rotation => "rotation",
          :face_probability => "face_probability",
          :angle => "angle",
          :yaw => "yaw",
          :pitch => "pitch",
          :roll => "roll",
          :age => "age",
          :gender => "gender",
          :type => "type",
          :probability => "probability",
          :landmark4 => "landmark4",
          :landmark72 => "landmark72",
          :landmark150 => "landmark150",
          :landmark201 => "landmark201",
        }, {
        })
      end

      class PortraitFacialLandmarksResponse
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
          :face_num => "face_num",
          :face_list => "face_list",
          :face_token => "face_token",
          :location => "location",
          :left => "left",
          :top => "top",
          :width => "width",
          :height => "height",
          :rotation => "rotation",
          :face_probability => "face_probability",
          :angle => "angle",
          :yaw => "yaw",
          :pitch => "pitch",
          :roll => "roll",
          :age => "age",
          :gender => "gender",
          :type => "type",
          :probability => "probability",
          :landmark4 => "landmark4",
          :landmark72 => "landmark72",
          :landmark150 => "landmark150",
          :landmark201 => "landmark201",
        }, {
          :data => PortraitFacialLandmarksResponseData,
        })
      end
    end
  end
end
