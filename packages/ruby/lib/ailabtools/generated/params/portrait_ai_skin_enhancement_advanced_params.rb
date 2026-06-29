# frozen_string_literal: true

module AILabTools
  module Generated
    module Params
      class PortraitAISkinEnhancementAdvancedParams < AILabTools::Params
        attr_reader :image, :smart_skin, :acne_removal, :spot_correction, :skin_brightening, :skin_smoothing, :pore_control, :wrinkle_reduction, :under_eye_correction, :scar_reduction
        def initialize(image:, smart_skin: nil, acne_removal: nil, spot_correction: nil, skin_brightening: nil, skin_smoothing: nil, pore_control: nil, wrinkle_reduction: nil, under_eye_correction: nil, scar_reduction: nil)
          @image = image
          @smart_skin = smart_skin
          @acne_removal = acne_removal
          @spot_correction = spot_correction
          @skin_brightening = skin_brightening
          @skin_smoothing = skin_smoothing
          @pore_control = pore_control
          @wrinkle_reduction = wrinkle_reduction
          @under_eye_correction = under_eye_correction
          @scar_reduction = scar_reduction
        end

        def query_fields
          {}
        end

        def body_fields
          compact_hash({
            "image" => @image,
            "smart_skin" => @smart_skin,
            "acne_removal" => @acne_removal,
            "spot_correction" => @spot_correction,
            "skin_brightening" => @skin_brightening,
            "skin_smoothing" => @skin_smoothing,
            "pore_control" => @pore_control,
            "wrinkle_reduction" => @wrinkle_reduction,
            "under_eye_correction" => @under_eye_correction,
            "scar_reduction" => @scar_reduction,
          })
        end
      end
    end
  end
end
