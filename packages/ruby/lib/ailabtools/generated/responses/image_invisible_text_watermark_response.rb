# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class ImageInvisibleTextWatermarkResponseData
        include AILabTools::ResponseModel
        fields({
          :watermark_image_url => "watermark_image_url",
          :text_image_url => "text_image_url",
        }, {
        })
      end

      class ImageInvisibleTextWatermarkResponse
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
          :watermark_image_url => "watermark_image_url",
          :text_image_url => "text_image_url",
        }, {
          :data => ImageInvisibleTextWatermarkResponseData,
        })
      end
    end
  end
end
