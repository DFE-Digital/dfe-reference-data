require 'date'

module DfE
  module ReferenceData
    module Uptime
      # Transforms Upptime's `summary.json` format (an array of services, each with
      # a `dailyMinutesDown` map of date => minutes down) into a hash of records
      # keyed by ID, suitable for passing to a +HardcodedReferenceList+.
      class Transformer
        MINUTES_MONITORED_PER_DAY = 1440

        class << self
          def call(services)
            data = {}

            services.each do |service|
              name = service['name']
              slug = service['slug']

              (service['dailyMinutesDown'] || {}).each do |date_string, minutes_down|
                data[build_id(slug, date_string)] = {
                  name:,
                  slug:,
                  downtime_date: to_downtime_date(date_string),
                  minutes_down:,
                  minutes_monitored: MINUTES_MONITORED_PER_DAY,
                  uptime_pct: calculate_uptime_pct(minutes_down)
                }
              end
            end

            data
          end

          # The reference data format for a single date, as used elsewhere in this gem (eg bank_holidays.rb).
          def to_downtime_date(date_string)
            DateTime.parse(date_string)
          end

          def build_id(slug, date_string)
            "#{slug}-#{date_string}"
          end

          def calculate_uptime_pct(minutes_down)
            uptime_minutes = [MINUTES_MONITORED_PER_DAY - minutes_down, 0].max
            (uptime_minutes / MINUTES_MONITORED_PER_DAY.to_f * 100).round(2)
          end
        end
      end
    end
  end
end
