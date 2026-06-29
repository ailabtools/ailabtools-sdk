# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitLivePhotosParams < AILabTools::Params
        attr_reader :image_target, :type
        def initialize(image_target:, type: nil)
          @image_target = image_target
          @type = type
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image_target" => @image_target,
            "type" => @type,
          })
        end
      end
    end
  end
end
