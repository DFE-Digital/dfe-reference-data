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

      BANK_HOLIDAYS_DATA = {
        "c69634e3-dc7d-4eb9-8c38-f0cd281b55bf" => {
          title: "New Year’s Day",
          date: DateTime.new(2019, 1, 1)
        },
        "25e0ffb2-b969-49aa-adc6-17d69b3cb474" => {
          title: "Good Friday",
          date: DateTime.new(2019, 4, 19)
        },
        "e81ece1b-71b4-4a5c-b516-d6965c681c49" => {
          title: "Easter Monday",
          date: DateTime.new(2019, 4, 22)
        },
        "0a024f55-19c6-4c3d-ab08-0a5d783f18bb" => {
          title: "Early May bank holiday",
          date: DateTime.new(2019, 5, 6)
        },
        "4c78c601-68db-40ce-a843-45c25fc1a06f" => {
          title: "Spring bank holiday",
          date: DateTime.new(2019, 5, 27)
        },
        "37fa25ab-f1e2-4cd0-9089-f622bfab79f5" => {
          title: "Summer bank holiday",
          date: DateTime.new(2019, 8, 26)
        },
        "d9bde831-36dc-4dff-b898-58c560cac8d1" => {
          title: "Christmas Day",
          date: DateTime.new(2019, 12, 25)
        },
        "50f65c9b-af7f-4846-93a6-421a0d95eed6" => {
          title: "Boxing Day",
          date: DateTime.new(2019, 12, 26)
        },
        "f69abf69-102a-4ce8-ba6f-a3dcb3823878" => {
          title: "New Year’s Day",
          date: DateTime.new(2020, 1, 1)
        },
        "801b3d8d-aff0-4421-b86b-15bee64baefd" => {
          title: "Good Friday",
          date: DateTime.new(2020, 4, 10)
        },
        "7d6914da-9b22-4812-83c4-436e14d5b553" => {
          title: "Easter Monday",
          date: DateTime.new(2020, 4, 13)
        },
        "7b4ad7ae-d254-4638-81a2-f7d1d3ce071d" => {
          title: "Early May bank holiday (VE day)",
          date: DateTime.new(2020, 5, 8)
        },
        "c0451399-62e8-44db-be09-dd6a7ebe7754" => {
          title: "Spring bank holiday",
          date: DateTime.new(2020, 5, 25)
        },
        "d6b9f438-b9f3-4d47-b17e-594f5047a94d" => {
          title: "Summer bank holiday",
          date: DateTime.new(2020, 8, 31)
        },
        "28c93ea2-b336-4be7-93f6-1658aa78e069" => {
          title: "Christmas Day",
          date: DateTime.new(2020, 12, 25)
        },
        "d082c474-d879-4885-a5e0-dd213cf95885" => {
          title: "Boxing Day",
          date: DateTime.new(2020, 12, 28),
          notes: "Substitute day"
        },
        "70c29b83-3af3-4a83-97b3-90e57d6705b8" => {
          title: "New Year’s Day",
          date: DateTime.new(2021, 1, 1)
        },
        "795abf60-59f1-401e-9227-d1742f9be0a2" => {
          title: "Good Friday",
          date: DateTime.new(2021, 4, 2)
        },
        "00db114d-1d81-4bff-b534-cd4fb88f8f81" => {
          title: "Easter Monday",
          date: DateTime.new(2021, 4, 5)
        },
        "7a89ec4c-8c25-497b-9128-0954f930f331" => {
          title: "Early May bank holiday",
          date: DateTime.new(2021, 5, 3)
        },
        "0c7eab88-e700-45d4-9dbe-f714d387134b" => {
          title: "Spring bank holiday",
          date: DateTime.new(2021, 5, 31)
        },
        "0e1753c4-f6c0-47e1-bb0a-bd26fe7736df" => {
          title: "Summer bank holiday",
          date: DateTime.new(2021, 8, 30)
        },
        "a42559f8-56b4-4a9d-924c-756cd815de3d" => {
          title: "Christmas Day",
          date: DateTime.new(2021, 12, 27),
          notes: "Substitute day"
        },
        "730cf900-abd1-4fab-a87b-ba36d7947798" => {
          title: "Boxing Day",
          date: DateTime.new(2021, 12, 28),
          notes: "Substitute day"
        },
        "3a7c3c1d-7d6d-475d-af54-7989cf294d6e" => {
          title: "New Year’s Day",
          date: DateTime.new(2022, 1, 3),
          notes: "Substitute day"
        },
        "6c1f10f3-c36c-4dec-8f88-3d224cf100fd" => {
          title: "Good Friday",
          date: DateTime.new(2022, 4, 15)
        },
        "0b7dbaf9-3591-4e01-8fb0-b2fe4172ae6e" => {
          title: "Easter Monday",
          date: DateTime.new(2022, 4, 18)
        },
        "cde43aa2-4b07-4dbf-95d2-9bc59bfbcb8f" => {
          title: "Early May bank holiday",
          date: DateTime.new(2022, 5, 2)
        },
        "eb424558-a348-4778-997f-9475b1efebef" => {
          title: "Spring bank holiday",
          date: DateTime.new(2022, 6, 2)
        },
        "8042b1af-cc29-4645-9f36-62bb363926f6" => {
          title: "Platinum Jubilee bank holiday",
          date: DateTime.new(2022, 6, 3)
        },
        "8fa6c06b-996e-4a5b-8c62-141c187c5d31" => {
          title: "Summer bank holiday",
          date: DateTime.new(2022, 8, 29)
        },
        "9dd1cea1-dab6-4ec1-9dc4-1f5ab3865040" => {
          title: "Bank Holiday for the State Funeral of Queen Elizabeth II",
          date: DateTime.new(2022, 9, 19)
        },
        "6c1bce30-8c47-4ff6-9ec6-dd079f83b7eb" => {
          title: "Boxing Day",
          date: DateTime.new(2022, 12, 26)
        },
        "28173c6f-fe05-4d02-a79b-299bcbab1638" => {
          title: "Christmas Day",
          date: DateTime.new(2022, 12, 27),
          notes: "Substitute day"
        },
        "d564f857-6e6a-4814-b86c-a55a7040dedc" => {
          title: "New Year’s Day",
          date: DateTime.new(2023, 1, 2),
          notes: "Substitute day"
        },
        "74ba7455-9b04-4828-8e34-8434c7061172" => {
          title: "Good Friday",
          date: DateTime.new(2023, 4, 7)
        },
        "6127eea0-ba2b-4dca-a1e2-23ef17079ce5" => {
          title: "Easter Monday",
          date: DateTime.new(2023, 4, 10)
        },
        "27524138-5b1c-499e-a752-a969e4cc5207" => {
          title: "Early May bank holiday",
          date: DateTime.new(2023, 5, 1),
          notes: "Substitute day"
        },
        "c62a7c2f-a4d6-431d-b6ba-6e9b71c03bef" => {
          title: "Bank holiday for the coronation of King Charles III",
          date: DateTime.new(2023, 5, 8)
        },
        "327a23ed-2576-4451-9b48-df45ca6d8be6" => {
          title: "Spring bank holiday",
          date: DateTime.new(2023, 5, 29)
        },
        "017dfd7c-6fa2-4c91-bcb4-dbae8e69b1c5" => {
          title: "Summer bank holiday",
          date: DateTime.new(2023, 8, 28)
        },
        "38a90ce9-39fe-45d4-82cb-21ac09f81972" => {
          title: "Christmas Day",
          date: DateTime.new(2023, 12, 25)
        },
        "c2f1e86f-e4c9-4ffb-b97b-37797287b849" => {
          title: "Boxing Day",
          date: DateTime.new(2023, 12, 26)
        },
        "dd7796d0-b290-40c3-9d96-f2682bb149af" => {
          title: "New Year’s Day",
          date: DateTime.new(2024, 1, 1)
        },
        "4f66c4b0-8e76-49fa-a146-c57f9f8d6174" => {
          title: "Good Friday",
          date: DateTime.new(2024, 3, 29)
        },
        "50f43420-8567-400c-b771-8e8a97517611" => {
          title: "Easter Monday",
          date: DateTime.new(2024, 4, 1)
        },
        "50011838-1462-4646-9cc5-525b729f8b6e" => {
          title: "Early May bank holiday",
          date: DateTime.new(2024, 5, 6)
        },
        "4f89e73b-394c-40e5-b521-4ef5df09719f" => {
          title: "Spring bank holiday",
          date: DateTime.new(2024, 5, 27)
        },
        "a184641d-2d64-4fd6-92d5-537595b4d051" => {
          title: "Summer bank holiday",
          date: DateTime.new(2024, 8, 26)
        },
        "50c749cc-7b9b-4ffb-967e-f2d78cfdaaca" => {
          title: "Christmas Day",
          date: DateTime.new(2024, 12, 25)
        },
        "0b332d63-c61b-470e-9d04-81f1ed5a8ed5" => {
          title: "Boxing Day",
          date: DateTime.new(2024, 12, 26)
        },
        "7295aeb0-923a-4247-a48b-994b8d86ff0e" => {
          title: "New Year’s Day",
          date: DateTime.new(2025, 1, 1)
        },
        "40b8fd0b-6524-47ff-9ea1-cab6efb8b821" => {
          title: "Good Friday",
          date: DateTime.new(2025, 4, 18)
        },
        "100291bb-4a1e-4c7f-ae6c-de17430f8e9f" => {
          title: "Easter Monday",
          date: DateTime.new(2025, 4, 21)
        },
        "759a4b95-8037-44dd-9043-33cf2dea6cd9" => {
          title: "Early May bank holiday",
          date: DateTime.new(2025, 5, 5)
        },
        "b9ebdeed-fc19-46f5-8de5-618d2f57530d" => {
          title: "Spring bank holiday",
          date: DateTime.new(2025, 5, 26)
        },
        "d895b3e5-9152-4150-9856-2388be54a1b4" => {
          title: "Summer bank holiday",
          date: DateTime.new(2025, 8, 25)
        },
        "ffa6076f-08a3-4e71-a9cd-18e3a91c2947" => {
          title: "Christmas Day",
          date: DateTime.new(2025, 12, 25)
        },
        "17bbc7a6-2eae-458a-a042-cea58e039e83" => {
          title: "Boxing Day",
          date: DateTime.new(2025, 12, 26)
        },
        "3c7dbc08-7aa5-48a9-95bf-379a9c192f3d" => {
          title: "New Year’s Day",
          date: DateTime.new(2026, 1, 1)
        },
        "e4627680-1f98-418e-9368-f0fdf2675bff" => {
          title: "Good Friday",
          date: DateTime.new(2026, 4, 3)
        },
        "14fcba2c-e532-4c0e-9c24-c75d3f216742" => {
          title: "Easter Monday",
          date: DateTime.new(2026, 4, 6)
        },
        "8fe0ae13-1d7d-41eb-a05e-a635c998d096" => {
          title: "Early May bank holiday",
          date: DateTime.new(2026, 5, 4)
        },
        "bee66569-30a8-4312-8aef-b59513f4b9cc" => {
          title: "Spring bank holiday",
          date: DateTime.new(2026, 5, 25)
        },
        "5ea9da90-16a4-4c34-959f-997982d1be79" => {
          title: "Summer bank holiday",
          date: DateTime.new(2026, 8, 31)
        },
        "cce849b9-943c-45ee-821f-665ad7405050" => {
          title: "Christmas Day",
          date: DateTime.new(2026, 12, 25)
        },
        "634f3d1a-1f5c-4435-acba-7526d5da2023" => {
          title: "Boxing Day (substitute day)",
          date: DateTime.new(2026, 12, 28)
        },
        "e5d3ec0f-6737-44d4-af75-d225e125368a" => {
          title: "New Year’s Day",
          date: DateTime.new(2027, 1, 1)
        },
        "885518be-a2a6-4250-92e5-66161d1e21cd" => {
          title: "Good Friday",
          date: DateTime.new(2027, 3, 26)
        },
        "6f36203c-1c4f-47c2-a6c2-c1216953d2a2" => {
          title: "Easter Monday",
          date: DateTime.new(2027, 3, 29)
        },
        "1cef6f3d-ece6-400f-bdc7-7efc35f41f3c" => {
          title: "Early May bank holiday",
          date: DateTime.new(2027, 5, 3)
        },
        "852ae9fa-6303-453b-a856-99bebb252e0e" => {
          title: "Spring bank holiday",
          date: DateTime.new(2027, 5, 31)
        },
        "6b459547-00a4-47d2-a3cd-fa60ec001cd3" => {
          title: "Summer bank holiday",
          date: DateTime.new(2027, 8, 30)
        },
        "be003839-145f-4379-8b98-8423de78c201" => {
          title: "Christmas Day (substitute day)",
          date: DateTime.new(2027, 12, 27)
        },
        "7c728d36-d2d8-4f2f-86bd-e8a1625d1cab" => {
          title: "Boxing Day (substitute day)",
          date: DateTime.new(2027, 12, 28)
        },
        "26fab6eb-7b46-4240-9685-ba353261a2f4" => {
          title: "New Year’s Day",
          date: DateTime.new(2028, 1, 3),
          notes: "Substitute day"
        },
        "6a9adb1c-bd12-4558-aa77-f28171c3a827" => {
          title: "Good Friday",
          date: DateTime.new(2028, 4, 14)
        },
        "c9070494-3fc2-4b44-98e6-586514547ff1" => {
          title: "Easter Monday",
          date: DateTime.new(2028, 4, 17)
        },
        "d8f794c2-6fad-497a-904b-4166dc948255" => {
          title: "Early May bank holiday",
          date: DateTime.new(2028, 5, 1)
        },
        "f79df0fa-3995-4bc0-8f94-d81ebeb96d95" => {
          title: "Spring bank holiday",
          date: DateTime.new(2028, 5, 29)
        },
        "6c8bfa7f-926c-4d1a-bbcc-cdbd139b29af" => {
          title: "Summer bank holiday",
          date: DateTime.new(2028, 8, 28)
        },
        "30876df4-8326-4d8b-be29-27314ff1b4f1" => {
          title: "Christmas Day",
          date: DateTime.new(2028, 12, 25)
        },
        "37037733-0d9b-4b90-9550-c12b915ed067" => {
          title: "Boxing Day",
          date: DateTime.new(2028, 12, 26)
        }
      }.freeze

      # N.B. England and Wales only
      BANK_HOLIDAYS = DfE::ReferenceData::HardcodedReferenceList.new(
        BANK_HOLIDAYS_DATA,
        schema: BANK_HOLIDAYS_SCHEMA,
        list_description: 'Bank Holidays(England and Wales)',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_bankholidays.md#dfereferencedatabankholidaysbank_holidays',
        field_descriptions: BANK_HOLIDAYS_FIELD_DEFINITIONS
      )
    end
  end
end
