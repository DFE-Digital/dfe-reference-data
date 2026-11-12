require 'csv'
require 'securerandom'

module DfE
  module ReferenceData
    module Generators
      # Builds a per-campus hash from the raw CSV export in
      # lib/dfe/reference_data/raw_data/campusdata.csv.
      #
      # Each CSV row is one campus of one HE provider. The source data has no
      # id column, so each row is assigned a freshly generated UUID.
      class CampusData
        RAW_DATA_PATH = File.expand_path('../raw_data/campusdata.csv', __dir__)

        class << self
          # Returns the dataset as a Hash keyed by a generated UUID:
          #   { "<uuid>" => { provider_name:, ukprn:, instid:, name:, country:, postcode:, latitude:, longitude: } }
          def generate(csv_path = RAW_DATA_PATH)
            CSV.foreach(csv_path, headers: true).each_with_object({}) do |row, dataset|
              dataset[SecureRandom.uuid] = campus(row)
            end
          end

          # Returns the dataset formatted as a Ruby hash literal string.
          def generate_ruby_literal(csv_path = RAW_DATA_PATH)
            DfE::ReferenceData::Helpers::RubyHashLiteral.call(generate(csv_path))
          end

          private

          def clean(value)
            value.to_s.strip
          end

          def campus(row)
            required(row).merge(optional(row).compact.reject { |_, value| value == '' })
          end

          # Always present, even when blank in the source data (eg a handful
          # of rows have no CampusName).
          def required(row)
            {
              provider_name: clean(row['ProviderName']),
              ukprn: clean(row['UKPRN']),
              instid: clean(row['INSTID']),
              name: clean(row['CampusName'])
            }
          end

          # Omitted entirely when blank/unknown in the source data.
          def optional(row)
            {
              country: clean(row['CampusCountry']),
              postcode: clean(row['CampusPostcode']),
              latitude: coordinate(row['CampusLatitude']),
              longitude: coordinate(row['CampusLongitude'])
            }
          end

          # A handful of rows carry the literal string "NULL" instead of a
          # coordinate.
          def coordinate(value)
            value = clean(value)
            Float(value) unless value.empty? || value == 'NULL'
          end
        end
      end
    end
  end
end
