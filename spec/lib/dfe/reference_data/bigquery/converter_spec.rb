require_relative '../../../../../lib/dfe/reference_data/bigquery/converter'
require 'sqlite3'
require 'securerandom'

RSpec.describe DfE::ReferenceData::BigQuery::Converter do
  let(:test_data) do
    DfE::ReferenceData::HardcodedReferenceList.new(
      {
        'optionals_present' => {
          single_string: 'hello',
          single_symbol: :world,
          single_boolean: true,
          single_integer: 123,
          single_real: 123.456,
          single_datetime: DateTime.new(2022, 4, 4, 18, 0, 0),
          single_daterange: Date.new(2021, 1, 1)..Date.new(2021, 12, 31),

          optional_string: 'optional hello',
          optional_symbol: :optional_world,
          optional_boolean: false,
          optional_integer: 456,
          optional_real: 456.789,

          array_string: ['array', 'of', 'strings'],
          array_symbol: %i[array of symbols],
          array_boolean: [true, false],
          array_integer: [1, 2, 3],
          array_real: [1.0, 2.0, 3.0],

          map: {
            food: 'Cheese',
            drink: 'Irn Bru'
          }
        },
        'optionals_absent' => {
          single_string: 'goodbye',
          single_symbol: :everybody,
          single_boolean: false,
          single_integer: -1,
          single_real: -123.456,
          single_datetime: DateTime.new(2022, 4, 4, 18, 0, 0),
          single_daterange: Date.new(2021, 1, 1)..Date.new(2021, 12, 31)
        }
      },
      schema: {
        id: :string,
        single_string: :string,
        single_symbol: :symbol,
        single_boolean: :boolean,
        single_integer: :integer,
        single_real: :real,
        single_datetime: :datetime,
        single_daterange: :daterange,

        optional_string: { kind: :optional, schema: :string },
        optional_symbol: { kind: :optional, schema: :symbol },
        optional_boolean: { kind: :optional, schema: :boolean },
        optional_integer: { kind: :optional, schema: :integer },
        optional_real: { kind: :optional, schema: :real },

        array_string: { kind: :array, element_schema: :string },
        array_symbol: { kind: :array, element_schema: :symbol },
        array_boolean: { kind: :array, element_schema: :boolean },
        array_integer: { kind: :array, element_schema: :integer },
        array_real: { kind: :array, element_schema: :real },

        map: { kind: :map, key: :symbol, value: :string }
      },
      list_description: 'A list of dummy data',
      list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/spec/lib/dfe/reference_data/bigquery/converter_spec.rb',
      field_descriptions: {
        id: 'An ID',
        single_string: 'A single string',
        optional_string: 'An optional string',
        array_string: 'An array of strings',
        map: 'A map',
        nonexistant_field: 'A field that does not exist'
      }
    )
  end

  let(:version) { DfE::ReferenceData::VERSION }
  let(:versioned_output_file) { "reference_data_v#{version}.sqlite3" }

  before do
    allow($stdout).to receive(:puts)
  end

  after(:each) do
    File.delete(versioned_output_file) if File.exist?(versioned_output_file)
  end

  it 'creates an SQLite database and tables with versioned filename' do
    DfE::ReferenceData::BigQuery::Converter.convert_to_sqlite(versioned_output_file, [['test_table', test_data]])

    expect(File).to exist(versioned_output_file)

    db = SQLite3::Database.new(versioned_output_file)
    tables = db.execute("SELECT name FROM sqlite_master WHERE type='table'")
    expect(tables.flatten).to include('test_table')

    columns = db.execute('PRAGMA table_info(test_table)')
    expect(columns.map { |col| col[1] }).to include('id', 'single_string', 'optional_string', 'array_string', 'map')
  end

  it 'inserts the data correctly with versioned filename' do
    DfE::ReferenceData::BigQuery::Converter.convert_to_sqlite(versioned_output_file, [['test_table', test_data]])

    expect(File).to exist(versioned_output_file)

    db = SQLite3::Database.new(versioned_output_file)
    rows = db.execute('SELECT * FROM test_table')
    expect(rows.size).to eq(2)

    row_with_optionals = rows.find { |row| row[0] == 'optionals_present' }
    expect(row_with_optionals[1..].map(&:to_s)).to include(
      'hello',
      'world',
      '1', # SQLite3 boolean
      '123',
      '123.456',
      '2022-04-04 18:00:00',
      '2021-01-01,2021-12-31',
      'optional hello',
      'optional_world',
      '0',
      '456',
      '456.789',
      'array,of,strings',
      'array,of,symbols',
      '1,0', # SQLite3 boolean array
      '1,2,3',
      '1.0,2.0,3.0',
      'food=Cheese,drink=Irn Bru'
    )
  end

  it 'does not fail with missing data' do
    DfE::ReferenceData::BigQuery::Converter.convert_to_sqlite(versioned_output_file, [['test_table', test_data]])

    expect(File).to exist(versioned_output_file)

    db = SQLite3::Database.new(versioned_output_file)
    rows = db.execute("SELECT * FROM test_table WHERE id = 'nonexistent'")
    expect(rows).to be_empty
  end

  it 'handles different data edge cases' do
    edge_cases_data = DfE::ReferenceData::HardcodedReferenceList.new(
      {
        'edge_cases' => {
          single_string: '',
          single_symbol: :edge,
          single_boolean: true,
          single_integer: (2**63) - 1, # Maximum 64-bit integer
          single_real: -Float::INFINITY,
          single_datetime: DateTime.new(9999, 12, 31, 23, 59, 59),
          single_daterange: Date.new(1, 1, 1)..Date.new(9999, 12, 31),

          optional_string: nil,
          optional_symbol: nil,
          optional_boolean: nil,
          optional_integer: nil,
          optional_real: nil,

          array_string: [''],
          array_symbol: %i[],
          array_boolean: [],
          array_integer: [0, -1, 1],
          array_real: [0.0, Float::INFINITY, -Float::INFINITY],

          map: { very_large_key: 'value', key: nil }
        }
      },
      schema: {
        id: :string,
        single_string: :string,
        single_symbol: :symbol,
        single_boolean: :boolean,
        single_integer: :integer,
        single_real: :real,
        single_datetime: :datetime,
        single_daterange: :daterange,

        optional_string: { kind: :optional, schema: :string },
        optional_symbol: { kind: :optional, schema: :symbol },
        optional_boolean: { kind: :optional, schema: :boolean },
        optional_integer: { kind: :optional, schema: :integer },
        optional_real: { kind: :optional, schema: :real },

        array_string: { kind: :array, element_schema: :string },
        array_symbol: { kind: :array, element_schema: :symbol },
        array_boolean: { kind: :array, element_schema: :boolean },
        array_integer: { kind: :array, element_schema: :integer },
        array_real: { kind: :array, element_schema: :real },

        map: { kind: :map, key: :symbol, value: :string }
      }
    )

    DfE::ReferenceData::BigQuery::Converter.convert_to_sqlite(versioned_output_file, [['edge_cases', edge_cases_data]])

    expect(File).to exist(versioned_output_file)

    db = SQLite3::Database.new(versioned_output_file)
    rows = db.execute('SELECT * FROM edge_cases')
    expect(rows.size).to eq(1)

    row = rows.first
    expect(row).to include('', 'edge', 1, 9_223_372_036_854_775_807, '-Infinity', '9999-12-31 23:59:59', '0001-01-01,9999-12-31')
    expect(row).to include('') # Empty string in array
  end

  it 'raises an error when converting value for SQLite fails' do
    allow(DfE::ReferenceData::BigQuery::Converter).to receive(:convert_value_for_sqlite).and_raise(StandardError.new('convert_value_for_sqlite error'))

    expect do
      DfE::ReferenceData::BigQuery::Converter.convert_to_sqlite(versioned_output_file, [['test_table', test_data]])
    end.to raise_error(StandardError, /convert_value_for_sqlite error/)
  end

  it 'closes the database even if an exception is raised' do
    db = instance_double('SQLite3::Database')
    allow(SQLite3::Database).to receive(:new).and_return(db)
    allow(db).to receive(:close)
    allow(db).to receive(:execute).and_raise(SQLite3::SQLException.new('Test error'))

    expect do
      DfE::ReferenceData::BigQuery::Converter.convert_to_sqlite(versioned_output_file, [['test_table', test_data]])
    end.to raise_error(StandardError)

    expect(db).to have_received(:close)
  end

  it 'raises an error if generating the CREATE TABLE SQL fails' do
    allow(DfE::ReferenceData::BigQuery::Converter).to receive(:generate_create_table_sql).and_raise(StandardError.new('generate_create_table_sql error'))

    expect do
      DfE::ReferenceData::BigQuery::Converter.convert_to_sqlite(versioned_output_file, [['test_table', test_data]])
    end.to raise_error(StandardError, /Error generating CREATE TABLE SQL for test_table: generate_create_table_sql error/)
  end

  it 'raises an error when converting value for SQLite fails' do
    allow(DfE::ReferenceData::BigQuery::Converter).to receive(:convert_value_for_sqlite).and_raise(StandardError.new('convert_value_for_sqlite error'))

    expect do
      DfE::ReferenceData::BigQuery::Converter.convert_to_sqlite(versioned_output_file, [['test_table', test_data]])
    end.to raise_error(StandardError, /convert_value_for_sqlite error/)
  end

  it 'creates indexes on string and integer columns' do
    DfE::ReferenceData::BigQuery::Converter.convert_to_sqlite(versioned_output_file, [['test_table', test_data]])

    db = SQLite3::Database.new(versioned_output_file)
    indexes = db.execute("SELECT name FROM sqlite_master WHERE type='index' AND tbl_name='test_table'")

    expected_indexes = ['idx_test_table_id', 'idx_test_table_single_string', 'idx_test_table_single_integer']
    created_indexes = indexes.flatten

    expected_indexes.each do |expected_index|
      expect(created_indexes).to include(expected_index)
    end
  end
end
