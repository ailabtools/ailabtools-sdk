# frozen_string_literal: true

module AILabTools
  module ResponseModel
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      attr_reader :field_map, :field_types

      def fields(map, types = {})
        @field_map = map
        @field_types = types
        attr_reader(*map.keys)
      end

      def from_hash(hash)
        object = new
        object.instance_variable_set(:@raw, hash)
        (@field_map || {}).each do |attr, wire|
          value = hash[wire]
          value = convert_value(value, (@field_types || {})[attr])
          object.instance_variable_set("@#{attr}", value)
        end
        object
      end

      private

      def convert_value(value, type)
        return value if value.nil? || type.nil?

        if type.is_a?(Array)
          klass = type.first
          return value unless value.is_a?(Array)

          value.map { |item| item.is_a?(Hash) ? klass.from_hash(item) : item }
        elsif value.is_a?(Hash) && type.respond_to?(:from_hash)
          type.from_hash(value)
        else
          value
        end
      end
    end

    attr_reader :raw
  end
end
