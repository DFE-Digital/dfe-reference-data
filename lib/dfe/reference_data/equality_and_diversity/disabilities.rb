module DfE
  module ReferenceData
    module EqualityAndDiversity
      DISABILITIES_SCHEMA = {
        id: :string,
        name: :string,
        hint: { kind: :optional, schema: :string },
        hesa_code: { kind: :map,  # Map from DfE::ReferenceData::ITT::CYCLES ID to two-digit HESA disability code
                     key: { kind: :code, pattern: /^[0-9]{4}-[0-9]{4}$/ },
                     value: { kind: :code, pattern: /^[0-9]{2}$/ } },
        kind: { kind: :optional, schema: :symbol }
      }.freeze

      DISABILITIES_AND_HEALTH_CONDITIONS = DfE::ReferenceData::HardcodedReferenceList.new(
        { 'da4faa34-3851-4e04-959a-92ebea3c2b98' =>
          { name: 'Autistic spectrum condition or another condition affecting speech, language, communication or social skills',
            hesa_code: {
              '2019-2020' => '53',
              '2020-2021' => '53',
              '2021-2022' => '53',
              '2022-2023' => '53'
            } },
          'a31b75e7-659d-4547-9654-5fc1015ad2a5' =>
          { name: 'Blindness or a visual impairment not corrected by glasses',
            hesa_code: {
              '2019-2020' => '58',
              '2020-2021' => '58',
              '2021-2022' => '58',
              '2022-2023' => '58'
            } },
          '82e2ad24-5568-4e0b-a362-41666a668fb9' =>
          { name: 'Condition affecting motor, cognitive, social and emotional skills, speech or language since childhood',
            hesa_code: {
              '2022-2023' => '59'
            } },
          'c6302624-b33a-46fb-8dcb-058f21cee0dc' =>
          { name: 'Deafness or a serious hearing impairment',
            hesa_code: {
              '2019-2020' => '57',
              '2020-2021' => '57',
              '2021-2022' => '57',
              '2022-2023' => '57'
            } },
          'f9624005-d7aa-45b3-bfce-ef2e2779f631' =>
          { name: 'Dyslexia, dyspraxia or attention deficit hyperactivity disorder (ADHD) or another learning difference',
            hesa_code: {
              '2019-2020' => '51',
              '2020-2021' => '51',
              '2021-2022' => '51',
              '2022-2023' => '51'
            } },
          '9955ea7d-e147-4b12-8913-d0c4ec925409' =>
          { name: 'Long-term illness',
            hint: 'For example, cancer, HIV, diabetes, chronic heart disease or epilepsy',
            hesa_code: {
              '2019-2020' => '54',
              '2020-2021' => '54',
              '2021-2022' => '54',
              '2022-2023' => '54'
            } },
          '2dc8d721-a543-4ec4-aec4-9cc22fe1ebeb' =>
          { name: 'Mental health condition',
            hint: 'For example, depression, schizophrenia or anxiety disorder',
            hesa_code: {
              '2019-2020' => '55',
              '2020-2021' => '55',
              '2021-2022' => '55',
              '2022-2023' => '55'
            } },
          '79785b6c-d4f3-4b01-a13a-35ac8174b789' =>
          { name: 'Physical disability or mobility issue',
            hint: 'For example, impaired use of arms or legs, use of a wheelchair or crutches',
            hesa_code: {
              '2019-2020' => '56',
              '2020-2021' => '56',
              '2021-2022' => '56',
              '2022-2023' => '56'
            } },
          '3451285e-972b-464c-9726-84cae27b82ea' =>
          { name: 'Another disability, health condition or impairment affecting daily life',
            kind: :generic,
            hesa_code: {
              '2019-2020' => '96',
              '2020-2021' => '96',
              '2021-2022' => '96',
              '2022-2023' => '96'
            } },
          'd3f0f6de-b9be-4299-ade0-b40eef5d9ef2' =>
          { name: 'Prefer not to say',
            kind: :prefer_not_to_say,
            hesa_code: {
              '2019-2020' => '98',
              '2020-2021' => '98',
              '2021-2022' => '98',
              '2022-2023' => '98'
            } },
          'b14e142a-adfe-4646-af5d-8236b6a5b48d' =>
          { name: 'No disabilities or health issues',
            kind: :none,
            hesa_code: {
              '2019-2020' => '95',
              '2020-2021' => '95',
              '2021-2022' => '95',
              '2022-2023' => '95'
            } } },
        schema: DISABILITIES_SCHEMA,
        list_description: 'Disability and Health Condition classifications',
        list_usage_guidance: 'These items are intended to be referenced from a multiple-value field. The options with kind :prefer_not_to_say and :none are exclusive; if used, no other values can be used.',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_equality_and_diversity.md#dfereferencedataqualityanddiversitydisabilities',
        field_descriptions: {
          id: 'A unique identifier for this option',
          name: 'The long name of the option',
          hint: 'An optional hint to be shown alongside the name to users',
          kind: 'If present, indicates that this is a special kind of option. Valid values are :generic (a generic "other" optoin, and, if selected, the user should be prompted for free text to specify any further detail), :prefer_not_to_say (user opted out of answering the question) and :none (user has no disabilities or health conditions).'
        }
      )
    end
  end
end
