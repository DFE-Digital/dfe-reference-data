module DfE
  module ReferenceData
    module ITT
      INCENTIVES_SCHEMA = {
        id: :string,
        subject_name: :string,
        itt_categories_id: :string,
        academic_cycle: { kind: :array, element_schema: :string },
        bursary_amount: { kind: :optional, schema: :string },
        scholarship: { kind: :optional, schema: :string },
        notes: { kind: :optional, schema: :string }
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
          ## 2025-2026
          'bf4ea64c-7f0d-4604-855d-b2d7a8fa3db8' => {
            subject_name: 'mathematics',
            itt_categories_id: '71cbc6f2-9b24-4504-86f5-979e573de058',
            academic_cycle: ['2026'],
            bursary_amount: '29000',
            scholarship: '31000',
            notes: 'physics, mathematics, computing, chemistry 2025-2026'
          },
          'f0157f2e-6953-4e4b-b39b-575e34f1f975' => {
            subject_name: 'physics',
            itt_categories_id: 'd059a9cd-9b70-49bf-8194-9a71081e6cb9',
            academic_cycle: ['2026'],
            bursary_amount: '29000',
            scholarship: '31000',
            notes: 'physics, mathematics, computing, chemistry 2025-2026'
          },
          '0d497364-a854-40f5-be0d-bf490ab8cb1b' => {
            subject_name: 'chemistry',
            itt_categories_id: '167b889a-4cbb-47ff-a196-4103cb7ea43d',
            academic_cycle: ['2026'],
            bursary_amount: '29000',
            scholarship: '31000',
            notes: 'physics, mathematics, computing, chemistry 2025-2026'
          },
          '39134b18-dfd0-4ff5-b4d4-a50af6fd9e40' => {
            subject_name: 'computing',
            itt_categories_id: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51',
            academic_cycle: ['2026'],
            bursary_amount: '29000',
            scholarship: '31000',
            notes: 'physics, mathematics, computing, chemistry 2025-2026'
          },
          'ff42451b-a8a0-4078-b445-82dd249b7018' => {
            subject_name: 'french',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2026'],
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'french, german, spanish 2025-2026'
          },
          '043c51b9-69fb-4f6e-a45c-c77329616376' => {
            subject_name: 'german',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2026'],
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'french, german, spanish 2025-2026'
          },
          'dc383c9f-b459-4635-b83d-9adc8b1d52ba' => {
            subject_name: 'spanish',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2026'],
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'french, german, spanish 2025-2026'
          },
          'bf92df81-2584-4e94-96a5-5b72fedb3fd6' => {
            subject_name: 'languages',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2026'],
            bursary_amount: '26000',
            notes: 'languages, geography, biology, design and technology 2025-2026'
          },
          '4a802b67-1cab-4185-a389-1855d909af9c' => {
            subject_name: 'geography',
            itt_categories_id: '518be3b3-a0b3-45cb-9299-dfaeea0c4b7e',
            academic_cycle: ['2026'],
            bursary_amount: '26000',
            notes: 'languages, geography, biology, design and technology 2025-2026'
          },
          '8919ab70-64ad-4c51-bf73-61d377e6422e' => {
            subject_name: 'biology',
            itt_categories_id: 'b51a9678-0a36-4361-983a-fc74f46c1b06',
            academic_cycle: ['2026'],
            bursary_amount: '26000',
            notes: 'languages, geography, biology, design and technology 2025-2026'
          },
          'aba9c49c-3b43-4f47-a903-26cd4b35e8d2' => {
            subject_name: 'design and technology',
            itt_categories_id: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5',
            academic_cycle: ['2026'],
            bursary_amount: '26000',
            notes: 'languages, geography, biology, design and technology 2025-2026'
          },
          'ff282e02-7726-4684-87d1-7a423233b41f' => {
            subject_name: 'english',
            itt_categories_id: '48721ee7-577b-4819-8f92-b35d48414443',
            academic_cycle: ['2026'],
            bursary_amount: '5000',
            notes: 'english 2025-2026'
          },
          '4427e0e7-e771-4538-8224-be8d570c7996' => {
            subject_name: 'art & design',
            itt_categories_id: '69b468df-f7ca-40cb-9410-ed5f4e5bd61b',
            academic_cycle: ['2026'],
            bursary_amount: '10000',
            notes: 'art & design, music, re 2025-2026'
          },
          'c5c20bc4-a2da-4982-82af-d94c610b8646' => {
            subject_name: 'music',
            itt_categories_id: 'cc203931-79bf-4d32-982a-ad56600ba141',
            academic_cycle: ['2026'],
            bursary_amount: '10000',
            notes: 'art & design, music, re 2025-2026'
          },
          'b31d6c8f-d659-43db-99a3-7d5039a033f8' => {
            subject_name: 're',
            itt_categories_id: 'e8d5dffc-bfba-4d8a-843c-806c6d80d86b',
            academic_cycle: ['2026'],
            bursary_amount: '10000',
            notes: 'art & design, music, re 2025-2026'
          },
          ## 2024-2025
          'd1ac3245-9e10-4e72-99d0-70ecd6fce106' => {
            subject_name: 'physics',
            itt_categories_id: 'd059a9cd-9b70-49bf-8194-9a71081e6cb9',
            academic_cycle: ['2025'],
            bursary_amount: '28000',
            scholarship: '30000',
            notes: 'physics, mathematics, computing, chemistry 2024-2025'
          },
          'ea241fff-9aca-4403-b5f7-49eb1af9edcb' => {
            subject_name: 'mathematics',
            itt_categories_id: '71cbc6f2-9b24-4504-86f5-979e573de058',
            academic_cycle: ['2025'],
            bursary_amount: '28000',
            scholarship: '30000',
            notes: 'physics, mathematics, computing, chemistry 2024-2025'
          },
          'e72a2d66-6de8-4ef2-8704-54d52b00e925' => {
            subject_name: 'computing',
            itt_categories_id: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51',
            academic_cycle: ['2025'],
            bursary_amount: '28000',
            scholarship: '30000',
            notes: 'physics, mathematics, computing, chemistry 2024-2025'
          },
          'b9ee4216-429b-45fa-b5e3-b2f562d5aca7' => {
            subject_name: 'chemistry',
            itt_categories_id: '167b889a-4cbb-47ff-a196-4103cb7ea43d',
            academic_cycle: ['2025'],
            bursary_amount: '28000',
            scholarship: '30000',
            notes: 'physics, mathematics, computing, chemistry 2024-2025'
          },
          'aba35fd8-3d08-4eed-9483-32961c4ee9b4' => {
            subject_name: 'french',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2025'],
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german, spanish 2024-2025'
          },
          '0b126183-5b51-4990-b5d1-8fbadb03d25f' => {
            subject_name: 'german',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2025'],
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german, spanish 2024-2025'
          },
          '4e1a13ac-15ad-41a7-856d-3278dea7639d' => {
            subject_name: 'spanish',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2025'],
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german, spanish 2024-2025'
          },
          '06c4bc30-927e-4fdc-92d8-6875e5530a33' => {
            subject_name: 'languages',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2025'],
            bursary_amount: '25000',
            notes: 'languages, geography, biology, design and technology 2024-2025'
          },
          'dc0164b9-2007-4ee1-a5cb-eed49fe3b2e8' => {
            subject_name: 'geography',
            itt_categories_id: '518be3b3-a0b3-45cb-9299-dfaeea0c4b7e',
            academic_cycle: ['2025'],
            bursary_amount: '25000',
            notes: 'languages, geography, biology, design and technology 2024-2025'
          },
          '56a104da-7a44-43c9-ba5d-9618defca156' => {
            subject_name: 'biology',
            itt_categories_id: 'b51a9678-0a36-4361-983a-fc74f46c1b06',
            academic_cycle: ['2025'],
            bursary_amount: '25000',
            notes: 'languages, geography, biology, design and technology 2024-2025'
          },
          '65585baf-049f-4407-b1b6-9a01d597b7fd' => {
            subject_name: 'design and technology',
            itt_categories_id: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5',
            academic_cycle: ['2025'],
            bursary_amount: '25000',
            notes: 'languages, geography, biology, design and technology 2024-2025'
          },
          '9c6bc74d-ae34-46f8-9ce0-d4c665a21587' => {
            subject_name: 'english',
            itt_categories_id: '48721ee7-577b-4819-8f92-b35d48414443',
            academic_cycle: ['2025'],
            bursary_amount: '10000',
            notes: 'english, art & design, music, re 2024-2025'
          },
          'a324ae47-d9db-4eb5-9039-c767b8ec4f08' => {
            subject_name: 'art & design',
            itt_categories_id: '69b468df-f7ca-40cb-9410-ed5f4e5bd61b',
            academic_cycle: ['2025'],
            bursary_amount: '10000',
            notes: 'english, art & design, music, re 2024-2025'
          },
          '98764495-1266-4f51-9d1d-87ce7671c237' => {
            subject_name: 'music',
            itt_categories_id: 'cc203931-79bf-4d32-982a-ad56600ba141',
            academic_cycle: ['2025'],
            bursary_amount: '10000',
            notes: 'english, art & design, music, re 2024-2025'
          },
          '7397a91c-c6a5-4e9c-91a2-d6c446baa367' => {
            subject_name: 're',
            itt_categories_id: 'e8d5dffc-bfba-4d8a-843c-806c6d80d86b',
            academic_cycle: ['2025'],
            bursary_amount: '10000',
            notes: 'english, art & design, music, re 2024-2025'
          },
          ## 2023-2024
          'a80b6178-3f51-4308-b7c2-76a54891c43d' => {
            subject_name: 'physics',
            itt_categories_id: 'd059a9cd-9b70-49bf-8194-9a71081e6cb9',
            academic_cycle: ['2024'],
            bursary_amount: '27000',
            scholarship: '29000',
            notes: 'physics, mathematics, computing and chemistry 2023-2024'
          },
          '083d21b6-4e98-43ca-9a63-a9674b4355a8' => {
            subject_name: 'mathematics',
            itt_categories_id: '71cbc6f2-9b24-4504-86f5-979e573de058',
            academic_cycle: ['2024'],
            bursary_amount: '27000',
            scholarship: '29000',
            notes: 'physics, mathematics, computing and chemistry 2023-2024'
          },
          '97b16fb5-eb8c-4ef7-b4f7-fcb331d8e4a3' => {
            subject_name: 'computing',
            itt_categories_id: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51',
            academic_cycle: ['2024'],
            bursary_amount: '27000',
            scholarship: '29000',
            notes: 'physics, mathematics, computing and chemistry 2023-2024'
          },
          'ec3ed999-6520-490a-bfe6-9169bf9aac5e' => {
            subject_name: 'chemistry',
            itt_categories_id: '167b889a-4cbb-47ff-a196-4103cb7ea43d',
            academic_cycle: ['2024'],
            bursary_amount: '27000',
            scholarship: '29000',
            notes: 'physics, mathematics, computing and chemistry 2023-2024'
          },
          '76d0f697-5219-45a8-98b6-0c3762714c3d' => {
            subject_name: 'french',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2024'],
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german and spanish 2023-2024'
          },
          'b8366eda-112b-4f98-881e-ccb058721890' => {
            subject_name: 'german',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2024'],
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german and spanish 2023-2024'
          },
          '6c5a3cb6-e769-415f-8c08-b71c7a37be39' => {
            subject_name: 'spanish',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2024'],
            bursary_amount: '25000',
            scholarship: '27000',
            notes: 'french, german and spanish 2023-2024'
          },
          'd16dbff5-4c9c-4c0c-b47e-84a7fa6aec0b' => {
            subject_name: 'languages',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2024'],
            bursary_amount: '25000',
            notes: 'languages other than french, german and spanish 2023-2024'
          },
          'e1cf830d-00ef-4e6c-8fd9-48920932d167' => {
            subject_name: 'geography',
            itt_categories_id: '518be3b3-a0b3-45cb-9299-dfaeea0c4b7e',
            academic_cycle: ['2024'],
            bursary_amount: '25000',
            notes: 'geography 2023-2024'
          },
          '71730a26-b80b-440f-96ac-8c5814daa2c5' => {
            subject_name: 'biology',
            itt_categories_id: 'b51a9678-0a36-4361-983a-fc74f46c1b06',
            academic_cycle: ['2024'],
            bursary_amount: '20000',
            notes: 'biology 2023-2024'
          },
          'd41a2664-88d2-4cec-a5e1-edc7aa81095d' => {
            subject_name: 'design and technology',
            itt_categories_id: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5',
            academic_cycle: ['2024'],
            bursary_amount: '20000',
            notes: 'design and technology (including engineering and food tech) 2023-2024'
          },
          'e89ced70-7964-4ee5-b5c3-8e7d53b6fb97' => {
            subject_name: 'english',
            itt_categories_id: '48721ee7-577b-4819-8f92-b35d48414443',
            academic_cycle: ['2024'],
            bursary_amount: '15000',
            notes: 'english 2023-2024'
          },

          ## 2022-2023
          '636cbae8-763d-4f7e-97fd-4e3ae4c670e4' => {
            subject_name: 'languages',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2023'],
            bursary_amount: '15000',
            notes: 'languages 2022-2023'
          },
          '48881fdb-b38f-4f2d-baf3-f1337a9176e5' => {
            subject_name: 'geography',
            itt_categories_id: '518be3b3-a0b3-45cb-9299-dfaeea0c4b7e',
            academic_cycle: ['2023'],
            bursary_amount: '15000',
            notes: 'geography 2022-2023'
          },
          '9dc69724-4836-4141-9edf-52d473d4d0b3' => {
            subject_name: 'design and technology',
            itt_categories_id: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5',
            academic_cycle: ['2023'],
            bursary_amount: '15000',
            notes: 'design and technology (including engineering and food tech) 2022-2023'
          },
          '260f30d6-186c-469b-9776-b8515daaf03f' => {
            subject_name: 'biology',
            itt_categories_id: 'b51a9678-0a36-4361-983a-fc74f46c1b06',
            academic_cycle: ['2023'],
            bursary_amount: '10000',
            notes: 'biology 2022-2023'
          },

          ## 2021-2022
          'dca52a66-92a0-42af-934d-438ff496559e' => {
            subject_name: 'biology',
            itt_categories_id: 'b51a9678-0a36-4361-983a-fc74f46c1b06',
            academic_cycle: ['2022'],
            bursary_amount: '7000',
            notes: 'biology 2021-2022'
          },
          'd12a7dfb-270d-400e-b0e3-b52e806f28bc' => {
            subject_name: 'languages',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2022'],
            bursary_amount: '10000',
            notes: 'languages 2021-2022'
          },
          '5a6aed38-449d-4ad3-9932-281c28ad328b' => {
            subject_name: 'classics 2021-2022',
            itt_categories_id: '95547d49-2a52-4ae0-b4ea-744e0da4bfa2',
            academic_cycle: ['2022'],
            bursary_amount: '10000',
            notes: 'classics 2021-2022'
          },

          ## 2020-2021
          '805b8731-c86c-4d15-af62-d41fd497f4b1' => {
            subject_name: 'physics',
            itt_categories_id: 'd059a9cd-9b70-49bf-8194-9a71081e6cb9',
            academic_cycle: ['2021'],
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'physics, mathematics, computing, modern languages and chemistry 2020-2021'
          },
          '54e7e70c-73ec-409d-9db9-9006c0742353' => {
            subject_name: 'mathematics',
            itt_categories_id: '71cbc6f2-9b24-4504-86f5-979e573de058',
            academic_cycle: ['2021'],
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'physics, mathematics, computing, modern languages and chemistry 2020-2021'
          },
          '1265340a-5b61-465d-920a-6d76f96e5f11' => {
            subject_name: 'computing',
            itt_categories_id: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51',
            academic_cycle: ['2021'],
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'physics, mathematics, computing, modern languages and chemistry 2020-2021'
          },
          '2d304d9a-3a01-4bf7-bf2d-0fe95305ebb0' => {
            subject_name: 'modern languages',
            itt_categories_id: '262f596b-b8a2-40c2-9efc-1945586ab0c5',
            academic_cycle: ['2021'],
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'physics, mathematics, computing, modern languages and chemistry 2020-2021'
          },
          '36a18648-c8bf-4958-afb9-aad4df195c3f' => {
            subject_name: 'chemistry',
            itt_categories_id: '167b889a-4cbb-47ff-a196-4103cb7ea43d',
            academic_cycle: ['2021'],
            bursary_amount: '26000',
            scholarship: '28000',
            notes: 'physics, mathematics, computing, modern languages and chemistry 2020-2021'
          },
          '7f35096c-e67d-4822-b1f8-1911ca65117b' => {
            subject_name: 'geography',
            itt_categories_id: '518be3b3-a0b3-45cb-9299-dfaeea0c4b7e',
            academic_cycle: ['2021'],
            bursary_amount: '15000',
            scholarship: '17000',
            notes: 'geography 2020-2021'
          },
          '95eebd6c-69c5-4883-b3ff-c703b559bc4b' => {
            subject_name: 'classics',
            itt_categories_id: '95547d49-2a52-4ae0-b4ea-744e0da4bfa2',
            academic_cycle: ['2021'],
            bursary_amount: '26000',
            notes: 'classics and biology 2020-2021'
          },
          '80464bd0-f509-4d54-b70a-add606b1844f' => {
            subject_name: 'biology',
            itt_categories_id: 'b51a9678-0a36-4361-983a-fc74f46c1b06',
            academic_cycle: ['2021'],
            bursary_amount: '26000',
            notes: 'classics and biology 2020-2021'
          },
          'd58055c2-729a-487d-9ec2-4dde74159606' => {
            subject_name: 'design and technology (including engineering and food tech) 2020-2021',
            itt_categories_id: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5',
            academic_cycle: ['2021'],
            bursary_amount: '15000',
            notes: 'design and technology (including engineering and food tech) 2020-2021'
          },
          '6799f9a6-9962-4295-b0cd-96594eb9617a' => {
            subject_name: 'english',
            itt_categories_id: '48721ee7-577b-4819-8f92-b35d48414443',
            academic_cycle: ['2021'],
            bursary_amount: '12000',
            notes: 'english 2020-2021'
          },
          '76233e68-3830-45dd-9222-e8df3c278874' => {
            subject_name: 'history',
            itt_categories_id: '73ade5bc-0e14-43d9-8a67-6931ba07ab57',
            academic_cycle: ['2021'],
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021'
          },
          '98d7a2d9-f80a-45c0-9491-5dd8bd8eeefa' => {
            subject_name: 're',
            itt_categories_id: 'e8d5dffc-bfba-4d8a-843c-806c6d80d86b',
            academic_cycle: ['2021'],
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021'
          },
          '9a7383e7-b880-43de-a15d-e3759ada0104' => {
            subject_name: 'music',
            itt_categories_id: 'cc203931-79bf-4d32-982a-ad56600ba141',
            academic_cycle: ['2021'],
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021'
          },
          '61bf1a5d-6c00-4df9-a730-a45e91bbc2b5' => {
            subject_name: 'art',
            itt_categories_id: '69b468df-f7ca-40cb-9410-ed5f4e5bd61b',
            academic_cycle: ['2021'],
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021'
          },
          'd4024ca2-da1a-47ff-b497-62fed8fa5249' => {
            subject_name: 'design',
            itt_categories_id: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5',
            academic_cycle: ['2021'],
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021'
          },
          '92b39de3-7c25-40a9-a3dd-b8ce78f43091' => {
            subject_name: 'business studies',
            itt_categories_id: '139d6fa7-6044-423b-a8ac-2192956c357b',
            academic_cycle: ['2021'],
            bursary_amount: '9000',
            notes: 'history, re, music, art, design, and business studies 2020-2021'
          },
          '9c781d11-7e11-4920-be17-0bcea0a8c899' => {
            subject_name: 'primary with mathematics',
            itt_categories_id: 'c014fa9a-9b32-4bce-9b9c-a8ca201722f8',
            academic_cycle: ['2021'],
            bursary_amount: '6000',
            notes: 'primary with mathematics 2020-2021'
          },

          ## Multi-cycle
          '3bae9ef7-9944-4b41-8de2-634792e712b1' => {
            subject_name: 'physics',
            itt_categories_id: 'd059a9cd-9b70-49bf-8194-9a71081e6cb9',
            academic_cycle: ['2022', '2023'],
            bursary_amount: '24000',
            scholarship: '26000',
            notes: 'physics, mathematics, computing and chemistry 2021-2023'
          },
          '08bcf843-f8e2-4f39-ade8-7a41597b691a' => {
            subject_name: 'mathematics',
            itt_categories_id: '71cbc6f2-9b24-4504-86f5-979e573de058',
            academic_cycle: ['2022', '2023'],
            bursary_amount: '24000',
            scholarship: '26000',
            notes: 'physics, mathematics, computing and chemistry 2021-2023'
          },
          '01fce765-47ec-4316-95e2-79dff27f4293' => {
            subject_name: 'computing',
            itt_categories_id: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51',
            academic_cycle: ['2022', '2023'],
            bursary_amount: '24000',
            scholarship: '26000',
            notes: 'physics, mathematics, computing and chemistry 2021-2023'
          },
          '5bc470a2-b8ba-4236-856d-67c858b25ef3' => {
            subject_name: 'chemistry',
            itt_categories_id: '167b889a-4cbb-47ff-a196-4103cb7ea43d',
            academic_cycle: ['2022', '2023'],
            bursary_amount: '24000',
            scholarship: '26000',
            notes: 'physics, mathematics, computing and chemistry 2021-2023'
          }
        },
        schema: INCENTIVES_SCHEMA,
        list_description: 'An training incentive available for a particular ITT subject',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_itt.md#dfereferencedataittincentives',
        field_descriptions: INCENTIVES_FIELD_DEFINITIONS
      )
    end
  end
end
