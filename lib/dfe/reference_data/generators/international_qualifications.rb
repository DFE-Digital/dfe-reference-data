require 'csv'

module DfE
  module ReferenceData
    module Generators
      # Builds the DfE::ReferenceData::InternationalQualifications::LIST hash from
      # the raw CSV export in lib/dfe/reference_data/raw_data.
      #
      # Each CSV row is one grade of one qualification. Rows are grouped by
      # country + country_code + qualification_name + qualification_group (the
      # `id` column carries a stable per-group UUID). Within a group the ENIC
      # fields are constant and collapse to a scalar string (omitted when blank),
      # while the grades collect into arrays.
      class InternationalQualifications
        RAW_DATA_PATH = File.expand_path('../raw_data/international_qualifications.csv', __dir__)

        GROUP_KEYS = ['country', 'country_code', 'qualification_name', 'qualification_group'].freeze
        SCALAR_KEYS = ['enic_band', 'rqf_level', 'enic_notes', 'equivalence_type'].freeze
        RECORD_KEYS = %i[
          country country_code qualification_name qualification_group
          enic_band rqf_level enic_notes equivalence_type grades gcse_equivalent_grades
        ].freeze

        class << self
          # Returns the dataset as a Hash keyed by the per-group UUID:
          #   { "<uuid>" => { country:, country_code:, ..., grades:, ... } }
          def generate(csv_path = RAW_DATA_PATH)
            records = {}

            CSV.foreach(csv_path, headers: true) do |row|
              key = GROUP_KEYS.map { |column| clean(row[column]) }
              record = (records[key] ||= new_record(key))

              collect_id(record, key, clean(row['id']))
              collect_scalars(record, key, row)
              collect_grades(record, row)
            end

            finalise(records)
          end

          # Returns the dataset formatted as a Ruby hash literal string, matching
          # the layout of the LIST constant in
          # lib/dfe/reference_data/international_qualifications.rb.
          def generate_ruby_literal(csv_path = RAW_DATA_PATH)
            format_dataset(generate(csv_path))
          end

          private

          def clean(value)
            value.to_s.strip
          end

          # rqf_level is tokenised ("level 3" => "level_3"); the other scalar
          # columns keep their original spacing.
          def normalise(column, value)
            column == 'rqf_level' ? value.gsub(' ', '_') : value
          end

          def new_record(key)
            {
              id: nil,
              country: key[0], country_code: key[1],
              qualification_name: key[2], qualification_group: key[3].to_sym,
              enic_band: nil, rqf_level: nil, enic_notes: nil, equivalence_type: nil,
              grades: [], gcse_equivalent_grades: []
            }
          end

          # The id is minted per group and repeated on every row; flag any row
          # whose id disagrees with the rest of its group.
          def collect_id(record, key, id)
            if record[:id].nil?
              record[:id] = id
            elsif record[:id] != id
              warn "id mismatch for #{key.inspect}: #{record[:id]} vs #{id}"
            end
          end

          def collect_scalars(record, key, row)
            SCALAR_KEYS.each do |column|
              value = clean(row[column])
              next if value.empty?

              set_scalar(record, key, column, normalise(column, value))
            end
          end

          def set_scalar(record, key, column, value)
            field = column.to_sym
            if record[field].nil?
              record[field] = value
            elsif record[field] != value
              warn "multiple #{column} values for #{key.inspect}: " \
                   "#{record[field].inspect} vs #{value.inspect} (keeping first)"
            end
          end

          def collect_grades(record, row)
            grade = clean(row['current_grade'])
            return if grade.empty?

            record[:grades] << grade
            # Keep only grades whose GCSE-equivalence assessment is "met".
            record[:gcse_equivalent_grades] << grade if clean(row['equivalence_gcse']) == 'met'
          end

          # Key by id, drop the id from the body, de-duplicate the grade arrays
          # and drop blank scalars / empty arrays.
          def finalise(records)
            records.values.each_with_object({}) do |record, dataset|
              record[:grades].uniq!
              record[:gcse_equivalent_grades].uniq!
              id = record.delete(:id)
              dataset[id] = record.reject { |_, value| blank?(value) }
            end
          end

          def blank?(value)
            value.nil? || (value.is_a?(Array) && value.empty?)
          end

          def ruby_literal(value)
            case value
            when Symbol then value.inspect
            when Array then "[#{value.map { |element| ruby_literal(element) }.join(', ')}]"
            else "'#{value.to_s.gsub('\\', '\\\\\\\\').gsub("'", "\\\\'")}'"
            end
          end

          # Mimics the layout of lib/dfe/reference_data/*.rb (see disabilities.rb):
          # the id key on its own line, then a brace-hugging hash of the fields.
          def format_dataset(dataset)
            rows = dataset.map do |id, record|
              fields = RECORD_KEYS.filter_map do |key|
                value = record[key]
                "#{key}: #{ruby_literal(value)}" unless blank?(value)
              end
              "  #{ruby_literal(id)} =>\n  { #{fields.join(",\n    ")} }"
            end
            "{\n#{rows.join(",\n")} }.freeze"
          end
        end
      end
    end
  end
end
