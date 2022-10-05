require_relative '../../../../../lib/dfe/reference_data/bigquery/importer'
require 'google/cloud/bigquery'
require 'securerandom'

BIGQUERY_PROJECT = 'rugged-abacus-218110'.freeze
BIGQUERY_CREDENTIALS_FILE_PATH = '../dfe-reference-data_bigquery_api_key.json'.freeze

BIGQUERY_DATASET = 'dfe_reference_data_dev'.freeze

TEST_TABLE_NAME = "test_#{SecureRandom.uuid}".freeze

FAKE_VERSION = '1.2.3'.freeze
FAKE_COMMIT = '22596363b3de40b06f981fb85d82312e8c0ed511'.freeze

# Omit this test if we don't have credentials available
if File.file?(BIGQUERY_CREDENTIALS_FILE_PATH)

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
          'optionals_absent' => {
            single_string: 'goodbye',
            single_symbol: :everybody,
            single_boolean: false,
            single_integer: -1,
            single_real: -123.456
          }
        },
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

    let(:dataset) do
      project = Google::Cloud::Bigquery.new(
        project: project,
        credentials: JSON.parse(File.read(BIGQUERY_CREDENTIALS_FILE_PATH)),
        retries: 10,
        timeout: 10
      )

      return project.dataset BIGQUERY_DATASET
    end

    it 'imported OK' do
      # Just need to check it doesn't throw an error
      DfE::ReferenceData::BigQuery::Config.configure do |config|
        config.project = BIGQUERY_PROJECT
        config.credentials = JSON.parse(File.read(BIGQUERY_CREDENTIALS_FILE_PATH))
        config.dataset = BIGQUERY_DATASET
        config.tables = [[TEST_TABLE_NAME, test_data]]
        config.version = FAKE_VERSION
        config.commit = FAKE_COMMIT
      end
      DfE::ReferenceData::BigQuery.update_tables
    end

    # This is probably not very idiomatic RSpec, suggestions welcome!

    it 'reads back OK' do
      results = []
      dataset.table(TEST_TABLE_NAME).data.all do |row|
        results.append(row)
      end

      # FIXME: Make array order insensitive
      expect(results).to contain_exactly(
        {
          id: 'optionals_present',
          single_string: 'hello',
          single_symbol: 'world',
          single_boolean: true,
          single_integer: 123,
          single_real: 123.456,

          optional_string: 'optional hello',
          optional_symbol: 'optional_world',
          optional_boolean: false,
          optional_integer: 456,
          optional_real: 456.789,

          array_string: ['array', 'of', 'strings'],
          array_symbol: ['array', 'of', 'symbols'],
          array_boolean: [true, false],
          array_integer: [1, 2, 3],
          array_real: [1.0, 2.0, 3.0]
        },
        {
          id: 'optionals_absent',
          single_string: 'goodbye',
          single_symbol: 'everybody',
          single_boolean: false,
          single_integer: -1,
          single_real: -123.456,

          optional_string: nil,
          optional_symbol: nil,
          optional_boolean: nil,
          optional_integer: nil,
          optional_real: nil,

          array_string: [],
          array_symbol: [],
          array_boolean: [],
          array_integer: [],
          array_real: []
        }
      )
    end

    it 'cleans up afterwards' do
      table = dataset.table(TEST_TABLE_NAME)
      table.delete if table&.exists?
    end
  end
end
