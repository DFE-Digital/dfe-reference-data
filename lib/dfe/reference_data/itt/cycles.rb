require 'date'

module DfE
  module ReferenceData
    module ITT
      CYCLES_SCHEMA = {
        id: :integer,
        find_opens: :datetime,
        apply_opens: :datetime,
        show_deadline_banner: { kind: :optional, schema: :datetime },
        show_summer_recruitment_banner: { kind: :optional, schema: :datetime },
        apply_1_deadline: :datetime,
        apply_2_deadline: :datetime,
        reject_by_default: :datetime,
        find_closes: :datetime,
        holidays: { kind: :map, key: :symbol, value: :daterange }
      }.freeze

      def self.make_local_time(*args)
        # ABS FIXME: Set time zone appropriately, to replicate original behaviour
        DateTime.new(*args)
      end

      CYCLES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          2019 => {
            find_opens: make_local_time(2018, 10, 6, 9),
            apply_opens: make_local_time(2018, 10, 13, 9),
            apply_1_deadline: make_local_time(2019, 8, 24, 18),
            apply_2_deadline: make_local_time(2019, 9, 18, 18),
            reject_by_default: make_local_time(2021, 9, 29, 23, 59, 59),
            find_closes: make_local_time(2019, 10, 3, 23, 59, 59),
            holidays: {}
          },
          2020 => {
            find_opens: make_local_time(2019, 10, 6, 9),
            apply_opens: make_local_time(2019, 10, 13, 9),
            show_deadline_banner: make_local_time(2020, 8, 1, 9),
            show_summer_recruitment_banner: make_local_time(2020, 7, 1, 9),
            apply_1_deadline: make_local_time(2020, 8, 24, 18),
            apply_2_deadline: make_local_time(2020, 9, 18, 18),
            reject_by_default: make_local_time(2021, 9, 29, 23, 59, 59),
            find_closes: make_local_time(2020, 10, 3, 23, 59, 59),
            holidays: {}
          },
          2021 => {
            find_opens: make_local_time(2020, 10, 6, 9),
            apply_opens: make_local_time(2020, 10, 13, 9),
            show_deadline_banner: make_local_time(2021, 8, 1, 9),
            show_summer_recruitment_banner: make_local_time(2020, 7, 1, 9),
            apply_1_deadline: make_local_time(2021, 9, 7, 18),
            apply_2_deadline: make_local_time(2021, 9, 21, 18),
            reject_by_default: make_local_time(2021, 9, 29, 23, 59, 59),
            find_closes: make_local_time(2021, 10, 4, 23, 59, 59),
            holidays: {
              christmas: Date.new(2020, 12, 20)..Date.new(2021, 1, 1),
              easter: Date.new(2021, 4, 2)..Date.new(2021, 4, 16)
            }
          },
          2022 => {
            find_opens: make_local_time(2021, 10, 5, 9),
            apply_opens: make_local_time(2021, 10, 12, 9),
            show_deadline_banner: make_local_time(2022, 8, 2, 9), # 5 weeks before Apply 1 deadline
            show_summer_recruitment_banner: make_local_time(2022, 7, 1), # 20 working days before reject by default date
            apply_1_deadline: make_local_time(2022, 9, 6, 18), # 1st Tuesday of September
            apply_2_deadline: make_local_time(2022, 9, 20, 18), # 2 weeks after Apply 1 deadline
            reject_by_default: make_local_time(2022, 9, 28, 23, 59, 59), # 1 week and a day after Apply 2 deadline
            find_closes: make_local_time(2022, 10, 3, 23, 59, 59), # The evening before the find opens in the new cycle
            holidays: {
              christmas: Date.new(2021, 12, 14)..Date.new(2022, 1, 16),
              easter: Date.new(2022, 4, 4)..Date.new(2022, 4, 18)
            }
          },
          2023 => {
            find_opens: make_local_time(2022, 10, 4, 9), # First Tuesday of October
            apply_opens: make_local_time(2022, 10, 11, 9), # Second Tuesday of October
            show_deadline_banner: make_local_time(2023, 8, 1, 9), # 5 weeks before Apply 1 deadline
            show_summer_recruitment_banner: make_local_time(2023, 7, 1), # To be defined the dates for this banner
            apply_1_deadline: make_local_time(2023, 9, 5, 18), # 1st Tuesday of September
            apply_2_deadline: make_local_time(2023, 9, 19, 18), # 2 weeks after Apply 1 deadline
            reject_by_default: make_local_time(2023, 9, 27, 23, 59, 59), # 1 week and a day after Apply 2 deadline
            find_closes: make_local_time(2023, 10, 2, 23, 59, 59), # The evening before the find opens in the new cycle
            holidays: {
              christmas: Date.new(2022, 12, 19)..Date.new(2023, 1, 6),
              easter: Date.new(2023, 3, 27)..Date.new(2023, 4, 10)
            }
          },
          2024 => {
            find_opens: make_local_time(2023, 10, 3, 9), # First Tuesday of October
            apply_opens: make_local_time(2023, 10, 10, 9), # Second Tuesday of October
            show_summer_recruitment_banner: make_local_time(2024, 7, 1),
            show_deadline_banner: make_local_time(2024, 7, 30, 9), # 5 weeks before Apply 1 deadline
            apply_1_deadline: make_local_time(2024, 9, 3, 18), # 1st Tuesday of September
            apply_2_deadline: make_local_time(2024, 9, 17, 18), # 2 weeks after Apply 1 deadline
            reject_by_default: make_local_time(2024, 9, 25, 23, 59, 59), # 1 week and a day after Apply 2 deadline
            find_closes: make_local_time(2024, 9, 30, 23, 59, 59), # The evening before the find opens in the new cycle
            holidays: {
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
