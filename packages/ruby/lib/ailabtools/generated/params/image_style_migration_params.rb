# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageStyleMigrationParams < AILabTools::Params
        attr_reader :style, :major
        def initialize(style:, major:)
          @style = style
          @major = major
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "style" => @style,
            "major" => @major,
          })
        end
      end
    end
  end
end
