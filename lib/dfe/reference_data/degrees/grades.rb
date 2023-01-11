module DfE
  module ReferenceData
    module Degrees
      GRADES_SCHEMA = {
        id: :string,
        name: :string,
        hesa_code: { kind: :code, pattern: /^[0-9]+$/ },
        suggestion_synonyms: { kind: :array, element_schema: :string },
        match_synonyms: { kind: :array, element_schema: :string },
        group: :symbol
      }.freeze

      GRADES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '8741765a-13d8-4550-a413-c5a860a59d25' =>
          { hesa_code: '01',
            name: 'First-class honours',
            suggestion_synonyms: ['First class honours with distinction'],
            match_synonyms: [
              'First class honours',
              'First class hons',
              'First',
              'First class'
            ],
            group: :main_undergrad },
          'e2fe18d4-8655-47cf-ab1a-8c3e0b0f078f' =>
          { hesa_code: '02',
            name: 'Upper second-class honours (2:1)',
            suggestion_synonyms: [],
            match_synonyms: ['Upper second class honours', '2:1', '2.1'],
            group: :main_undergrad },
          '377a46ea-d6c6-4e87-9728-c1f0dd0ef109' =>
          { hesa_code: '03',
            name: 'Lower second-class honours (2:2)',
            suggestion_synonyms: [],
            match_synonyms: ['Lower second class honours', '2:2', '2.2'],
            group: :main_undergrad },
          '7f08cd7c-96d2-4706-9148-32468a6d67f9' =>
          { hesa_code: '04',
            name: 'Undivided second-class honours',
            suggestion_synonyms: [],
            match_synonyms: ['Undivided second class honours'],
            group: :other },
          '3d57e5f7-7904-4895-a982-ed953fff3f94' =>
          { hesa_code: '05',
            name: 'Third-class honours',
            suggestion_synonyms: [],
            match_synonyms: ['Third class honours', 'Third'],
            group: :main_undergrad },
          'da6f57ae-7de0-4215-82df-52322129e91f' =>
          { hesa_code: '06',
            name: 'Fourth-class honours',
            suggestion_synonyms: [],
            match_synonyms: ['Fourth class honours'],
            group: :other },
          '684d4a75-16ea-4c96-9a40-37cee18f1dec' =>
          { hesa_code: '07',
            name: 'Unclassified',
            suggestion_synonyms: [],
            match_synonyms: [],
            group: :other },
          '171a98fc-280d-429a-9163-a380843adfce' =>
          { hesa_code: '08',
            name: 'Aegrotat',
            suggestion_synonyms: [],
            match_synonyms: [],
            group: :other },
          '4d3cc9d3-81dd-4457-ae2b-ee0bd298c51e' =>
          { hesa_code: '10',
            name: 'Ordinary degree',
            suggestion_synonyms: [],
            match_synonyms: ['Ordinary'],
            group: :other  },
          '2db26c4f-59d9-4431-8c92-4396d8e35b2d' =>
          { hesa_code: '11',
            name: 'General degree',
            suggestion_synonyms: [],
            match_synonyms: [],
            group: :other },
          '1bb9f02f-da6a-4184-8db0-d43b14ccaf1d' =>
          { hesa_code: '12',
            name: 'Distinction',
            suggestion_synonyms: [],
            match_synonyms: [],
            group: :main_postgrad },
          'df874702-2bcc-4aab-adaa-2efdd3a8dec4' =>
          { hesa_code: '13',
            name: 'Merit',
            suggestion_synonyms: [],
            match_synonyms: [
              'Pass with merit'
            ],
            group: :main_postgrad },
          'aaba4427-287c-4610-a838-1970dd9090c1' =>
          { hesa_code: '14',
            name: 'Pass',
            suggestion_synonyms: [
              'Awarded'
            ],
            match_synonyms: ['Passed'],
            group: :main_undergrad },
          'f98da8a3-29d2-4be8-938e-2b677463b0d3' =>
          { hesa_code: '98',
            name: 'Not applicable',
            suggestion_synonyms: [],
            match_synonyms: ['NA', 'N/A', 'Not classified'],
            group: :main_postgrad },
          'e74ba915-381d-430f-9562-2a02e1e566bf' =>
          { hesa_code: '99',
            name: 'Unknown',
            suggestion_synonyms: [],
            match_synonyms: [],
            group: :main_postgrad }
        },
        schema: GRADES_SCHEMA,
        list_description: 'Grades awarded when a degree is granted',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_degrees.md#dfereferencedatadegreesgrades',
        field_descriptions: {
          id: 'A unique identifier for the grade',
          name: 'The long name of this grade, eg "First-class honours"',
          suggestion_synonyms: 'A list of common alternative names that may be appropriate for this institution',
          match_synonyms: 'A list of common alternative names that are equivalent to this institution. An answer matching a match synonym can be safely matched to this institution.',
          group: 'Degree type, ie `main_postgrad`, `other` or `main_undergrad`',
          hesa_code: 'The HESA DEGCLSS code for this degree grade. (see [DEGCLSS](https://www.hesa.ac.uk/collection/c22053/e/degclss) documentation)'
        }
      )
    end
  end
end
