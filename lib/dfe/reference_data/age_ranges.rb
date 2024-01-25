module DfE
  module ReferenceData
    module AgeRanges
      AGE_RANGES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          (THREE_TO_ELEVEN = [3, 11].freeze) => { option: :main, levels: [:primary] },
          (FIVE_TO_ELEVEN = [5, 11].freeze) => { option: :main, levels: [:primary] },
          (ELEVEN_TO_SIXTEEN = [11, 16].freeze) => { option: :main, levels: [:secondary] },
          (ELEVEN_TO_EIGHTEEN = [11, 18].freeze) => { option: :main, levels: [:secondary] },
          (ZERO_TO_FIVE = [0, 5].freeze) => { option: :additional },
          (TWO_TO_SEVEN = [2, 7].freeze) => { option: :additional, levels: [:primary] },
          (TWO_TO_ELEVEN = [2, 11].freeze) => { option: :additional, levels: [:primary] },
          (TWO_TO_NINETEEN = [2, 19].freeze) => { option: :additional, levels: [:secondary] },
          (THREE_TO_SEVEN = [3, 7].freeze) => { option: :main, levels: [:primary] },
          (THREE_TO_EIGHT = [3, 8].freeze) => { option: :additional, levels: [:primary] },
          (THREE_TO_NINE = [3, 9].freeze) => { option: :additional, levels: [:primary] },
          (THREE_TO_SIXTEEN = [3, 16].freeze) => { option: :additional, levels: [:secondary] },
          (FOUR_TO_ELEVEN = [4, 11].freeze) => { option: :additional, levels: [:primary] },
          (FOUR_TO_NINETEEN = [4, 19].freeze) => { option: :additional, levels: [:secondary] },
          (FIVE_TO_NINE = [5, 9].freeze) => { option: :additional, levels: [:primary] },
          (FIVE_TO_FOURTEEN = [5, 14].freeze) => { option: :additional, levels: %i[primary secondary] },
          (FIVE_TO_EIGHTEEN = [5, 18].freeze) => { option: :additional, levels: [:secondary] },
          (SEVEN_TO_ELEVEN = [7, 11].freeze) => { option: :additional, levels: [:primary] },
          (SEVEN_TO_FOURTEEN = [7, 14].freeze) => { option: :additional, levels: %i[primary secondary] },
          (SEVEN_TO_SIXTEEN = [7, 16].freeze) => { option: :additional, levels: [:secondary] },
          (SEVEN_TO_EIGHTEEN = [7, 18].freeze) => { option: :additional, levels: [:secondary] },
          (NINE_TO_THIRTEEN = [9, 13].freeze) => { option: :additional, levels: [:secondary] },
          (NINE_TO_FOURTEEN = [9, 14].freeze) => { option: :additional, levels: [:secondary] },
          (NINE_TO_SIXTEEN = [9, 16].freeze) => { option: :additional, levels: [:secondary] },
          (ELEVEN_TO_NINETEEN = [11, 19].freeze) => { option: :additional, levels: [:secondary] },
          (THIRTEEN_TO_EIGHTEEN = [13, 18].freeze) => { option: :additional, levels: [:secondary] },
          (FOURTEEN_TO_EIGHTEEN = [14, 18].freeze) => { option: :additional, levels: [:secondary] },
          (FOURTEEN_TO_NINETEEN = [14, 19].freeze) => { option: :additional, levels: [:secondary] }
        }.freeze,
        schema: {
          id: {
            kind: :array,
            element_schema: :integer
          },
          option: :symbol,
          levels: {
            kind: :array,
            element_schema: :symbol
          }
        }
      )

      HESA_CODE_SETS = {
        '13909'	=> THREE_TO_SEVEN,
        '13911'	=> THREE_TO_NINE,
        '13912'	=> THREE_TO_ELEVEN,
        '13913'	=> FIVE_TO_NINE,
        '13914'	=> FIVE_TO_ELEVEN,
        '13915'	=> SEVEN_TO_ELEVEN,
        '13916'	=> SEVEN_TO_FOURTEEN,
        '13917' => NINE_TO_FOURTEEN,
        '13918'	=> ELEVEN_TO_SIXTEEN,
        '13919'	=> ELEVEN_TO_NINETEEN
      }.freeze

      COURSE_LEVELS = {
        early_years: [ZERO_TO_FIVE],
        primary: [
          TWO_TO_SEVEN,
          TWO_TO_ELEVEN,
          THREE_TO_SEVEN,
          THREE_TO_EIGHT,
          THREE_TO_NINE,
          THREE_TO_ELEVEN,
          FOUR_TO_ELEVEN,
          FIVE_TO_NINE,
          FIVE_TO_ELEVEN,
          SEVEN_TO_ELEVEN
        ],
        secondary: [
          TWO_TO_NINETEEN,
          THREE_TO_SIXTEEN,
          FOUR_TO_NINETEEN,
          FIVE_TO_FOURTEEN,
          FIVE_TO_EIGHTEEN,
          SEVEN_TO_FOURTEEN,
          SEVEN_TO_SIXTEEN,
          SEVEN_TO_EIGHTEEN,
          NINE_TO_THIRTEEN,
          NINE_TO_FOURTEEN,
          NINE_TO_SIXTEEN,
          ELEVEN_TO_SIXTEEN,
          ELEVEN_TO_EIGHTEEN,
          ELEVEN_TO_NINETEEN,
          THIRTEEN_TO_EIGHTEEN,
          FOURTEEN_TO_EIGHTEEN,
          FOURTEEN_TO_NINETEEN
        ]
      }.freeze
    end
  end
end
