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

TYPE_CLASSES = {
  string: String,
  symbol: Symbol,
  integer: Integer,
  real: Float
}.freeze

class Validator
  def self.validate_simple_field!(record, field_name, field_schema, value)
    if field_schema == :boolean
      raise InvalidFieldError.new(record, field_name, field_schema, "Value #{value} is not a boolean") unless value.is_a?(TrueClass) || value.is_a?(FalseClass)
    else
      desired_class = TYPE_CLASSES[field_schema]
      raise InvalidSchemaError, "Unknown schema type #{field_schema}" unless desired_class
      raise InvalidFieldError.new(record, field_name, field_schema, "Value #{value} is not a #{field_schema}") unless value.is_a?(desired_class)
    end
  end

  def self.validate_complex_field!(record, field_name, field_schema, value)
    kind = field_schema[:kind]
    case kind
    when nil
      raise InvalidSchemaError, 'Complex field schemas need a :kind'
    when :array
      raise InvalidFieldError.new(record, field_name, field_schema, "Value #{value} is not an array") unless value.is_a?(Array)

      element_schema = field_schema[:element_schema]
      value.each do |element|
        validate_simple_field!(record, field_name, element_schema, element)
      end
    when :optional
      validate_simple_field!(record, field_name, field_schema[:schema], value) unless value.nil?
    else
      raise InvalidSchemaError, "Unknown complex field schema kind '#{kind}'"
    end
  end

  ##
  # Validates a field against a field schema
  # Raises errors if validation fails.
  def self.validate_field!(record, field_name, field_schema, value)
    case field_schema
    when Symbol
      validate_simple_field!(record, field_name, field_schema, value)
    when Hash
      validate_complex_field!(record, field_name, field_schema, value)
    else
      raise InvalidSchemaError, "Incomprehensible schema '#{field_schema}'"
    end
  end

  def self.is_optional_field?(field_schema)
    case field_schema
    when Symbol
      false
    when Hash
      # A missing array is as good as an empty array
      ((field_schema[:kind] == :optional) or (field_schema[:kind] == :array))
    else
      raise InvalidSchemaError, "Incomprehensible schema '#{field_schema}'"
    end
  end

  ##
  # Validate a record against a schema
  # Raises errors if validation fails.
  def self.validate_record!(record, schema)
    record_data = record.data

    # Actual validation logic

    # 1) All fields in record match schema
    record_data.each_pair do |key, value|
      raise UnknownFieldError.new(record, key) unless schema.key?(key)

      fs = schema[key]
      validate_field!(record, key, fs, value)
    end
    # 2) All non-optional fields in schema are found in record
    schema.each_pair do |key, field_schema|
      raise MissingFieldError.new(record, key) if !is_optional_field?(field_schema) && !record_data.key?(key)
    end
  end

  ##
  # Check all the records against the schema. Returns a hash mapping failing records to their
  # errors.
  def self.validate_records(records, schema)
    errors = {}
    records.each do |record|
      validate_record!(record, schema)
    rescue StandardError => e
      errors[record] = e
    end
    errors
  end
end

RSpec::Matchers.define :have_all_records_matching_the_schema do
  match do |actual|
    errors = Validator.validate_records(actual.all, actual.schema)
    return errors == {}
  end

  failure_message do |actual|
    errors = Validator.validate_records(actual.all, actual.schema)
    return "had the following errors: #{errors.values}"
  end
end

RSpec.shared_examples 'a list of valid records' do
  it 'has all records matching the schema' do
    expect(described_class).to have_all_records_matching_the_schema
  end
end
