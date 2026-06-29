# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class CutoutAvatarExtractionResponseData
        include AILabTools::ResponseModel
        fields({
          :elements => "elements",
          :image_url => "image_url",
          :width => "width",
          :height => "height",
          :x => "x",
          :y => "y",
        }, {
        })
      end

      class CutoutAvatarExtractionResponse
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
          :image_url => "image_url",
          :width => "width",
          :height => "height",
          :x => "x",
          :y => "y",
        }, {
          :data => CutoutAvatarExtractionResponseData,
        })
      end
    end
  end
end
