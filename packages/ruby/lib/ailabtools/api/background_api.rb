# frozen_string_literal: true

module AILabTools
  module API
    class BackgroundAPI
      def initialize(cutout)
        @cutout = cutout
      end

      def remove(params)
        @cutout.cutout_universal_background_removal(params)
      end
    end
  end
end
