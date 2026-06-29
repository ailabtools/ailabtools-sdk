# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class CutoutClothingBackgroundRemovalResponseData
        include AILabTools::ResponseModel
        fields({
          :elements => "elements",
          :field_0 => "0",
          :image_url => "image_url",
          :field_1 => "1",
          :class_url => "class_url",
          :tops => "tops",
          :coat => "coat",
          :skirt => "skirt",
          :pants => "pants",
          :bag => "bag",
          :shoes => "shoes",
          :hat => "hat",
        }, {
        })
      end

      class CutoutClothingBackgroundRemovalResponse
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
          :elements => "elements",
          :field_0 => "0",
          :image_url => "image_url",
          :field_1 => "1",
          :class_url => "class_url",
          :tops => "tops",
          :coat => "coat",
          :skirt => "skirt",
          :pants => "pants",
          :bag => "bag",
          :shoes => "shoes",
          :hat => "hat",
        }, {
          :data => CutoutClothingBackgroundRemovalResponseData,
        })
      end
    end
  end
end
