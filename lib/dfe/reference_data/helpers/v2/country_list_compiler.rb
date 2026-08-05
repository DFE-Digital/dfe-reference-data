require 'csv'

module DfE
  module ReferenceData
    module Helpers
      module V2
        class CountryListCompiler
          attr_reader :all_countries_data, :legacy_codes, :fcdo_codes, :fcdo_codes_index, :legacy_codes_index

          LegacyCountry = Struct.new(:code, :name)
          FCDOCountry = Struct.new(:code, :name, :official_name, :citizen_names)
          # current FCDO list
          FCDO_COUNTRIES = CSV.read('raw_data/FCDO_Geographical_Names_Index_September_2025.csv', headers: false).map do |country|
            FCDOCountry.new(*country)
          end
          LEGACY_COUNTRIES_AND_TERRITORIES = CSV.read('raw_data/legacy_countries.csv').map do |country|
            LegacyCountry.new(*country)
          end

          def initialize
            @legacy_codes = LEGACY_COUNTRIES_AND_TERRITORIES.map(&:code)
            @fcdo_codes = FCDO_COUNTRIES.map(&:code)
            @domicile_codes = @legacy_codes - @fcdo_codes
            build_all_countries_data

            missing_codes = @fcdo_codes - @legacy_codes

            raise "Missing legacy codes: #{missing_codes.join(', ')}" unless missing_codes.empty?
          end

          # columns:
          # code, name, full_name, citizen_name, FCDO_list, Legacy list
          def create_full_csv
            build_all_countries_data
            CSV.open('raw_data/full_countries_and_territories.csv', 'wb') do |csv|
              csv << ['code', 'name', 'full_name', 'citizen_name', 'FCDO_list', 'Legacy_list', 'is_domicile']
              @all_countries_data.each do |country|
                csv << [country[:code], country[:name], country[:full_name], country[:citizen_name], country[:fcdo_list_name], country[:legacy_list_name], @domicile_codes.include?(country[:code])]
              end
            end
          end

          def generate_countries_hash
            @fcdo_codes.each do |code|
              country = @fcdo_codes_index[code]
              puts "\"#{code}\" => { name: \"#{country.name}\", official_name: \"#{country.official_name}\", citizen_names: \"#{country.citizen_names}\" },"
            end
          end

          def generate_territories_hash
            @domicile_codes.each do |code|
              country = @legacy_codes_index[code]
              puts "\"#{code}\" => { name: \"#{country.name}\" },"
            end
          end

          def build_all_countries_data
            compile_all_countries_symbols
            build_indexes
            @all_countries_data = []
            @all_codes.each do |code|
              # code, name, full_name, citizen_name, FCDO_list, Legacy list
              @all_countries_data << {
                code: code,
                name: @legacy_codes_index[code]&.name,
                full_name: @fcdo_codes_index[code]&.official_name,
                citizen_name: @fcdo_codes_index[code]&.citizen_names,
                fcdo_list_name: @fcdo_codes_index[code]&.name,
                legacy_list_name: @legacy_codes_index[code]&.name
              }
            end
          end

          def compile_all_countries_symbols
            @all_codes = (@legacy_codes + @fcdo_codes).uniq
          end

          def build_indexes
            @fcdo_codes_index = {}
            @fcdo_codes.each { |code| @fcdo_codes_index[code] = FCDO_COUNTRIES.find { |country| country.code == code } }

            @legacy_codes_index = {}
            @legacy_codes.each { |code| @legacy_codes_index[code] = LEGACY_COUNTRIES_AND_TERRITORIES.find { |country| country.code == code } }
          end
        end
      end
    end
  end
end
