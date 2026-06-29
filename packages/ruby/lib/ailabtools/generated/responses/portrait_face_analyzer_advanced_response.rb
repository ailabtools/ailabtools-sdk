# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class PortraitFaceAnalyzerAdvancedResponseData
        include AILabTools::ResponseModel
        fields({
          :pupils => "pupils",
          :gender_list => "gender_list",
          :expressions => "expressions",
          :face_count => "face_count",
          :landmarks => "landmarks",
          :landmark_count => "landmark_count",
          :beauty_list => "beauty_list",
          :hat_list => "hat_list",
          :face_probability_list => "face_probability_list",
          :glasses => "glasses",
          :face_rectangles => "face_rectangles",
          :pose_list => "pose_list",
          :age_list => "age_list",
          :dense_feature_length => "dense_feature_length",
          :masks => "masks",
          :qualities => "qualities",
          :score_list => "score_list",
          :blur_list => "blur_list",
          :fnf_list => "fnf_list",
          :glass_list => "glass_list",
          :illu_list => "illu_list",
          :mask_list => "mask_list",
          :noise_list => "noise_list",
        }, {
        })
      end

      class PortraitFaceAnalyzerAdvancedResponse
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
          :pupils => "pupils",
          :gender_list => "gender_list",
          :expressions => "expressions",
          :face_count => "face_count",
          :landmarks => "landmarks",
          :landmark_count => "landmark_count",
          :beauty_list => "beauty_list",
          :hat_list => "hat_list",
          :face_probability_list => "face_probability_list",
          :glasses => "glasses",
          :face_rectangles => "face_rectangles",
          :pose_list => "pose_list",
          :age_list => "age_list",
          :dense_feature_length => "dense_feature_length",
          :masks => "masks",
          :qualities => "qualities",
          :score_list => "score_list",
          :blur_list => "blur_list",
          :fnf_list => "fnf_list",
          :glass_list => "glass_list",
          :illu_list => "illu_list",
          :mask_list => "mask_list",
          :noise_list => "noise_list",
        }, {
          :data => PortraitFaceAnalyzerAdvancedResponseData,
        })
      end
    end
  end
end
