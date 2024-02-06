module DfE
  module ReferenceData
    module ITT
      INCENTIVES_SCHEMA = {
        id: :string,
        subject_name: :string,
        itt_categories_id: :string,
        academic_cycle: :string,
        bursary_amount: { kind: :optional, schema: :string },
        scholarship: { kind: :optional, schema: :string },
        notes: { kind: :optional, schema: :string },
      }.freeze

      INCENTIVES_FIELD_DEFINITIONS = {
        id: 'A unique identifier for this incentive',
        subject_name: 'The name of the subject associated with the incentive',
        itt_categories_id: 'A unique identifier for this ITT subject',
        academic_cycle: 'The academic cycle associated with this incentive',
        bursary_amount: 'The available bursary (in pounds)',
        scholarship: 'The available scholarship (in pounds)',
        notes: 'A descriptive name for this incentive'
      }.freeze

      # NOTE: When editing incentives and the references to them in subjects.rb,
      # it can help to uncomment the line in
      # spec/lib/dfe/reference_data/itt/subjects_spec.rb marked as "Uncomment
      # this to get a handy reference..." and run `rake spec`, which lists the
      # subjects by name along with the incentives by name for each cycle.

      INCENTIVES = DfE::ReferenceData::HardcodedReferenceList.new(
        # SEE https://www.gov.uk/government/publications/initial-teacher-training-itt-bursary-funding-manual
        {
          ## 2024-2025
          'e72a2d66-6de8-4ef2-8704-54d52b00e925' => {
            subject_name: 'physics',
            itt_categories_id: 'd059a9cd-9b70-49bf-8194-9a71081e6cb9',
            academic_cycle: '2025',
            bursary_amount: '28000',
            scholarship: '30000',
            notes: 'physics, mathematics, computing, chemistry 2024-2025',
          },
          'e72a2d66-6de8-4ef2-8704-54d52b00e925' => {
            subject_name: 'mathematics',
            itt_categories_id: '71cbc6f2-9b24-4504-86f5-979e573de058',
            academic_cycle: '2025',
            bursary_amount: '28000',
            scholarship: '30000',
            notes: 'physics, mathematics, computing, chemistry 2024-2025',
          },
          'e72a2d66-6de8-4ef2-8704-54d52b00e925' => {
            subject_name: 'computing',
            itt_categories_id: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51',
            academic_cycle: '2025',
            bursary_amount: '28000',
            scholarship: '30000',
            notes: 'physics, mathematics, computing, chemistry 2024-2025',
          },
          'e72a2d66-6de8-4ef2-8704-54d52b00e925' => {
            subject_name: 'chemistry',
            itt_categories_id: '167b889a-4cbb-47ff-a196-4103cb7ea43d',
            academic_cycle: '2025',
            bursary_amount: '28000',
            scholarship: '30000',
            notes: 'physics, mathematics, computing, chemistry 2024-2025',
          },
          '0b126183-5b51-4990-b5d1-8fbadb03d25f' => {
            subject_name: 'french',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: '2025',
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german, spanish 2024-2025',
          },
          '0b126183-5b51-4990-b5d1-8fbadb03d25f' => {
            subject_name: 'german',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: '2025',
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german, spanish 2024-2025',
          },
          '0b126183-5b51-4990-b5d1-8fbadb03d25f' => {
            subject_name: 'spanish',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: '2025',
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german, spanish 2024-2025',
          },
          'dc0164b9-2007-4ee1-a5cb-eed49fe3b2e8' => {
            subject_name: 'languages',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: '2025',
            bursary_amount: '25000',
            notes: 'languages, geography, biology, design and technology 2024-2025',
          },
          'dc0164b9-2007-4ee1-a5cb-eed49fe3b2e8' => {
            subject_name: 'geography',
            itt_categories_id: '518be3b3-a0b3-45cb-9299-dfaeea0c4b7e',
            academic_cycle: '2025',
            bursary_amount: '25000',
            notes: 'languages, geography, biology, design and technology 2024-2025',
          },
          'dc0164b9-2007-4ee1-a5cb-eed49fe3b2e8' => {
            subject_name: 'biology',
            itt_categories_id: 'b51a9678-0a36-4361-983a-fc74f46c1b06',
            academic_cycle: '2025',
            bursary_amount: '25000',
            notes: 'languages, geography, biology, design and technology 2024-2025',
          },
          'dc0164b9-2007-4ee1-a5cb-eed49fe3b2e8' => {
            subject_name: 'design and technology',
            itt_categories_id:'81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5',
            academic_cycle: '2025',
            bursary_amount: '25000',
            notes: 'languages, geography, biology, design and technology 2024-2025',
          },
          '98764495-1266-4f51-9d1d-87ce7671c237' => {
            subject_name: 'english',
            itt_categories_id: '48721ee7-577b-4819-8f92-b35d48414443',
            academic_cycle: '2025',
            bursary_amount: '10000',
            notes: 'english, art & design, music, re 2024-2025',
          },
          '98764495-1266-4f51-9d1d-87ce7671c237' => {
            subject_name: 'art & design',
            itt_categories_id: '69b468df-f7ca-40cb-9410-ed5f4e5bd61b',
            academic_cycle: '2025',
            bursary_amount: '10000',
            notes: 'english, art & design, music, re 2024-2025',
          },
          '98764495-1266-4f51-9d1d-87ce7671c237' => {
            subject_name: 'music',
            itt_categories_id: 'cc203931-79bf-4d32-982a-ad56600ba141',
            academic_cycle: '2025',
            bursary_amount: '10000',
            notes: 'english, art & design, music, re 2024-2025',
          },
          '98764495-1266-4f51-9d1d-87ce7671c237' => {
            subject_name: 're',
            itt_categories_id: 'e8d5dffc-bfba-4d8a-843c-806c6d80d86b',
            academic_cycle: '2025',
            bursary_amount: '10000',
            notes: 'english, art & design, music, re 2024-2025',
          },
          ## 2023-2024
          '083d21b6-4e98-43ca-9a63-a9674b4355a8' => {
            subject_name: 'physics',
            itt_categories_id: 'd059a9cd-9b70-49bf-8194-9a71081e6cb9',
            academic_cycle: '2024',
            bursary_amount: '27000',
            scholarship: '29000',
            notes: 'physics, mathematics, computing and chemistry 2023-2024',
          },
          '083d21b6-4e98-43ca-9a63-a9674b4355a8' => {
            subject_name: 'mathematics',
            itt_categories_id: '71cbc6f2-9b24-4504-86f5-979e573de058',
            academic_cycle: '2024',
            bursary_amount: '27000',
            scholarship: '29000',
            notes: 'physics, mathematics, computing and chemistry 2023-2024',
          },
          '083d21b6-4e98-43ca-9a63-a9674b4355a8' => {
            subject_name: 'computing',
            itt_categories_id: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51',
            academic_cycle: '2024',
            bursary_amount: '27000',
            scholarship: '29000',
            notes: 'physics, mathematics, computing and chemistry 2023-2024',
          },
          '083d21b6-4e98-43ca-9a63-a9674b4355a8' => {
            subject_name: 'chemistry',
            itt_categories_id: '167b889a-4cbb-47ff-a196-4103cb7ea43d',
            academic_cycle: '2024',
            bursary_amount: '27000',
            scholarship: '29000',
            notes: 'physics, mathematics, computing and chemistry 2023-2024',
          },
          '6c5a3cb6-e769-415f-8c08-b71c7a37be39' => {
            subject_name: 'french',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: '2024',
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german and spanish 2023-2024',
          },
          '6c5a3cb6-e769-415f-8c08-b71c7a37be39' => {
            subject_name: 'german',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: '2024',
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german and spanish 2023-2024',
          },
          '6c5a3cb6-e769-415f-8c08-b71c7a37be39' => {
            subject_name: 'spanish',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: '2024',
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german and spanish 2023-2024',
          },
          'd16dbff5-4c9c-4c0c-b47e-84a7fa6aec0b' => {
            subject_name: 'languages',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: '2024',
            bursary_amount: '25000',
            notes: 'languages other than french, german and spanish 2023-2024',
          },
          'e1cf830d-00ef-4e6c-8fd9-48920932d167' => {
            subject_name: 'geography',
            itt_categories_id: '518be3b3-a0b3-45cb-9299-dfaeea0c4b7e',
            academic_cycle: '2024',
            bursary_amount: '25000',
            notes: 'geography 2023-2024',
          },
          '71730a26-b80b-440f-96ac-8c5814daa2c5' => {
            subject_name: 'biology',
            itt_categories_id: 'b51a9678-0a36-4361-983a-fc74f46c1b06',
            academic_cycle: '2024',
            bursary_amount: '20000',
            notes: 'biology 2023-2024',
          },
          'd41a2664-88d2-4cec-a5e1-edc7aa81095d' => {
            subject_name: 'design and technology',
            itt_categories_id: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5',
            academic_cycle: '2024',
            bursary_amount: '20000',
            notes: 'design and technology (including engineering and food tech) 2023-2024'
          },
          'e89ced70-7964-4ee5-b5c3-8e7d53b6fb97' => {
            subject_name: 'english',
            itt_categories_id: '48721ee7-577b-4819-8f92-b35d48414443',
            academic_cycle: '2024',
            bursary_amount: '15000',
            notes: 'english 2023-2024'
          },

          ## 2022-2023
          '636cbae8-763d-4f7e-97fd-4e3ae4c670e4' => {
            subject_name: 'languages',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: '2023',
            bursary_amount: '15000',
            notes: 'languages 2022-2023',
          },
          '48881fdb-b38f-4f2d-baf3-f1337a9176e5' => {
            subject_name: 'geography',
            itt_categories_id: '518be3b3-a0b3-45cb-9299-dfaeea0c4b7e',
            academic_cycle: '2023',
            bursary_amount: '15000',
            notes: 'geography 2022-2023',
          },
          '9dc69724-4836-4141-9edf-52d473d4d0b3' => {
            subject_name: 'design and technology',
            itt_categories_id: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5',
            academic_cycle: '2023',
            bursary_amount: '15000',
            notes: 'design and technology (including engineering and food tech) 2022-2023'
          },
          '260f30d6-186c-469b-9776-b8515daaf03f' => {
            subject_name: 'biology',
            itt_categories_id: 'b51a9678-0a36-4361-983a-fc74f46c1b06',
            academic_cycle: '2023',
            bursary_amount: '10000',
            notes: 'biology 2022-2023'
          },

          ## 2021-2022
          'dca52a66-92a0-42af-934d-438ff496559e' => {
            subject_name: 'biology',
            itt_categories_id: 'b51a9678-0a36-4361-983a-fc74f46c1b06',
            academic_cycle: '2022',
            bursary_amount: '7000',
            notes: 'biology 2021-2022',
          },
          'd12a7dfb-270d-400e-b0e3-b52e806f28bc' => {
            subject_name: 'languages',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: '2022',
            bursary_amount: '10000',
            notes: 'languages 2021-2022'
          },
          '5a6aed38-449d-4ad3-9932-281c28ad328b' => {
            subject_name: 'classics 2021-2022',
            itt_categories_id: '95547d49-2a52-4ae0-b4ea-744e0da4bfa2',
            academic_cycle: '2022',
            bursary_amount: '10000',
            notes: 'classics 2021-2022',
          },

          ## 2020-2021
          '36a18648-c8bf-4958-afb9-aad4df195c3f' => {
            subject_name: 'physics',
            itt_categories_id: 'd059a9cd-9b70-49bf-8194-9a71081e6cb9',
            academic_cycle: '2021',
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'physics, mathematics, computing, modern languages and chemistry 2020-2021',
          },
          '36a18648-c8bf-4958-afb9-aad4df195c3f' => {
            subject_name: 'mathematics',
            itt_categories_id: '71cbc6f2-9b24-4504-86f5-979e573de058',
            academic_cycle: '2021',
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'physics, mathematics, computing, modern languages and chemistry 2020-2021',
          },
          '36a18648-c8bf-4958-afb9-aad4df195c3f' => {
            subject_name: 'computing',
            itt_categories_id: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51',
            academic_cycle: '2021',
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'physics, mathematics, computing, modern languages and chemistry 2020-2021',
          },
          '36a18648-c8bf-4958-afb9-aad4df195c3f' => {
            subject_name: 'modern languages',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: '2021',
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'physics, mathematics, computing, modern languages and chemistry 2020-2021',
          },
          '36a18648-c8bf-4958-afb9-aad4df195c3f' => {
            subject_name: 'chemistry',
            itt_categories_id: '167b889a-4cbb-47ff-a196-4103cb7ea43d',
            academic_cycle: '2021',
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'physics, mathematics, computing, modern languages and chemistry 2020-2021',
          },
          '7f35096c-e67d-4822-b1f8-1911ca65117b' => {
            subject_name: 'geography',
            itt_categories_id: '518be3b3-a0b3-45cb-9299-dfaeea0c4b7e',
            academic_cycle: '2021',
            bursary_amount: '15000',
            scholarship: '17000',
            notes: 'geography 2020-2021',
          },
          '95eebd6c-69c5-4883-b3ff-c703b559bc4b' => {
            subject_name: 'classics',
            itt_categories_id: '95547d49-2a52-4ae0-b4ea-744e0da4bfa2',
            academic_cycle: '2021',
            bursary_amount: '26000',
            notes: 'classics and biology 2020-2021',
          },
          '95eebd6c-69c5-4883-b3ff-c703b559bc4b' => {
            subject_name: 'biology',
            itt_categories_id: 'b51a9678-0a36-4361-983a-fc74f46c1b06',
            academic_cycle: '2021',
            bursary_amount: '26000',
            notes: 'classics and biology 2020-2021',
          },
          'd58055c2-729a-487d-9ec2-4dde74159606' => {
            subject_name: 'design and technology (including engineering and food tech) 2020-2021',
            itt_categories_id: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5',
            academic_cycle: '2021',
            bursary_amount: '15000',
            notes: 'design and technology (including engineering and food tech) 2020-2021',
          },
          '6799f9a6-9962-4295-b0cd-96594eb9617a' => {
            subject_name: 'english',
            itt_categories_id: '48721ee7-577b-4819-8f92-b35d48414443',
            academic_cycle: '2021',
            bursary_amount: '12000',
            notes: 'english 2020-2021',
          },
          '76233e68-3830-45dd-9222-e8df3c278874' => {
            subject_name: 'history',
            itt_categories_id: '73ade5bc-0e14-43d9-8a67-6931ba07ab57',
            academic_cycle: '2021',
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021',
          },
          '76233e68-3830-45dd-9222-e8df3c278874' => {
            subject_name: 're',
            itt_categories_id: 'e8d5dffc-bfba-4d8a-843c-806c6d80d86b',
            academic_cycle: '2021',
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021',
          },
          '76233e68-3830-45dd-9222-e8df3c278874' => {
            subject_name: 'music',
            itt_categories_id: 'cc203931-79bf-4d32-982a-ad56600ba141',
            academic_cycle: '2021',
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021',
          },
          '76233e68-3830-45dd-9222-e8df3c278874' => {
            subject_name: 'art',
            itt_categories_id: '69b468df-f7ca-40cb-9410-ed5f4e5bd61b',
            academic_cycle: '2021',
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021',
          },
          '76233e68-3830-45dd-9222-e8df3c278874' => {
            subject_name: 'design',
            itt_categories_id: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5',
            academic_cycle: '2021',
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021',
          },
          '76233e68-3830-45dd-9222-e8df3c278874' => {
            subject_name: 'business studies',
            itt_categories_id: '139d6fa7-6044-423b-a8ac-2192956c357b',
            academic_cycle: '2021',
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021',
          },
          '9c781d11-7e11-4920-be17-0bcea0a8c899' => {
            subject_name: 'primary with mathematics',
            itt_categories_id: 'c014fa9a-9b32-4bce-9b9c-a8ca201722f8',
            academic_cycle: '2021',
            bursary_amount: '6000',
            notes: 'primary with mathematics 2020-2021',
          },

          ## Multi-cycle
          '3bae9ef7-9944-4b41-8de2-634792e712b1' => {
            subject_name: 'physics',
            itt_categories_id: 'd059a9cd-9b70-49bf-8194-9a71081e6cb9',
            academic_cycle: '2021-2023',
            bursary_amount: '24000',
            scholarship: '26000',
            notes: 'physics, mathematics, computing and chemistry 2021-2023',
          },
          '3bae9ef7-9944-4b41-8de2-634792e712b1' => {
            subject_name: 'mathematics',
            itt_categories_id: '71cbc6f2-9b24-4504-86f5-979e573de058',
            academic_cycle: '2021-2023',
            bursary_amount: '24000',
            scholarship: '26000',
            notes: 'physics, mathematics, computing and chemistry 2021-2023',
          },
          '3bae9ef7-9944-4b41-8de2-634792e712b1' => {
            subject_name: 'computing',
            itt_categories_id: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51',
            academic_cycle: '2021-2023',
            bursary_amount: '24000',
            scholarship: '26000',
            notes: 'physics, mathematics, computing and chemistry 2021-2023',
          },
          '3bae9ef7-9944-4b41-8de2-634792e712b1' => {
            subject_name: 'chemistry',
            itt_categories_id: '167b889a-4cbb-47ff-a196-4103cb7ea43d',
            academic_cycle: '2021-2023',
            bursary_amount: '24000',
            scholarship: '26000',
            notes: 'physics, mathematics, computing and chemistry 2021-2023',
          },
        },
        schema: INCENTIVES_SCHEMA,
        list_description: 'An training incentive available for a particular ITT subject',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_itt.md#dfereferencedataittincentives',
        field_descriptions: INCENTIVES_FIELD_DEFINITIONS
      )
    end
  end
end
