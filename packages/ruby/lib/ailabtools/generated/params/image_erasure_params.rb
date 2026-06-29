# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class ImageErasureParams < AILabTools::Params
        attr_reader :image, :user_mask
        def initialize(image:, user_mask:)
          @image = image
          @user_mask = user_mask
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "user_mask" => @user_mask,
          })
        end
      end
    end
  end
end
