require 'tzinfo'
require 'time'
require 'date'

module DfE
  module ReferenceData
    module ITT
      CYCLES_SCHEMA = {
        id: { kind: :code, pattern: /^[0-9]{4}-[0-9]{4}$/ },
        find_opens: :datetime,
        apply_opens: :datetime,
        apply_1_deadline: :datetime,
        apply_2_deadline: :datetime,
        provider_decision_deadline: :datetime,
        find_closes: :datetime,
        non_working_days: { kind: :map, key: :symbol, value: :daterange }
      }.freeze

      # Timezone used to specify dates+times in this file
      TIMEZONE = TZInfo::Timezone.get('Europe/London')

      def self.make_local_time(*args)
        TIMEZONE.local_to_utc(DateTime.new(*args))
      end

      CYCLES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '2018-2019' => {
            find_opens: make_local_time(2018, 10, 6, 9),
            apply_opens: make_local_time(2018, 10, 13, 9),
            apply_1_deadline: make_local_time(2019, 8, 24, 18),
            apply_2_deadline: make_local_time(2019, 9, 18, 18),
            provider_decision_deadline: make_local_time(2021, 9, 29, 23, 59, 59),
            find_closes: make_local_time(2019, 10, 3, 23, 59, 59),
            non_working_days: {}
          },
          '2019-2020' => {
            find_opens: make_local_time(2019, 10, 6, 9),
            apply_opens: make_local_time(2019, 10, 13, 9),
            apply_1_deadline: make_local_time(2020, 8, 24, 18),
            apply_2_deadline: make_local_time(2020, 9, 18, 18),
            provider_decision_deadline: make_local_time(2021, 9, 29, 23, 59, 59),
            find_closes: make_local_time(2020, 10, 3, 23, 59, 59),
            non_working_days: {}
          },
          '2020-2021' => {
            find_opens: make_local_time(2020, 10, 6, 9),
            apply_opens: make_local_time(2020, 10, 13, 9),
            apply_1_deadline: make_local_time(2021, 9, 7, 18),
            apply_2_deadline: make_local_time(2021, 9, 21, 18),
            provider_decision_deadline: make_local_time(2021, 9, 29, 23, 59, 59),
            find_closes: make_local_time(2021, 10, 4, 23, 59, 59),
            non_working_days: {
              christmas: Date.new(2020, 12, 20)..Date.new(2021, 1, 1),
              easter: Date.new(2021, 4, 2)..Date.new(2021, 4, 16)
            }
          },
          '2021-2022' => {
            find_opens: make_local_time(2021, 10, 5, 9),
            apply_opens: make_local_time(2021, 10, 12, 9),
            apply_1_deadline: make_local_time(2022, 9, 6, 18), # 1st Tuesday of September
            apply_2_deadline: make_local_time(2022, 9, 20, 18), # 2 weeks after Apply 1 deadline
            provider_decision_deadline: make_local_time(2022, 9, 28, 23, 59, 59), # 1 week and a day after Apply 2 deadline
            find_closes: make_local_time(2022, 10, 3, 23, 59, 59), # The evening before the find opens in the new cycle
            non_working_days: {
              christmas: Date.new(2021, 12, 14)..Date.new(2022, 1, 16),
              easter: Date.new(2022, 4, 4)..Date.new(2022, 4, 18)
            }
          },
          '2022-2023' => {
            find_opens: make_local_time(2022, 10, 4, 9), # First Tuesday of October
            apply_opens: make_local_time(2022, 10, 11, 9), # Second Tuesday of October
            apply_1_deadline: make_local_time(2023, 9, 5, 18), # 1st Tuesday of September
            apply_2_deadline: make_local_time(2023, 9, 19, 18), # 2 weeks after Apply 1 deadline
            provider_decision_deadline: make_local_time(2023, 9, 27, 23, 59, 59), # 1 week and a day after Apply 2 deadline
            find_closes: make_local_time(2023, 10, 2, 23, 59, 59), # The evening before the find opens in the new cycle
            non_working_days: {
              christmas: Date.new(2022, 12, 19)..Date.new(2023, 1, 6),
              easter: Date.new(2023, 3, 27)..Date.new(2023, 4, 10)
            }
          },
          '2023-2024' => {
            find_opens: make_local_time(2023, 10, 3, 9), # First Tuesday of October
            apply_opens: make_local_time(2023, 10, 10, 9), # Second Tuesday of October
            apply_1_deadline: make_local_time(2024, 9, 3, 18), # 1st Tuesday of September
            apply_2_deadline: make_local_time(2024, 9, 17, 18), # 2 weeks after Apply 1 deadline
            provider_decision_deadline: make_local_time(2024, 9, 25, 23, 59, 59), # 1 week and a day after Apply 2 deadline
            find_closes: make_local_time(2024, 9, 30, 23, 59, 59), # The evening before the find opens in the new cycle
            non_working_days: {
              christmas: Date.new(2023, 12, 18)..Date.new(2024, 1, 5),
              easter: Date.new(2024, 3, 18)..Date.new(2024, 4, 1)
            }
          }
        },
        CYCLES_SCHEMA
      )
    end
  end
end
