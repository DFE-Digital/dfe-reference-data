require 'csv'
require 'active_support/core_ext/digest/uuid'

module DfE
  module ReferenceData
    module Generators
      # Builds a per-campus hash from the raw CSV export in
      # lib/dfe/reference_data/raw_data/hesa_provider_campus.csv.
      #
      # Each CSV row is one campus of one HE provider. The source data has no
      # id column, so each row is assigned a UUID (v5) derived from fields
      # that identify it, so regenerating the dataset from the same CSV always
      # produces the same ids.
      class HesaProviderCampus
        RAW_DATA_PATH = File.expand_path('../raw_data/hesa_provider_campus.csv', __dir__)

        # A fixed namespace for the ids this generator produces, itself
        # derived deterministically so it never has to be hand-picked/stored.
        NAMESPACE = Digest::UUID.uuid_v5(Digest::UUID::DNS_NAMESPACE, 'dfe-reference-data.hesa_provider_campus')

        class << self
          # Returns the dataset as a Hash keyed by a UUID derived from the
          # campus's identifying fields:
          #   { "<uuid>" => { provider_name:, ukprn:, instid:, name:, country:, postcode: } }
          def generate(csv_path = RAW_DATA_PATH)
            CSV.foreach(csv_path, headers: true).each_with_object({}) do |row, dataset|
              dataset[id_for(row)] = campus(row)
            end
          end

          # Returns the dataset formatted as a Ruby hash literal string.
          def generate_ruby_literal(csv_path = RAW_DATA_PATH)
            DfE::ReferenceData::Helpers::RubyHashLiteral.call(generate(csv_path))
          end

          private

          # A handful of rows carry the literal string "NULL" instead of
          # leaving a field blank.
          def clean(value)
            value = value.to_s.strip
            value == 'NULL' ? '' : value
          end

          # Derived from UKPRN, INSTID, campus name and postcode, so two
          # distinct campuses that happen to share a name (eg "Midlands")
          # under the same provider still get distinct ids, while rows that
          # are exact duplicates of one another collapse onto the same id.
          def id_for(row)
            key = [row['UKPRN'], row['INSTID'], row['CampusName'], row['CampusPostcode']].map { |value| clean(value) }.join('|')
            Digest::UUID.uuid_v5(NAMESPACE, key)
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
              postcode: clean(row['CampusPostcode'])
            }
          end
        end
      end
    end
  end
end
