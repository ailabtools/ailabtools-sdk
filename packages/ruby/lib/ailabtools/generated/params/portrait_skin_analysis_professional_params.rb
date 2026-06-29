# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitSkinAnalysisProfessionalParams < AILabTools::Params
        attr_reader :image, :left_side_image, :right_side_image, :return_maps, :return_marks, :roi_outline_color, :return_side_results
        def initialize(image:, left_side_image: nil, right_side_image: nil, return_maps: nil, return_marks: nil, roi_outline_color: nil, return_side_results: nil)
          @image = image
          @left_side_image = left_side_image
          @right_side_image = right_side_image
          @return_maps = return_maps
          @return_marks = return_marks
          @roi_outline_color = roi_outline_color
          @return_side_results = return_side_results
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "left_side_image" => @left_side_image,
            "right_side_image" => @right_side_image,
            "return_maps" => @return_maps,
            "return_marks" => @return_marks,
            "roi_outline_color" => @roi_outline_color,
            "return_side_results" => @return_side_results,
          })
        end
      end
    end
  end
end
