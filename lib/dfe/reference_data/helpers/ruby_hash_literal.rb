module DfE
  module ReferenceData
    module Helpers
      class RubyHashLiteral
        def self.call(object)
          "#{new.call(object)}.freeze"
        end

        def call(object, indent = 3)
          case object
          when Hash
            hash_to_ruby(object, indent)
          when Array
            array_to_ruby(object, indent)
          when String, Symbol, Integer, Float, Rational, Complex, TrueClass, FalseClass, NilClass
            object.inspect
          when DateTime
            "DateTime.new(#{object.strftime('%Y, %-m, %-d')})"
          else
            raise ArgumentError, "Cannot convert #{object.class} to Ruby source"
          end
        end

        private

        def hash_to_ruby(hash, indent)
          return "{}" if hash.empty?

          current_indent = "  " * indent
          next_indent = "  " * (indent + 1)

          entries = hash.map do |key, value|
            "#{next_indent}#{hash_key_to_ruby(key)} #{call(value, indent + 1)}"
          end

          "{\n#{entries.join(",\n")}\n#{current_indent}}"
        end

        def array_to_ruby(array, indent)
          return "[]" if array.empty?

          current_indent = "  " * indent
          next_indent = "  " * (indent + 1)

          entries = array.map do |value|
            "#{next_indent}#{call(value, indent + 1)}"
          end

          "[\n#{entries.join(",\n")}\n#{current_indent}]"
        end

        def hash_key_to_ruby(key)
          if key.is_a?(Symbol) && key.match?(/\A[a-z_]\w*[!?=]?\z/)
            "#{key}:"
          else
            "#{call(key)} =>"
          end
        end
      end
    end
  end
end
