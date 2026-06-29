# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class PortraitSkinAnalysisBasicResponseData
        include AILabTools::ResponseModel
        fields({
          :warning => "warning",
          :face_rectangle => "face_rectangle",
          :top => "top",
          :left => "left",
          :width => "width",
          :height => "height",
          :result => "result",
          :left_eyelids => "left_eyelids",
          :value => "value",
          :confidence => "confidence",
          :right_eyelids => "right_eyelids",
          :eye_pouch => "eye_pouch",
          :dark_circle => "dark_circle",
          :forehead_wrinkle => "forehead_wrinkle",
          :crows_feet => "crows_feet",
          :eye_finelines => "eye_finelines",
          :glabella_wrinkle => "glabella_wrinkle",
          :nasolabial_fold => "nasolabial_fold",
          :skin_type => "skin_type",
          :details => "details",
          :field_0 => "0",
          :field_1 => "1",
          :field_2 => "2",
          :field_3 => "3",
          :pores_forehead => "pores_forehead",
          :pores_left_cheek => "pores_left_cheek",
          :pores_right_cheek => "pores_right_cheek",
          :pores_jaw => "pores_jaw",
          :blackhead => "blackhead",
          :acne => "acne",
          :mole => "mole",
          :skin_spot => "skin_spot",
        }, {
        })
      end

      class PortraitSkinAnalysisBasicResponse
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
          :warning => "warning",
          :face_rectangle => "face_rectangle",
          :top => "top",
          :left => "left",
          :width => "width",
          :height => "height",
          :result => "result",
          :left_eyelids => "left_eyelids",
          :value => "value",
          :confidence => "confidence",
          :right_eyelids => "right_eyelids",
          :eye_pouch => "eye_pouch",
          :dark_circle => "dark_circle",
          :forehead_wrinkle => "forehead_wrinkle",
          :crows_feet => "crows_feet",
          :eye_finelines => "eye_finelines",
          :glabella_wrinkle => "glabella_wrinkle",
          :nasolabial_fold => "nasolabial_fold",
          :skin_type => "skin_type",
          :details => "details",
          :field_0 => "0",
          :field_1 => "1",
          :field_2 => "2",
          :field_3 => "3",
          :pores_forehead => "pores_forehead",
          :pores_left_cheek => "pores_left_cheek",
          :pores_right_cheek => "pores_right_cheek",
          :pores_jaw => "pores_jaw",
          :blackhead => "blackhead",
          :acne => "acne",
          :mole => "mole",
          :skin_spot => "skin_spot",
        }, {
          :data => PortraitSkinAnalysisBasicResponseData,
        })
      end
    end
  end
end
