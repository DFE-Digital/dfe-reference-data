module DfE
  module ReferenceData
    module BankHolidays
      BANK_HOLIDAYS_SCHEMA = {
        id: :string,
        title: :string,
        date: :datetime,
        notes: { kind: :optional, schema: :string }
      }.freeze

      BANK_HOLIDAYS_FIELD_DEFINITIONS = {
        id: 'A unique identifier',
        title: 'The title of the bank holiday',
        date: 'The date of the bank holiday',
        notes: 'Notes about the bank holiday'
      }.freeze

      # N.B. England and Wales only
      BANK_HOLIDAYS = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '3a7c3c1d-7d6d-475d-af54-7989cf294d6e' => {
            title: 'New Year’s Day',
            date: DateTime.new(2022, 1, 3),
            notes: 'Substitute day'
          },
          '6c1f10f3-c36c-4dec-8f88-3d224cf100fd' => {
            title: 'Good Friday',
            date: DateTime.new(2022, 4, 15)
          },
          '0b7dbaf9-3591-4e01-8fb0-b2fe4172ae6e' => {
            title: 'Easter Monday',
            date: DateTime.new(2022, 4, 18)
          },
          'cde43aa2-4b07-4dbf-95d2-9bc59bfbcb8f' => {
            title: 'Early May bank holiday',
            date: DateTime.new(2022, 5, 2)
          },
          'eb424558-a348-4778-997f-9475b1efebef' => {
            title: 'Spring bank holiday',
            date: DateTime.new(2022, 6, 2)
          },
          '8042b1af-cc29-4645-9f36-62bb363926f6' => {
            title: 'Platinum Jubilee bank holiday',
            date: DateTime.new(2022, 6, 3)
          },
          '8fa6c06b-996e-4a5b-8c62-141c187c5d31' => {
            title: 'Summer bank holiday',
            date: DateTime.new(2022, 8, 29)
          },
          '9dd1cea1-dab6-4ec1-9dc4-1f5ab3865040' => {
            title: 'Bank Holiday for the State Funeral of Queen Elizabeth II',
            date: DateTime.new(2022, 9, 19)
          },
          '6c1bce30-8c47-4ff6-9ec6-dd079f83b7eb' => {
            title: 'Boxing Day',
            date: DateTime.new(2022, 12, 26)
          },
          '28173c6f-fe05-4d02-a79b-299bcbab1638' => {
            title: 'Christmas Day',
            date: DateTime.new(2022, 12, 27),
            notes: 'Substitute day'
          },
          'd564f857-6e6a-4814-b86c-a55a7040dedc' => {
            title: 'New Year’s Day',
            date: DateTime.new(2023, 1, 2),
            notes: 'Substitute day'
          },
          '74ba7455-9b04-4828-8e34-8434c7061172' => {
            title: 'Good Friday',
            date: DateTime.new(2023, 4, 7)
          },
          '6127eea0-ba2b-4dca-a1e2-23ef17079ce5' => {
            title: 'Easter Monday',
            date: DateTime.new(2023, 4, 10)
          },
          '27524138-5b1c-499e-a752-a969e4cc5207' => {
            title: 'Early May bank holiday',
            date: DateTime.new(2023, 5, 1),
            notes: 'Substitute day'
          },
          'c62a7c2f-a4d6-431d-b6ba-6e9b71c03bef' => {
            title: 'Bank holiday for the coronation of King Charles III',
            date: DateTime.new(2023, 5, 8)
          },
          '327a23ed-2576-4451-9b48-df45ca6d8be6' => {
            title: 'Spring bank holiday',
            date: DateTime.new(2023, 5, 29)
          },
          '017dfd7c-6fa2-4c91-bcb4-dbae8e69b1c5' => {
            title: 'Summer bank holiday',
            date: DateTime.new(2023, 8, 28)
          },
          '38a90ce9-39fe-45d4-82cb-21ac09f81972' => {
            title: 'Christmas Day',
            date: DateTime.new(2023, 12, 25)
          },
          'c2f1e86f-e4c9-4ffb-b97b-37797287b849' => {
            title: 'Boxing Day',
            date: DateTime.new(2023, 12, 26)
          },
          'dd7796d0-b290-40c3-9d96-f2682bb149af' => {
            title: 'New Year’s Day',
            date: DateTime.new(2024, 1, 1)
          },
          '4f66c4b0-8e76-49fa-a146-c57f9f8d6174' => {
            title: 'Good Friday',
            date: DateTime.new(2024, 3, 29)
          },
          '50f43420-8567-400c-b771-8e8a97517611' => {
            title: 'Easter Monday',
            date: DateTime.new(2024, 4, 1)
          },
          '50011838-1462-4646-9cc5-525b729f8b6e' => {
            title: 'Early May bank holiday',
            date: DateTime.new(2024, 5, 6)
          },
          '4f89e73b-394c-40e5-b521-4ef5df09719f' => {
            title: 'Spring bank holiday',
            date: DateTime.new(2024, 5, 27)
          },
          'a184641d-2d64-4fd6-92d5-537595b4d051' => {
            title: 'Summer bank holiday',
            date: DateTime.new(2024, 8, 26)
          },
          '50c749cc-7b9b-4ffb-967e-f2d78cfdaaca' => {
            title: 'Christmas Day',
            date: DateTime.new(2024, 12, 25)
          },
          '0b332d63-c61b-470e-9d04-81f1ed5a8ed5' => {
            title: 'Boxing Day',
            date: DateTime.new(2024, 12, 26)
          },
          '7295aeb0-923a-4247-a48b-994b8d86ff0e' => {
            title: 'New Year’s Day',
            date: DateTime.new(2025, 1, 1)
          },
          '40b8fd0b-6524-47ff-9ea1-cab6efb8b821' => {
            title: 'Good Friday',
            date: DateTime.new(2025, 4, 18)
          },
          '100291bb-4a1e-4c7f-ae6c-de17430f8e9f' => {
            title: 'Easter Monday',
            date: DateTime.new(2025, 4, 21)
          },
          '759a4b95-8037-44dd-9043-33cf2dea6cd9' => {
            title: 'Early May bank holiday',
            date: DateTime.new(2025, 5, 5)
          },
          'b9ebdeed-fc19-46f5-8de5-618d2f57530d' => {
            title: 'Spring bank holiday',
            date: DateTime.new(2025, 5, 26)
          },
          'd895b3e5-9152-4150-9856-2388be54a1b4' => {
            title: 'Summer bank holiday',
            date: DateTime.new(2025, 8, 25)
          },
          'ffa6076f-08a3-4e71-a9cd-18e3a91c2947' => {
            title: 'Christmas Day',
            date: DateTime.new(2025, 12, 25)
          },
          '17bbc7a6-2eae-458a-a042-cea58e039e83' => {
            title: 'Boxing Day',
            date: DateTime.new(2025, 12, 26)
          },
          '3c7dbc08-7aa5-48a9-95bf-379a9c192f3d' => {
            title: 'New Year’s Day',
            date: DateTime.new(2026, 1, 1)
          },
          'e4627680-1f98-418e-9368-f0fdf2675bff' => {
            title: 'Good Friday',
            date: DateTime.new(2026, 4, 3)
          },
          '14fcba2c-e532-4c0e-9c24-c75d3f216742' => {
            title: 'Easter Monday',
            date: DateTime.new(2026, 4, 6)
          },
          '8fe0ae13-1d7d-41eb-a05e-a635c998d096' => {
            title: 'Early May bank holiday',
            date: DateTime.new(2026, 5, 4)
          },
          'bee66569-30a8-4312-8aef-b59513f4b9cc' => {
            title: 'Spring bank holiday',
            date: DateTime.new(2026, 5, 25)
          },
          '5ea9da90-16a4-4c34-959f-997982d1be79' => {
            title: 'Summer bank holiday',
            date: DateTime.new(2026, 8, 31)
          },
          'cce849b9-943c-45ee-821f-665ad7405050' => {
            title: 'Christmas Day',
            date: DateTime.new(2026, 12, 25)
          },
          '634f3d1a-1f5c-4435-acba-7526d5da2023' => {
            title: 'Boxing Day (substitute day)',
            date: DateTime.new(2026, 12, 28)
          },
          'e5d3ec0f-6737-44d4-af75-d225e125368a' => {
            title: 'New Year’s Day',
            date: DateTime.new(2027, 1, 1)
          },
          '885518be-a2a6-4250-92e5-66161d1e21cd' => {
            title: 'Good Friday',
            date: DateTime.new(2027, 3, 26)
          },
          '6f36203c-1c4f-47c2-a6c2-c1216953d2a2' => {
            title: 'Easter Monday',
            date: DateTime.new(2027, 3, 29)
          },
          '1cef6f3d-ece6-400f-bdc7-7efc35f41f3c' => {
            title: 'Early May bank holiday',
            date: DateTime.new(2027, 5, 3)
          },
          '852ae9fa-6303-453b-a856-99bebb252e0e' => {
            title: 'Spring bank holiday',
            date: DateTime.new(2027, 5, 31)
          },
          '6b459547-00a4-47d2-a3cd-fa60ec001cd3' => {
            title: 'Summer bank holiday',
            date: DateTime.new(2027, 8, 30)
          },
          'be003839-145f-4379-8b98-8423de78c201' => {
            title: 'Christmas Day (substitute day)',
            date: DateTime.new(2027, 12, 27),
          },
          '7c728d36-d2d8-4f2f-86bd-e8a1625d1cab' => {
            title: 'Boxing Day (substitute day)',
            date: DateTime.new(2027, 12, 28)
          }
        },
        schema: BANK_HOLIDAYS_SCHEMA,
        list_description: 'Bank Holidays(England and Wales)',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_bankholidays.md#dfereferencedatabankholidaysbank_holidays',
        field_descriptions: BANK_HOLIDAYS_FIELD_DEFINITIONS
      )
    end
  end
end
