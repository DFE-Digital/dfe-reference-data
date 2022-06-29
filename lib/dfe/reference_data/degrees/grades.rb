module DfE
  module ReferenceData
    module Degrees
      GRADES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '8741765a-13d8-4550-a413-c5a860a59d25' =>
          { hesa_code: '1',
            name: 'First-class honours',
            synonyms: ['First class honours'],
            group: :main_undergrad },
          'e2fe18d4-8655-47cf-ab1a-8c3e0b0f078f' =>
          { hesa_code: '2',
            name: 'Upper second-class honours (2:1)',
            synonyms: ['Upper second class honours', '2:1'],
            group: :main_undergrad },
          '377a46ea-d6c6-4e87-9728-c1f0dd0ef109' =>
          { hesa_code: '3',
            name: 'Lower second-class honours (2:2)',
            synonyms: ['Lower second class honours', '2:2'],
            group: :main_undergrad },
          '7f08cd7c-96d2-4706-9148-32468a6d67f9' =>
          { hesa_code: '4',
            name: 'Undivided second-class honours',
            synonyms: ['Undivided second class honours'],
            group: :other },
          '3d57e5f7-7904-4895-a982-ed953fff3f94' =>
          { hesa_code: '5',
            name: 'Third-class honours',
            synonyms: ['Third class honours'],
            group: :main_undergrad },
          'da6f57ae-7de0-4215-82df-52322129e91f' =>
          { hesa_code: '6',
            name: 'Fourth-class honours',
            synonyms: ['Fourth class honours'],
            group: :other },
          '684d4a75-16ea-4c96-9a40-37cee18f1dec' =>
          { hesa_code: '7',
            name: 'Unclassified',
            synonyms: [],
            group: :other },
          '171a98fc-280d-429a-9163-a380843adfce' =>
          { hesa_code: '8',
            name: 'Aegrotat',
            synonyms: [],
            group: :other },
          '4d3cc9d3-81dd-4457-ae2b-ee0bd298c51e' =>
          { hesa_code: '10',
            name: 'Ordinary degree',
            synonyms: [],
            group: :other  },
          '2db26c4f-59d9-4431-8c92-4396d8e35b2d' =>
          { hesa_code: '11',
            name: 'General degree',
            synonyms: [],
            group: :other },
          '1bb9f02f-da6a-4184-8db0-d43b14ccaf1d' =>
          { hesa_code: '12',
            name: 'Distinction',
            synonyms: [],
            group: :main_postgrad },
          'df874702-2bcc-4aab-adaa-2efdd3a8dec4' =>
          { hesa_code: '13',
            name: 'Merit',
            synonyms: [],
            group: :main_postgrad },
          'aaba4427-287c-4610-a838-1970dd9090c1' =>
          { hesa_code: '14',
            name: 'Pass',
            synonyms: [],
            group: :main_undergrad },
          'f98da8a3-29d2-4be8-938e-2b677463b0d3' =>
          { hesa_code: '98',
            name: 'Not applicable',
            synonyms: [],
            group: :main_postgrad },
          'e74ba915-381d-430f-9562-2a02e1e566bf' =>
          { hesa_code: '99',
            name: 'Unknown',
            synonyms: [],
            group: :main_postgrad }
        }
      )
    end
  end
end
