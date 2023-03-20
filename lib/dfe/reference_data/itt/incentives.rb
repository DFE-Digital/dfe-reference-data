module DfE
  module ReferenceData
    module ITT
      INCENTIVES_SCHEMA = {
        id: :string,
        name: :string,
        bursary_amount: { kind: :optional, schema: :string },
        scholarship: { kind: :optional, schema: :string }
      }.freeze

      INCENTIVES_FIELD_DEFINITIONS = {
        id: 'A unique identifier for this incentive',
        name: 'A descriptive name for this incentive',
        bursary_amount: 'The available bursary (in pounds)',
        scholarship: 'The available scholarship (in pounds)'
      }.freeze

      # NOTE: When editing incentives and the references to them in subjects.rb,
      # it can help to uncomment the line in
      # spec/lib/dfe/reference_data/itt/subjects_spec.rb marked as "Uncomment
      # this to get a handy reference..." and run `rake spec`, which lists the
      # subjects by name along with the incentives by name for each cycle.

      INCENTIVES = DfE::ReferenceData::HardcodedReferenceList.new(
        # SEE https://www.gov.uk/government/publications/initial-teacher-training-itt-bursary-funding-manual
        {

          ## 2023-2024
          '083d21b6-4e98-43ca-9a63-a9674b4355a8' => {
            name: 'physics, mathematics, computing and chemistry 2023-2024',
            bursary_amount: '27000',
            scholarship: '29000'
          },
          '6c5a3cb6-e769-415f-8c08-b71c7a37be39' => {
            name: 'french, german and spanish 2023-2024',
            bursary_amount: '25000',
            scholarship: '27000'
          },
          'd16dbff5-4c9c-4c0c-b47e-84a7fa6aec0b' => {
            name: 'languages other than french, german and spanish 2023-2024',
            bursary_amount: '25000'
          },
          'e1cf830d-00ef-4e6c-8fd9-48920932d167' => {
            name: 'geography 2023-2024',
            bursary_amount: '25000'
          },
          '71730a26-b80b-440f-96ac-8c5814daa2c5' => {
            name: 'biology 2023-2024',
            bursary_amount: '20000'
          },
          'd41a2664-88d2-4cec-a5e1-edc7aa81095d' => {
            name: 'design and technology (including engineering and food tech) 2023-2024',
            bursary_amount: '20000'
          },
          'e89ced70-7964-4ee5-b5c3-8e7d53b6fb97' => {
            name: 'english 2023-2024',
            bursary_amount: '15000'
          },

          ## 2022-2023
          '636cbae8-763d-4f7e-97fd-4e3ae4c670e4' => {
            name: 'languages 2022-2023',
            bursary_amount: '15000'
          },
          '48881fdb-b38f-4f2d-baf3-f1337a9176e5' => {
            name: 'geography 2022-2023',
            bursary_amount: '15000'
          },
          '9dc69724-4836-4141-9edf-52d473d4d0b3' => {
            name: 'design and technology (including engineering and food tech) 2022-2023',
            bursary_amount: '15000'
          },
          '260f30d6-186c-469b-9776-b8515daaf03f' => {
            name: 'biology 2022-2023',
            bursary_amount: '10000'
          },

          ## 2021-2022
          'dca52a66-92a0-42af-934d-438ff496559e' => {
            name: 'biology 2021-2022',
            bursary_amount: '7000'
          },
          'd12a7dfb-270d-400e-b0e3-b52e806f28bc' => {
            name: 'languages 2021-2022',
            bursary_amount: '10000'
          },
          '5a6aed38-449d-4ad3-9932-281c28ad328b' => {
            name: 'classics 2021-2022',
            bursary_amount: '10000'
          },

          ## 2020-2021
          '36a18648-c8bf-4958-afb9-aad4df195c3f' => {
            name: 'physics, mathematics, computing, modern languages and chemistry 2020-2021',
            bursary_amount: '26000',
            scholarship: '28000'
          },
          '7f35096c-e67d-4822-b1f8-1911ca65117b' => {
            name: 'geography 2020-2021',
            bursary_amount: '15000',
            scholarship: '17000'
          },
          '95eebd6c-69c5-4883-b3ff-c703b559bc4b' => {
            name: 'classics and biology 2020-2021',
            bursary_amount: '26000'
          },
          'd58055c2-729a-487d-9ec2-4dde74159606' => {
            name: 'design and technology (including engineering and food tech) 2020-2021',
            bursary_amount: '15000'
          },
          '6799f9a6-9962-4295-b0cd-96594eb9617a' => {
            name: 'english 2020-2021',
            bursary_amount: '12000'
          },
          '76233e68-3830-45dd-9222-e8df3c278874' => {
            name: 'history, re, music, art, design, and business studies 2020-2021',
            bursary_amount: '9000'
          },
          '9c781d11-7e11-4920-be17-0bcea0a8c899' => {
            name: 'primary with mathematics 2020-2021',
            bursary_amount: '6000'
          },

          ## Multi-cycle
          '3bae9ef7-9944-4b41-8de2-634792e712b1' => {
            name: 'physics, mathematics, computing and chemistry 2021-2023',
            bursary_amount: '24000',
            scholarship: '26000'
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
