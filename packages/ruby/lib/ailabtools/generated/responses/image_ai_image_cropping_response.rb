# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class ImageAIImageCroppingResponseData
        include AILabTools::ResponseModel
        fields({
          :url => "url",
          :retain_location => "retain_location",
          :width => "width",
          :height => "height",
          :y => "y",
          :x => "x",
        }, {
        })
      end

      class ImageAIImageCroppingResponse
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
          :url => "url",
          :retain_location => "retain_location",
          :width => "width",
          :height => "height",
          :y => "y",
          :x => "x",
        }, {
          :data => ImageAIImageCroppingResponseData,
        })
      end
    end
  end
end
