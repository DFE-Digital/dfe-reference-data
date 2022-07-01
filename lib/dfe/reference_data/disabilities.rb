module DfE
  module ReferenceData
    module Disabilities
      DISABILITIES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '797c0994-f339-4fbf-8b52-f8c718979b76' =>
          {
            name: 'Learning difference such as dyslexia, dyspraxia or AD(H)D',
            match_synonyms: ['A specific learning difficulty such as dyslexia, dyspraxia or AD(H)D', 'Learning difficulty'],
            hesa_itt_code: '51'
          },
          'c88582ab-c659-4e7d-8379-24ada05152e1' =>
          {
            name: 'Social/communication conditions such as a speech and language impairment or an autistic spectrum condition',
            match_synonyms: ["A social/communication impairment such as Asperger's syndrome/other autistic spectrum disorder", 'Social or communication impairment'],
            hesa_itt_code: '53'
          },
          'aaff1d81-77f8-4c17-bdd8-f75034581adb' =>
          {
            name: 'Long-term illness or health condition such as cancer, HIV, diabetes, chronic heart disease, or epilepsy',
            match_synonyms: ['A long standing illness or health condition such as cancer, HIV, diabetes, chronic heart disease, or epilepsy', 'Long-standing illness'],
            hesa_itt_code: '54'
          },
          '700d51ba-60be-4dbc-a0d1-6e6b9d18425b' =>
          {
            name: 'Mental health condition, challenge or disorder, such as depression, schizophrenia or anxiety',
            match_synonyms: ['Mental health condition'],
            hesa_itt_code: '55'
          },
          'fb80c6bc-630c-456f-9352-0acef3a426f4' =>
          {
            name: 'Physical impairment (a condition that substantially limits one or more basic physical activities such as walking, climbing stairs, lifting or carrying)',
            match_synonyms: ['A physical impairment or mobility issues, such as difficulty using arms or using a wheelchair or crutches', 'Physical disability or mobility issue'],
            hesa_itt_code: '56'
          },
          '790b6e4e-ae70-4119-8bee-6e9f165a473b' =>
          {
            name: 'D/deaf or have a hearing impairment',
            match_synonyms: ['Deaf or a serious hearing impairment', 'Deaf'],
            hesa_itt_code: '57'
          },
          'a0cca0a8-0917-4900-a89a-3435b9c1c492' =>
          {
            name: 'Blind or have a visual impairment uncorrected by glasses',
            match_synonyms: ['Blind or a serious visual impairment uncorrected by glasses', 'Blind'],
            hesa_itt_code: '58'
          },
          '4cadd71a-0877-4af9-9759-0a19d43414c9' =>
          {
            name: 'Development condition that you have had since childhood which affects motor, cognitive, social and emotional skills, and speech and language',
            match_synonyms: [],
            hesa_itt_code: '59'
          },
          'd404b738-6b2d-4e78-93e8-624bb95e482e' =>
          {
            name: 'No known impairment, health condition or learning difference',
            match_synonyms: ['No known disability'],
            hesa_itt_code: '95'
          },
          'ca8ba870-2b29-4ef5-b8e6-81aa346c3fb8' =>
          {
            name: 'An impairment, health condition or learning difference not listed above',
            match_synonyms: ['A disability, impairment or medical condition that is not listed above', 'Other'],
            hesa_itt_code: '96'
          },
          '3f05b286-dec4-4665-991c-69011e6879cb' =>
          {
            name: 'Prefer not to say',
            match_synonyms: [],
            hesa_itt_code: '98'
          },
          '7a60b61b-2418-446f-bf61-45e4cd0d0889' =>
          {
            name: 'Not available',
            match_synonyms: [],
            hesa_itt_code: '99'
          }
        }
      )
    end
  end
end
