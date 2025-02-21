require 'tzinfo'
require 'time'
require 'date'
require 'net/http'
require 'json'
require 'byebug'

module DfE
  module ReferenceData
    module ITT
      CYCLES_SCHEMA = {
        id: { kind: :code, pattern: /^[0-9]{4}-[0-9]{4}$/ },
        find_opens: :datetime,
        apply_opens: :datetime,
        apply_1_deadline: { kind: :optional, schema: :datetime },
        apply_2_deadline: :datetime,
        provider_decision_deadline: :datetime,
        find_closes: :datetime,
        non_working_days: { kind: :map, key: :symbol, value: :daterange }
      }.freeze

      CYCLES_FIELD_DESCRIPTIONS = {
        id: 'A unique ID of the form `YYYY-YYYY`, identifying the opening and closing years of the recruitment phase of the cycle (eg, `2018-2019` for the cycle where the application deadlines are in 2019)',
        find_opens: 'The point at which Find Postgraduate Teacher Training starts showing courses in this cycle',
        apply_opens: 'The point at which Apply For Teacher Training starts allowing applications to courses in this cycle',
        apply_1_deadline: 'The point at which Apply For Teacher Training stops accepting apply 1 applications to courses in this cycle',
        apply_2_deadline: 'The point at which Apply For Teacher Training stops accepting apply 2 applications to courses in this cycle',
        provider_decision_deadline: 'The point at which unresolved applications for courses in this cycle are rejected automatically, so all provider application decisions must have been made',
        find_closes: 'The point at which Find Postgraduate Teacher Training stops showing courses in this cycle',
        non_working_days: 'Non-working-day periods within this cycle (the symbols being names such as `christmas` and `easter`'
      }.freeze

      # Timezone used to specify dates+times in this file
      TIMEZONE = TZInfo::Timezone.get('Europe/London')

      def self.make_local_time(*args)
        TIMEZONE.local_to_utc(DateTime.parse(*args))
      end

      def self.fetch_cycles_data
        url = URI('https://www.apply-for-teacher-training.service.gov.uk/publications/recruitment-cycle-timetables.json')
        response = Net::HTTP.get(url)
        JSON.parse(response)
      end

      def self.format_year_range(year)
        "#{year - 1}-#{year}"
      end

      def self.holidays(cycle)
        non_working_days = {}
        non_working_days[:christmas] = Date.parse(cycle['christmas_holiday_range'][0])..Date.parse(cycle['christmas_holiday_range'][1]) if cycle['christmas_holiday_range']
        non_working_days[:easter] = Date.parse(cycle['easter_holiday_range'][0])..Date.parse(cycle['easter_holiday_range'][1]) if cycle['easter_holiday_range']
        non_working_days
      end

      def self.build_cycle(cycle)
        #year = format_year_range(cycle['recruitment_cycle_year'])
        {
          find_opens: make_local_time(cycle['find_opens_at']),
          apply_opens: make_local_time(cycle['apply_opens_at']),
          apply_1_deadline: make_local_time(cycle['apply_deadline_at']),
          apply_2_deadline: make_local_time(cycle['apply_deadline_at']),
          provider_decision_deadline: make_local_time(cycle['reject_by_default_at']),
          find_closes: make_local_time(cycle['find_closes_at']),
          non_working_days: holidays(cycle)
        }
      end

      def self.build_cycles(data)
        data['data'].each_with_object({}) do |cycle, hash|
          year = format_year_range(cycle['recruitment_cycle_year'])
          hash[year] = build_cycle(cycle)
        end
        byebug
      end

      begin
        CYCLES = DfE::ReferenceData::HardcodedReferenceList.new(
          build_cycles(fetch_cycles_data),
          schema: CYCLES_SCHEMA,
          list_description: 'Initial teacher training recruitment cycles.',
          list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_itt.md#dfereferencedataittcycles',
          field_descriptions: CYCLES_FIELD_DESCRIPTIONS
        )
      rescue StandardError => e
        warn "Failed to fetch cycles data: #{e.message}"
        CYCLES = DfE::ReferenceData::HardcodedReferenceList.new(
          {},
          schema: CYCLES_SCHEMA,
          list_description: 'Initial teacher training recruitment cycles.',
          list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_itt.md#dfereferencedataittcycles',
          field_descriptions: CYCLES_FIELD_DESCRIPTIONS
        )
      end
      #       CYCLES = DfE::ReferenceData::HardcodedReferenceList.new(
      #         {
      #           '2018-2019' => {
      #             find_opens: make_local_time(2018, 10, 6, 9),
      #             apply_opens: make_local_time(2018, 10, 13, 9),
      #             apply_1_deadline: make_local_time(2019, 8, 24, 18),
      #             apply_2_deadline: make_local_time(2019, 9, 18, 18),
      #             provider_decision_deadline: make_local_time(2019, 9, 29, 23, 59, 59),
      #             find_closes: make_local_time(2019, 10, 3, 23, 59, 59),
      #             non_working_days: {
      #               christmas: Date.new(2018, 12, 20)..Date.new(2019, 1, 1),
      #             }
      #           },
      #           '2019-2020' => {
      #             find_opens: make_local_time(2019, 10, 6, 9),
      #             apply_opens: make_local_time(2019, 10, 13, 9),
      #             apply_1_deadline: make_local_time(2020, 8, 24, 18),
      #             apply_2_deadline: make_local_time(2020, 9, 18, 18),
      #             provider_decision_deadline: make_local_time(2020, 9, 29, 23, 59, 59),
      #             find_closes: make_local_time(2020, 10, 3, 23, 59, 59),
      #             non_working_days: {}
      #           },
      #           '2020-2021' => {
      #             find_opens: make_local_time(2020, 10, 6, 9),
      #             apply_opens: make_local_time(2020, 10, 13, 9),
      #             apply_1_deadline: make_local_time(2021, 9, 7, 18),
      #             apply_2_deadline: make_local_time(2021, 9, 21, 18),
      #             provider_decision_deadline: make_local_time(2021, 9, 29, 23, 59, 59),
      #             find_closes: make_local_time(2021, 10, 4, 23, 59, 59),
      #             non_working_days: {
      #               christmas: Date.new(2020, 12, 20)..Date.new(2021, 1, 1),
      #               easter: Date.new(2021, 4, 2)..Date.new(2021, 4, 16)
      #             }
      #           },
      #           '2021-2022' => {
      #             find_opens: make_local_time(2021, 10, 5, 9),
      #             apply_opens: make_local_time(2021, 10, 12, 9),
      #             apply_1_deadline: make_local_time(2022, 9, 6, 18), # 1st Tuesday of September
      #             apply_2_deadline: make_local_time(2022, 9, 20, 18), # 2 weeks after Apply 1 deadline
      #             provider_decision_deadline: make_local_time(2022, 9, 28, 23, 59, 59), # 1 week and a day after Apply 2 deadline
      #             find_closes: make_local_time(2022, 10, 3, 23, 59, 59), # The evening before find opens in the new cycle
      #             non_working_days: {
      #               christmas: Date.new(2021, 12, 14)..Date.new(2022, 1, 16),
      #               easter: Date.new(2022, 4, 4)..Date.new(2022, 4, 18)
      #             }
      #           },
      #           '2022-2023' => {
      #             find_opens: make_local_time(2022, 10, 4, 9), # First Tuesday of October
      #             apply_opens: make_local_time(2022, 10, 11, 9), # Second Tuesday of October
      #             apply_1_deadline: make_local_time(2023, 9, 5, 18), # 1st Tuesday of September
      #             apply_2_deadline: make_local_time(2023, 9, 19, 18), # 2 weeks after Apply 1 deadline
      #             provider_decision_deadline: make_local_time(2023, 9, 27, 23, 59, 59), # 1 week and a day after Apply 2 deadline
      #             find_closes: make_local_time(2023, 10, 2, 23, 59, 59), # The evening before find opens in the new cycle
      #             non_working_days: {
      #               christmas: Date.new(2022, 12, 19)..Date.new(2023, 1, 6),
      #               easter: Date.new(2023, 3, 27)..Date.new(2023, 4, 10)
      #             }
      #           },
      #           '2023-2024' => {
      #             find_opens: make_local_time(2023, 10, 3, 9), # First Tuesday of October
      #             apply_opens: make_local_time(2023, 10, 10, 9), # Second Tuesday of October
      #             apply_1_deadline: make_local_time(2024, 9, 3, 18), # 1st Tuesday of September
      #             apply_2_deadline: make_local_time(2024, 9, 17, 18), # 2 weeks after Apply 1 deadline
      #             provider_decision_deadline: make_local_time(2024, 9, 25, 23, 59, 59), # 1 week and a day after Apply 2 deadline
      #             find_closes: make_local_time(2024, 9, 30, 23, 59, 59), # The evening before find opens in the new cycle
      #             non_working_days: {
      #               christmas: Date.new(2023, 12, 18)..Date.new(2024, 1, 5),
      #               easter: Date.new(2024, 3, 18)..Date.new(2024, 4, 1)
      #             }
      #           },
      #           '2024-2025' => {
      #             find_opens: make_local_time(2024, 10, 1, 9), # First Tuesday of October
      #             apply_opens: make_local_time(2024, 10, 8, 9), # Second Tuesday of October
      #             apply_1_deadline: nil, # This deadline is not applicable for this cycle
      #             apply_2_deadline: make_local_time(2025, 9, 16, 18), # 3rd Tuesday in September. This is the final and only deadline to send ITT applications in the cycle
      #             provider_decision_deadline: make_local_time(2025, 9, 24, 23, 59, 59), # 1 week and a day after Apply 2 deadline
      #             find_closes: make_local_time(2025, 9, 30, 23, 59, 59), # The evening before find opens in the new cycle
      #             non_working_days: {
      #               christmas: Date.new(2024, 12, 16)..Date.new(2025, 1, 3),
      #               easter: Date.new(2025, 4, 7)..Date.new(2025, 4, 21)
      #             }
      #           },
      #           '2025-2026' => {
      #             # For published dates, see: https://www.gov.uk/government/publications/recruiting-postgraduate-trainee-teachers-recruitment-cycle-dates/recruiting-postgraduate-trainee-teachers-recruitment-cycle-dates
      #             find_opens: make_local_time(2025, 10, 1, 9), # Wednesday, first weekday in October
      #             apply_opens: make_local_time(2025, 10, 8, 9), # Second Wednesday of October, one week after find opens
      #             apply_1_deadline: nil, # This deadline is not applicable for this cycle
      #             apply_2_deadline: make_local_time(2026, 9, 16, 18), # 3rd Wednesday in September. This is the final and only deadline to send ITT applications in the cycle
      #             provider_decision_deadline: make_local_time(2026, 9, 24, 23, 59, 59), # 1 week and a day after Apply 2 deadline
      #             find_closes: make_local_time(2026, 9, 30, 23, 59, 59), # The evening before find opens in the new cycle, estimated as of 15 October 2024
      #             non_working_days: {
      #               christmas: Date.new(2025, 12, 22)..Date.new(2026, 1, 2),
      #               easter: Date.new(2026, 3, 30)..Date.new(2026, 4, 10)
      #             }
      #           }
      #         },
      #         schema: CYCLES_SCHEMA,
      #         list_description: 'Initial teacher training recruitment cycles.',
      #         list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_itt.md#dfereferencedataittcycles',
      #         field_descriptions: CYCLES_FIELD_DESCRIPTIONS
      #       )
    end
  end
end
