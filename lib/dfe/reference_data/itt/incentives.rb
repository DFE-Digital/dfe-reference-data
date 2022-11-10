module DfE
  module ReferenceData
    module ITT
      INCENTIVES_SCHEMA = {
        id: :string,
        name: :string,
        bursary_amount: { kind: :optional, schema: :string },
        scholarship: { kind: :optional, schema: :string }
      }.freeze

      # I have given these readable IDs because there's not many of them, and it
      # makes the incentive references more readable.
      INCENTIVES = DfE::ReferenceData::HardcodedReferenceList.new(
        # SEE https://www.gov.uk/government/publications/initial-teacher-training-itt-bursary-funding-manual/initial-teacher-training-bursaries-funding-manual-2022-to-2023-academic-year
        {
          '636cbae8-763d-4f7e-97fd-4e3ae4c670e4' => {
            name: 'languages',
            bursary_amount: '15000'
          },
          '48881fdb-b38f-4f2d-baf3-f1337a9176e5' => {
            name: 'geography',
            bursary_amount: '15000'
          },
          '9dc69724-4836-4141-9edf-52d473d4d0b3' => {
            name: 'engineering',
            bursary_amount: '15000'
          },
          '260f30d6-186c-469b-9776-b8515daaf03f' => {
            name: 'biology',
            bursary_amount: '10000'
          },
          '3bae9ef7-9944-4b41-8de2-634792e712b1' => {
            name: 'sciences',
            bursary_amount: '24000',
            scholarship: '26000'
          }
        },
        INCENTIVES_SCHEMA
      )
    end
  end
end
