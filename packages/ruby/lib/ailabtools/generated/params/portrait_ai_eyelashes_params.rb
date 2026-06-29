# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitAIEyelashesParams < AILabTools::Params
        attr_reader :image, :name, :desc
        def initialize(image:, name: nil, desc: nil)
          @image = image
          @name = name
          @desc = desc
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "name" => @name,
            "desc" => @desc,
          })
        end
      end
    end
  end
end
