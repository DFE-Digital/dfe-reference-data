module DfE
  module ReferenceData
    ##
    #
    # A +ReferenceList+ is the core interface to a reference list (the clue's in the
    # name, right?); this class is abstract, defining various utility methods that
    # subclasses are likely to be able to re-use the implementations of.
    class ReferenceList
      attr_reader :schema

      ##
      # +ReferenceList+ constructor. +schema+, if provided, is a reference list schema.
      def initialize(schema = nil)
        @schema = schema
      end

      # Abstract methods, override these please

      ##
      # Get all the records in the list, as an array of hashes. Each hash maps field
      # name symbols to whatever values that field has in that record; every record
      # must have a field called +id+ that is a unique primary key for that list -
      # eg, no other record has the same +id+.
      def all
        raise NotImplementedError
      end

      ##
      # Get all the records in the list, as a hash of hashes. The top-level hash
      # maps an ID to the record with that ID.
      def all_as_hash
        raise NotImplementedError
      end

      ##
      # Get a single record from the list, given the value of its +id+ field. The
      # record is returned as a hash mapping field name symbols to values. If there
      # is no record with that +id+, returns +nil+.
      def one(id)
        raise NotImplementedError
      end

      # Utility methods, don't override these unless you have better implementations

      ##
      # Get all the records in the list matching the specified +filter+.
      #
      # The +filter+ is a hash mapping field names to values; records that "match"
      # the filter have those values for those fields. However, if +filter+ is
      # +nil+, all records are returned.
      #
      # The records are returned as an array of hashes, one per record, mapping
      # field name symbols to whatever values that field has in that record.
      def some(filter)
        all_records = all
        if filter.nil?
          all_records
        else
          all_records.find_all do |x|
            filter.all? do |field, value|
              x[field] == value
            end
          end
        end
      end

      ##
      # Get all records in the list matching the specified +filter+, organised by +field+.
      #
      # See the #some method for details of how +filter+ works, including
      # specifying +nil+ to get all records.
      #
      # The result is returned as a hash mapping values of +field+ found in the
      # records to arrays of records with that specific value of +field+.
      #
      # Any records found that do not have a value for +field+ will be ignored.
      #
      # The returned records are represented as hashes mapping field names to
      # whatever values those fields have for that record.
      #
      # As a future extension, we could support passing in a list of fields to
      # create a multi-level hash grouping records by a combination of fields, eg
      # +some_by_field([:a,:b])+ produces a hash with each value of +a+ as keys, and
      # values containing hashes mapping each value of +b+ found in records with
      # that particular value for +a+, to actual records with those values for +a+
      # and +b+. Like an SQL GROUP BY with multiple column names.
      def some_by_field(field, filter = nil)
        records = some(filter)
        result = {}
        records.each_entry do |record|
          next unless record.key? field

          field_value = record[field]
          result[field_value] = [] unless result.key? field_value
          result[field_value].push(record)
        end

        result
      end

      ##
      # Validate a record against this list's schema
      # Raises errors if validation fails.
      def validate_record!(record)
        record_data = record.data
        s = schema

        # Actual validation logic

        # 1) All fields in record match schema
        record_data.each_pair do |key, value|
          raise UnknownFieldError.new(record, key) unless s.key?(key)

          fs = s[key]
          validate_field!(record, key, fs, value)
        end
        # 2) All non-optional fields in schema are found in record
        # ABS FIXME
      end

      ##
      # Check all the records in the list (returned by +all+) against the schema
      # (returned by +get_schema+). Returns a hash mapping failing records to their
      # errors.
      def validate
        raise NotImplementedError if schema.nil?

        errors = {}
        all.each do |record|
          validate_record!(record)
        rescue StandardError => e
          errors[record] = e
        end

        errors
      end

      private

      ##
      # Validates a field against a field schema
      # Raises errors if validation fails.
      def validate_field!(record, field_name, field_schema, value)
        case field_schema
        when :string
          raise InvalidFieldError.new(record, field_name, field_schema, "Value #{value} is not a string") unless value.is_a?(String)
        when :symbol
          raise InvalidFieldError.new(record, field_name, field_schema, "Value #{value} is not a symbol") unless value.is_a?(Symbol)
        when :boolean
          raise InvalidFieldError.new(record, field_name, field_schema, "Value #{value} is not a boolean") unless value.is_a?(TrueClass) or value.is_a?(FalseClass)
        when :integer
          raise InvalidFieldError.new(record, field_name, field_schema, "Value #{value} is not an integer") unless value.is_a?(Integer)
        else
          if field_schema.is_a?(Hash)
            kind = field_schema[:kind]
            case kind
            when nil
              raise InvalidSchemaError.new('Complex field schemas need a :kind')
            when :array
              raise InvalidFieldError.new(record, field_name, field_schema, "Value #{value} is not an array") unless value.is_a?(Array)

              element_schema = field_schema[:element_schema]
              value.each do |element|
                validate_field!(record, field_name, element_schema, element)
              end
            when :optional
              if value != nil
                validate_field!(record, field_name, field_schema[:schema], value)
              end
            else
              raise InvalidSchemaError.new("Unknown field-type kind '#{kind}'")
            end
          else
            raise InvalidSchemaError.new("Incomprehensible schema '#{field_schema}'")
          end
        end
      end
    end
  end
end
