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
          single_code: '0000',

          optional_string: 'optional hello',
          optional_symbol: :optional_world,
          optional_boolean: false,
          optional_integer: 456,
          optional_real: 456.789,
          optional_code: '9999',
          optional_datetime: DateTime.new(2022, 0o4, 0o4, 12, 0o0, 0o0),
          optional_daterange: Date.new(2020, 12, 20)..Date.new(2021, 1, 1),

          array_string: ['array', 'of', 'strings'],
          array_symbol: %i[array of symbols],
          array_boolean: [true, false],
          array_integer: [1, 2, 3],
          array_real: [1.0, 2.0, 3.0],
          array_code: ['0000', '9999'],
          map: {
            food: 'Pizza',
            drink: 'Irn Bru'
          }
        },
        'good sparse record' => {
          single_string: 'goodbye',
          single_symbol: :everybody,
          single_boolean: false,
          single_integer: -1,
          single_real: -123.456,
          single_code: '1111'
        },
        'missing fields' => {
          single_symbol: :everybody,
          single_boolean: false,
          single_integer: -1,
          single_real: -123.456,
          single_code: '1111'
        },
        'extra fields' => {
          single_string: 'goodbye',
          single_symbol: :everybody,
          single_boolean: false,
          single_integer: -1,
          single_real: -123.456,

          undeclared_field: :rubbish
        },
        'wrong string' => {
          single_string: :not_a_string,
          single_symbol: :everybody,
          single_boolean: false,
          single_integer: -1,
          single_real: -123.456,
          single_code: '1111'
        },
        'wrong symbol' => {
          single_string: 'goodbye',
          single_symbol: 'not a symbol',
          single_boolean: false,
          single_integer: -1,
          single_real: -123.456,
          single_code: '1111'
        },
        'wrong boolean' => {
          single_string: 'goodbye',
          single_symbol: :everybody,
          single_boolean: 'not a boolean',
          single_integer: -1,
          single_real: -123.456,
          single_code: '1111'
        },
        'wrong integer' => {
          single_string: 'goodbye',
          single_symbol: :everybody,
          single_boolean: false,
          single_integer: 'not an integer',
          single_real: -123.456,
          single_code: '1111'
        },
        'wrong real' => {
          single_string: 'goodbye',
          single_symbol: :everybody,
          single_boolean: false,
          single_integer: -1,
          single_real: 'not a real',
          single_code: '1111'
        },
        'wrong code' => {
          single_string: 'goodbye',
          single_symbol: :everybody,
          single_boolean: false,
          single_integer: -1,
          single_real: -123.456,
          single_code: '11110'
        },
        'wrong array 1' => {
          single_string: 'hello',
          single_symbol: :world,
          single_boolean: true,
          single_integer: 123,
          single_real: 123.456,
          single_code: '0000',

          array_string: 'not an array'
        },
        'wrong array 2' => {
          single_string: 'hello',
          single_symbol: :world,
          single_boolean: true,
          single_integer: 123,
          single_real: 123.456,
          single_code: '0000',

          array_symbol: ['not a symbol']
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
        single_code: { kind: :code, pattern: /^[0-9]{4}$/ },

        optional_string: { kind: :optional, schema: :string },
        optional_symbol: { kind: :optional, schema: :symbol },
        optional_boolean: { kind: :optional, schema: :boolean },
        optional_integer: { kind: :optional, schema: :integer },
        optional_real: { kind: :optional, schema: :real },
        optional_code: { kind: :optional, schema: { kind: :code, pattern: /^[0-9]{4}$/ } },
        optional_datetime: { kind: :optional, schema: :datetime },
        optional_daterange: { kind: :optional, schema: :daterange },

        array_string: { kind: :array, element_schema: :string },
        array_symbol: { kind: :array, element_schema: :symbol },
        array_boolean: { kind: :array, element_schema: :boolean },
        array_integer: { kind: :array, element_schema: :integer },
        array_real: { kind: :array, element_schema: :real },
        array_code: { kind: :array, element_schema: { kind: :code, pattern: /^[0-9]{4}$/ } },

        map: { kind: :map, key: :symbol, value: :string }
      }
    )
  end

  it 'validates records correctly' do
    errors = described_class.validate_records(test_data.all, test_data.schema)

    expect(errors.keys).to contain_exactly(
      'missing fields',
      'extra fields',
      'wrong string',
      'wrong symbol',
      'wrong boolean',
      'wrong integer',
      'wrong real',
      'wrong code',
      'wrong array 1',
      'wrong array 2'
    )

    expect(errors['missing fields'].to_s).to eq 'Validation failed for #<DfE::ReferenceData::Record id=missing fields>: Field single_string declared as required in the schema, but is missing'
    expect(errors['extra fields'].to_s).to eq 'Validation failed for #<DfE::ReferenceData::Record id=extra fields>: Field undeclared_field not declared in the schema'
    expect(errors['wrong string'].to_s).to eq 'Validation failed for #<DfE::ReferenceData::Record id=wrong string>: Field single_string does not match the schema string: Value not_a_string is not a string'
    expect(errors['wrong symbol'].to_s).to eq 'Validation failed for #<DfE::ReferenceData::Record id=wrong symbol>: Field single_symbol does not match the schema symbol: Value not a symbol is not a symbol'
    expect(errors['wrong boolean'].to_s).to eq 'Validation failed for #<DfE::ReferenceData::Record id=wrong boolean>: Field single_boolean does not match the schema boolean: Value not a boolean is not a boolean'
    expect(errors['wrong integer'].to_s).to eq 'Validation failed for #<DfE::ReferenceData::Record id=wrong integer>: Field single_integer does not match the schema integer: Value not an integer is not a integer'
    expect(errors['wrong real'].to_s).to eq 'Validation failed for #<DfE::ReferenceData::Record id=wrong real>: Field single_real does not match the schema real: Value not a real is not a real'
    expect(errors['wrong code'].to_s).to eq 'Validation failed for #<DfE::ReferenceData::Record id=wrong code>: Field single_code does not match the schema {:kind=>:code, :pattern=>/^[0-9]{4}$/}: Value 11110 does not match the field pattern'
    expect(errors['wrong array 1'].to_s).to eq 'Validation failed for #<DfE::ReferenceData::Record id=wrong array 1>: Field array_string does not match the schema {:kind=>:array, :element_schema=>:string}: Value not an array is not an array'
    expect(errors['wrong array 2'].to_s).to eq 'Validation failed for #<DfE::ReferenceData::Record id=wrong array 2>: Field array_symbol does not match the schema symbol: Value not a symbol is not a symbol'
  end
end
