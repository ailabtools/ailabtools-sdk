# frozen_string_literal: true

module AILabTools
  module Generated
    module Responses
      class ImageIntelligentCompositionResponseData
        include AILabTools::ResponseModel
        fields({
          :elements => "elements",
          :min_x => "min_x",
          :max_x => "max_x",
          :min_y => "min_y",
          :max_y => "max_y",
          :score => "score",
        }, {
        })
      end

      class ImageIntelligentCompositionResponse
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
          :min_x => "min_x",
          :max_x => "max_x",
          :min_y => "min_y",
          :max_y => "max_y",
          :score => "score",
        }, {
          :data => ImageIntelligentCompositionResponseData,
        })
      end
    end
  end
end
