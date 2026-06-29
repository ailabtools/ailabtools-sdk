# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitExpressionEditingAdvancedParams < AILabTools::Params
        attr_reader :image, :expression
        def initialize(image:, expression:)
          @image = image
          @expression = expression
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "expression" => @expression,
          })
        end
      end
    end
  end
end
