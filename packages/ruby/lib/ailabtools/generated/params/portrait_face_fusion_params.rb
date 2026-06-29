# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitFaceFusionParams < AILabTools::Params
        attr_reader :image_target, :image_template, :source_similarity
        def initialize(image_target:, image_template:, source_similarity: nil)
          @image_target = image_target
          @image_template = image_template
          @source_similarity = source_similarity
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image_target" => @image_target,
            "image_template" => @image_template,
            "source_similarity" => @source_similarity,
          })
        end
      end
    end
  end
end
