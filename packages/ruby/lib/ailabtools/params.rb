# frozen_string_literal: true

module AILabTools
  class Params
    def query_fields
      {}
    end

    def body_fields
      {}
    end

    private

    def compact_hash(hash)
      hash.each_with_object({}) do |(key, value), result|
        result[key] = value unless value.nil?
      end
    end
  end
end
