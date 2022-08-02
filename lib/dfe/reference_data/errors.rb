module DfE
  module ReferenceData
    class InvalidSchemaError < StandardError
    end

    class ValidationError < StandardError
      attr_reader :record

      def initialize(message, record)
        @record = record
        super("Validation failed for #{record}: #{message}")
      end
    end

    class UnknownFieldError < ValidationError
      attr_reader :field

      def initialize(record, field)
        @field = field
        super("Field #{field} not declared in the schema", record)
      end
    end

    class MissingFieldError < ValidationError
      attr_reader :field

      def initialize(record, field)
        @field = field
        super("Field #{field} declared as required in the schema, but is missing", record)
      end
    end

    class InvalidFieldError < ValidationError
      attr_reader :field, :schema, :problem

      def initialize(record, field, schema, problem)
        @field = field
        @schema = schema
        @problem = problem
        super("Field #{field} does not match the schema #{schema}: #{problem}", record)
      end
    end
  end
end
