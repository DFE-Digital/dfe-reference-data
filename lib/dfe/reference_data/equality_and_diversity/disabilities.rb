module DfE
  module ReferenceData
    module EqualityAndDiversity
      DISABILITIES_SCHEMA = {
        id: :string,
        name: :string,
        hint: { kind: :optional, schema: :string },
        hesa_code: { kind: :code, pattern: /^[0-9]{2}$/ },
        kind: { kind: :optional, schema: :symbol }
      }.freeze

      DISABILITIES_AND_HEALTH_CONDITIONS = DfE::ReferenceData::HardcodedReferenceList.new(
        { 'da4faa34-3851-4e04-959a-92ebea3c2b98' =>
          { name: 'Autistic spectrum condition or another condition affecting speech, language, communication or social skills',
            hesa_code: '53' },
          'a31b75e7-659d-4547-9654-5fc1015ad2a5' =>
          { name: 'Blindness or a visual impairment not corrected by glasses',
            hesa_code: '58' },
          '82e2ad24-5568-4e0b-a362-41666a668fb9' =>
          { name: 'Condition affecting motor, cognitive, social and emotional skills, speech or language since childhood',
            hesa_code: '59' },
          'c6302624-b33a-46fb-8dcb-058f21cee0dc' =>
          { name: 'Deafness or a serious hearing impairment',
            hesa_code: '57' },
          'f9624005-d7aa-45b3-bfce-ef2e2779f631' =>
          { name: 'Dyslexia, dyspraxia or attention deficit hyperactivity disorder (ADHD) or another learning difference',
            hesa_code: '51' },
          '9955ea7d-e147-4b12-8913-d0c4ec925409' =>
          { name: 'Long-term illness',
            hint: 'For example, cancer, HIV, diabetes, chronic heart disease or epilepsy',
            hesa_code: '54' },
          '2dc8d721-a543-4ec4-aec4-9cc22fe1ebeb' =>
          { name: 'Mental health condition',
            hint: 'For example, depression, schizophrenia or anxiety disorder',
            hesa_code: '55' },
          '79785b6c-d4f3-4b01-a13a-35ac8174b789' =>
          { name: 'Physical disability or mobility issue',
            hint: 'For example, impaired use of arms or legs, use of a wheelchair or crutches',
            hesa_code: '56' },
          '3451285e-972b-464c-9726-84cae27b82ea' =>
          { name: 'Another disability, health condition or impairment affecting daily life',
            kind: :generic,
            hesa_code: '96' },
          'd3f0f6de-b9be-4299-ade0-b40eef5d9ef2' =>
          { name: 'Prefer not to say',
            kind: :prefer_not_to_say,
            hesa_code: '98' },
          'b14e142a-adfe-4646-af5d-8236b6a5b48d' =>
          { name: 'No disabilities or health issues',
            kind: :none,
            hesa_code: '95' } },
        DISABILITIES_SCHEMA
      )
    end
  end
end
