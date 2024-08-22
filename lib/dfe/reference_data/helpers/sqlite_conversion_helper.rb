module DfE
  module ReferenceData
    module Helpers
      module SQLiteConversionHelper
        def convert_value_for_sqlite(value)
          case value
          when Array
            convert_array_for_sqlite(value)
          when Range
            convert_range_for_sqlite(value)
          when TrueClass, FalseClass
            convert_boolean_for_sqlite(value)
          else
            convert_basic_type_for_sqlite(value)
          end
        rescue => e
          raise StandardError, "Error converting value for SQLite: #{e.message}"
        end

        def convert_basic_type_for_sqlite(value)
          case value
          when DateTime, Time
            convert_datetime_for_sqlite(value)
          when Hash
            convert_hash_for_sqlite(value)
          when NilClass
            nil
          else
            value.to_s
          end
        rescue StandardError => e
          raise StandardError, "Error converting basic type for SQLite: #{e.message}"
        end

        def convert_to_sqlite_type(field_type)
          case field_type.to_s.downcase  # Convert both symbols and strings to lowercase strings
          when 'boolean', 'integer'
            'INTEGER'
          else
            'TEXT'
          end
        rescue StandardError => e
          raise StandardError, "Error converting field type to SQLite type: #{e.message}"
        end

        def convert_array_for_sqlite(value)
          if value.all? { |v| [true, false].include?(v) }
            value.map { |v| v ? '1' : '0' }.join(',')
          else
            value.join(',')
          end
        rescue StandardError => e
          raise StandardError, "Error converting array for SQLite: #{e.message}"
        end

        def convert_range_for_sqlite(value)
          "#{value.begin},#{value.end}"
        rescue StandardError => e
          raise StandardError, "Error converting range for SQLite: #{e.message}"
        end

        def convert_boolean_for_sqlite(value)
          value ? '1' : '0'
        rescue StandardError => e
          raise StandardError, "Error converting boolean for SQLite: #{e.message}"
        end

        def convert_datetime_for_sqlite(value)
          value.strftime('%Y-%m-%d %H:%M:%S')
        rescue StandardError => e
          raise StandardError, "Error converting datetime for SQLite: #{e.message}"
        end

        def convert_hash_for_sqlite(value)
          value.map { |k, v| "#{k}=#{v}" }.join(',')
        rescue StandardError => e
          raise StandardError, "Error converting hash for SQLite: #{e.message}"
        end
      end
    end
  end
end
  