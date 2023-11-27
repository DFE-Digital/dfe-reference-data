require_relative '../../../../../lib/dfe/reference_data/bigquery/importer'
require 'google/cloud/bigquery'
require 'securerandom'

BIGQUERY_PROJECT = (ENV['BIGQUERY_QA_PROJECT'] || 'rugged-abacus-218110').freeze
BIGQUERY_DATASET = (ENV['BIGQUERY_QA_DATASET'] || 'dfe_reference_data_dev').freeze

TEST_TABLE_NAME = "test_#{SecureRandom.uuid}".freeze

FAKE_VERSION = '1.2.3'.freeze
FAKE_COMMIT = '22596363b3de40b06f981fb85d82312e8c0ed511'.freeze

DfE::ReferenceData::BigQuery::Config.configure do |config|
  config.project = BIGQUERY_PROJECT
  config.dataset = BIGQUERY_DATASET
  config.version = FAKE_VERSION
  config.commit = FAKE_COMMIT
end

# Omit this test if we don't have credentials available
if DfE::ReferenceData::BigQuery::Config.obtain_credentials.any?
  RSpec.describe DfE::ReferenceData::BigQuery do
    let(:test_data) do
      DfE::ReferenceData::HardcodedReferenceList.new(
        {
          'optionals_present' => {
            single_string: 'hello',
            single_symbol: :world,
            single_boolean: true,
            single_integer: 123,
            single_real: 123.456,
            single_datetime: DateTime.new(2022, 0o4, 0o4, 18, 0o0, 0o0),
            single_daterange: Date.new(2021, 0o1, 0o1)..Date.new(2021, 12, 31),

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
            single_datetime: DateTime.new(2022, 0o4, 0o4, 18, 0o0, 0o0),
            single_daterange: Date.new(2021, 0o1, 0o1)..Date.new(2021, 12, 31)
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
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/spec/lib/dfe/reference_data/bigquery/importer_spec.rb',
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

    let(:dataset) do
      project = Google::Cloud::Bigquery.new(
        project: BIGQUERY_PROJECT,
        credentials: DfE::ReferenceData::BigQuery::Config.obtain_credentials,
        retries: 10,
        timeout: 10
      )

      return project.dataset BIGQUERY_DATASET
    end

    after(:context) do
      # Annoyingly, we're not allowed to reference let-bound variables in after blocks, so need to repeat this setup code:

      project = Google::Cloud::Bigquery.new(
        project: BIGQUERY_PROJECT,
        credentials: DfE::ReferenceData::BigQuery::Config.obtain_credentials,
        retries: 10,
        timeout: 10
      )
      table = project.dataset(BIGQUERY_DATASET).table(TEST_TABLE_NAME)
      table.delete if table&.exists?
    end

    it 'imported OK' do
      DfE::ReferenceData::BigQuery::Config.configure do |config|
        config.tables = [[TEST_TABLE_NAME, test_data]]
      end

      # Just need to check it doesn't throw an error
      DfE::ReferenceData::BigQuery.update_tables
    end

    # This is probably not very idiomatic RSpec, suggestions welcome!

    it 'reads back OK' do
      results = []
      dataset.table(TEST_TABLE_NAME).data.all do |row|
        results.append(row)
      end

      expect(results).to contain_exactly(
        {
          id: 'optionals_present',
          single_string: 'hello',
          single_symbol: 'world',
          single_boolean: true,
          single_integer: 123,
          single_real: 123.456,
          single_datetime: DateTime.new(2022, 0o4, 0o4, 18, 0o0, 0o0),
          single_daterange: {
            begin: Date.new(2021, 0o1, 0o1),
            end: Date.new(2021, 12, 31)
          },

          optional_string: 'optional hello',
          optional_symbol: 'optional_world',
          optional_boolean: false,
          optional_integer: 456,
          optional_real: 456.789,

          array_string: ['array', 'of', 'strings'],
          array_symbol: ['array', 'of', 'symbols'],
          array_boolean: [true, false],
          array_integer: [1, 2, 3],
          array_real: [1.0, 2.0, 3.0],

          map: [
            {
              key: 'food',
              value: 'Cheese'
            },
            { key: 'drink',
              value: 'Irn Bru' }
          ]
        },
        {
          id: 'optionals_absent',
          single_string: 'goodbye',
          single_symbol: 'everybody',
          single_boolean: false,
          single_integer: -1,
          single_real: -123.456,
          single_datetime: DateTime.new(2022, 0o4, 0o4, 18, 0o0, 0o0),
          single_daterange: {
            begin: Date.new(2021, 0o1, 0o1),
            end: Date.new(2021, 12, 31)
          },

          optional_string: nil,
          optional_symbol: nil,
          optional_boolean: nil,
          optional_integer: nil,
          optional_real: nil,

          array_string: [],
          array_symbol: [],
          array_boolean: [],
          array_integer: [],
          array_real: [],

          map: []
        }
      )
    end

    it 'metadata reads back OK' do
      expect(dataset.table(TEST_TABLE_NAME).description).to eq 'A list of dummy data (see https://github.com/DFE-Digital/dfe-reference-data/blob/main/spec/lib/dfe/reference_data/bigquery/importer_spec.rb for more details)'
      expect(dataset.table(TEST_TABLE_NAME).fields.map do |x|
               [x.name, x.description]
             end).to contain_exactly(['array_boolean', nil],
                                     ['array_integer', nil],
                                     ['array_real', nil],
                                     ['array_string', 'An array of strings'],
                                     ['single_real', nil],
                                     ['single_string', 'A single string'],
                                     ['array_symbol', nil], ['id', 'An ID'], ['map', 'A map'],
                                     ['optional_boolean', nil],
                                     ['single_daterange', nil], ['single_datetime', nil], ['single_integer', nil],
                                     ['optional_integer', nil], ['optional_real', nil], ['optional_string', 'An optional string'], ['optional_symbol', nil], ['single_boolean', nil],
                                     ['single_symbol', nil])
    end
  end
else
  puts 'BigQuery credentials missing: Add credentials for importer_spec.rb to run'
end
