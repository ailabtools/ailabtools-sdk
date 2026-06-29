# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitIntelligentSkinRetouchingParams < AILabTools::Params
        attr_reader :image, :retouch_degree, :whitening_degree
        def initialize(image:, retouch_degree: nil, whitening_degree: nil)
          @image = image
          @retouch_degree = retouch_degree
          @whitening_degree = whitening_degree
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "retouch_degree" => @retouch_degree,
            "whitening_degree" => @whitening_degree,
          })
        end
      end
    end
  end
end
