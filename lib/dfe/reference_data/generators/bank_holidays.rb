require 'net/http'
require 'json'
require 'securerandom'
require 'date'
require 'set'

module DfE
  module ReferenceData
    module Generators
      class BankHolidays
        RAW_DATA_PATH = File.expand_path('../raw_data/bank_holidays.json', __dir__)
        BANK_HOLIDAYS_RB_PATH = File.expand_path('../bank_holidays.rb', __dir__)
        ENGLAND_AND_WALES_DIVISION = 'england-and-wales'

        def self.generate_bank_holidays_data_from_raw_data(file_path = RAW_DATA_PATH, rb_path = BANK_HOLIDAYS_RB_PATH)
          records = JSON.parse(File.read(file_path))
          data = records.each_with_object({}) do |record, hash|
            entry = { title: record['title'], date: DateTime.parse(record['date']) }
            entry[:notes] = record['notes'] if record['notes']
            hash[record['id']] = entry
          end
          rewrite_bank_holidays_constant(data, rb_path)
          data
        end

        def self.download_latest_file(file_path = RAW_DATA_PATH)
          url = ENV.fetch('GOV_UK_BANK_HOLIDAYS_URL')
          gov_uk_data = JSON.parse(Net::HTTP.get(URI(url)))

          england_events = gov_uk_data.dig(ENGLAND_AND_WALES_DIVISION, 'events') || []

          existing = JSON.parse(File.read(file_path))
          existing_dates = existing.map { |r| r['date'] }.to_set

          new_events = england_events.reject { |e| existing_dates.include?(e['date']) }
          return [] if new_events.empty?

          new_records = new_events.map do |event|
            record = { 'id' => SecureRandom.uuid, 'title' => event['title'], 'date' => event['date'] }
            record['notes'] = event['notes'] if event['notes'] && !event['notes'].empty?
            record
          end

          updated = (existing + new_records).sort_by { |r| r['date'] }
          File.write(file_path, JSON.pretty_generate(updated))

          new_records
        end

        private_class_method def self.rewrite_bank_holidays_constant(data, rb_path = BANK_HOLIDAYS_RB_PATH)
          source = File.read(rb_path)

          buffer = Parser::Source::Buffer.new("(source)")
          buffer.source = source

          ast = Parser::CurrentRuby.new.parse(buffer)

          rewriter = DfE::ReferenceData::Helpers::ConstantHashRewriter.new(
            constant_name: :BANK_HOLIDAYS_DATA,
            inside: 'DfE::ReferenceData::BankHolidays',
            replacement_source: DfE::ReferenceData::Helpers::RubyHashLiteral.call(data)
          )

          new_source = rewriter.rewrite(buffer, ast)

          File.write(rb_path, new_source)
        end
      end
    end
  end
end
