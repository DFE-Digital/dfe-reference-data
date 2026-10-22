require 'json'
require 'fileutils'

module DfE
  module ReferenceData
    module Generators
      ##
      # Writes one JSON file per dataset (as listed in each module's +DATASETS+
      # constant), under a directory tree that mirrors the dataset's Ruby
      # namespace relative to +DfE::ReferenceData+. Each file contains the
      # dataset's documentation metadata (description, usage guidance, docs
      # URL, schema and field descriptions) alongside its data.
      #
      # For example, +DfE::ReferenceData::Degrees::TYPES+ is written to
      # <tt>{output_dir}/degrees/types.json</tt>, and
      # +DfE::ReferenceData::V2::CountriesAndTerritories::COUNTRIES+ is written
      # to <tt>{output_dir}/v2/countries_and_territories/countries.json</tt>.
      class JsonExporter
        def self.generate(output_dir)
          new(output_dir).generate
        end

        def initialize(output_dir)
          @output_dir = output_dir
        end

        def generate
          DfE::ReferenceData::MODULES.each do |mod|
            datasets_for(mod).each do |constant_name, dataset|
              write_dataset(mod, constant_name, dataset)
            end
          end
        end

        private

        def datasets_for(mod)
          datasets = mod.const_get(:DATASETS)

          mod.constants(false).filter_map do |constant_name|
            value = mod.const_get(constant_name)
            [constant_name, value] if datasets.include?(value)
          end
        end

        def write_dataset(mod, constant_name, dataset)
          dir = File.join(@output_dir, *namespace_segments(mod))
          FileUtils.mkdir_p(dir)

          file_path = File.join(dir, "#{constant_name.to_s.underscore}.json")
          File.write(file_path, JSON.pretty_generate(serialize(dataset)))
        end

        def serialize(dataset)
          {
            description: dataset.list_description,
            usage_guidance: dataset.list_usage_guidance,
            docs_url: dataset.list_docs_url,
            schema: dataset.schema,
            field_descriptions: dataset.field_descriptions,
            data: dataset.all.map(&:to_h)
          }
        end

        def namespace_segments(mod)
          mod.name.delete_prefix('DfE::ReferenceData::').split('::').map(&:underscore)
        end
      end
    end
  end
end
