# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitIntelligentFaceSlimmingParams < AILabTools::Params
        attr_reader :image, :slim_degree
        def initialize(image:, slim_degree: nil)
          @image = image
          @slim_degree = slim_degree
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "slim_degree" => @slim_degree,
          })
        end
      end
    end
  end
end
