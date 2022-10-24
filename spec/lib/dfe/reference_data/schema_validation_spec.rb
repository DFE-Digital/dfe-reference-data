RSpec.describe Validator do
  let(:test_data) do
    DfE::ReferenceData::HardcodedReferenceList.new(
      # Data
      {
        'good full record' => {
          single_string: 'hello',
          single_symbol: :world,
          single_boolean: true,
          single_integer: 123,
          single_real: 123.456,

          optional_string: 'optional hello',
          optional_symbol: :optional_world,
          optional_boolean: false,
          optional_integer: 456,
          optional_real: 456.789,

          array_string: ['array', 'of', 'strings'],
          array_symbol: %i[array of symbols],
          array_boolean: [true, false],
          array_integer: [1, 2, 3],
          array_real: [1.0, 2.0, 3.0]
        },
        'good sparse record' => {
          single_string: 'goodbye',
          single_symbol: :everybody,
          single_boolean: false,
          single_integer: -1,
          single_real: -123.456
        },
        'missing fields' => {
        },
        'extra fields' => {
          single_string: 'goodbye',
          single_symbol: :everybody,
          single_boolean: false,
          single_integer: -1,
          single_real: -123.456,

          undeclared_field: :rubbish
        },
        'mistyped fields 1' => {
          single_string: :symbol,
          single_symbol: 'string',
          single_boolean: 'not a boolean',
          single_integer: 'not an integer',
          single_real: 'not a real',

          optional_string: :symbol,
          optional_symbol: 'string',
          optional_boolean: 'not a boolean',
          optional_integer: 'not an integer',
          optional_real: 'not a real',

          array_string: [1],
          array_symbol: [1],
          array_boolean: [1],
          array_integer: [1, 2, 'not an integer'],
          array_real: [1.0, 2.0, 3.0, 'not a real']
        },
        'mistyped fields 2' => {
          single_string: 'hello',
          single_symbol: :world,
          single_boolean: true,
          single_integer: 123,
          single_real: 123.456,

          optional_string: 'optional hello',
          optional_symbol: :optional_world,
          optional_boolean: false,
          optional_integer: 456,
          optional_real: 456.789,

          array_string: 'not an array',
          array_symbol: :not_an_array,
          array_boolean: 'not an array',
          array_integer: 'not an array',
          array_real: 'not an array'
        }
      },
      # Schema
      {
        id: :string,
        single_string: :string,
        single_symbol: :symbol,
        single_boolean: :boolean,
        single_integer: :integer,
        single_real: :real,
        optional_string: { kind: :optional, schema: :string },
        optional_symbol: { kind: :optional, schema: :symbol },
        optional_boolean: { kind: :optional, schema: :boolean },
        optional_integer: { kind: :optional, schema: :integer },
        optional_real: { kind: :optional, schema: :real },
        array_string: { kind: :array, element_schema: :string },
        array_symbol: { kind: :array, element_schema: :symbol },
        array_boolean: { kind: :array, element_schema: :boolean },
        array_integer: { kind: :array, element_schema: :integer },
        array_real: { kind: :array, element_schema: :real }
      }
    )
  end

  it 'validates records correctly' do
    errors = described_class.validate_records(test_data.all, test_data.schema)

    expect(errors.keys.map(&:id)).to contain_exactly(
      'missing fields',
      'extra fields',
      'mistyped fields 1',
      'mistyped fields 2'
    )
  end
end
