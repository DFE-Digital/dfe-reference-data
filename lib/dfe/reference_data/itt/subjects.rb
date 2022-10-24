module DfE
  module ReferenceData
    module ITT
      SUBJECTS_SCHEMA = {
        id: :string,
        name: :string,
        hecos_code: {kind: :optional, schema: :string},
        register_category: {kind: :optional, schema: :string},
        publish_category: {kind: :optional, schema: :string},
        category: {kind: :optional, schema: :string},
        incentive: {kind: :optional, schema: :string}
      }.freeze

      INCENTIVES_SCHEMA = {
        id: :string,
        bursary_amount: {kind: :optional, schema: :string},
        scholarship: {kind: :optional, schema: :string}
      }.freeze

      PUBLISH_CATEGORIES_SCHEMA = {
        id: :string,
        name: :string,
        age_range: :symbol,
        tad_category: {kind: :optional, schema: :string}
      }.freeze

      REGISTER_CATEGORIES_SCHEMA = {
        id: :string,
        name: :string,
        publish_category: {kind: :optional, schema: :string}
      }.freeze

      CATEGORIES_SCHEMA = {
        id: :string,
        name: :string,
      }.freeze

      TAD_CATEGORIES_SCHEMA = {
        id: :string,
        name: :string,
        publish_category: {kind: :optional, schema: :string},
        register_name: :string,
        type: :symbol,
        phase: :symbol,
        other_id: :string
      }.freeze
      
      
      # From https://docs.google.com/spreadsheets/d/152PMbCj_bmnm8rmqVFLJAA2Hu8-9pkPjDmGyOi85768/edit#gid=2053127863&range=Q85
      PRIMARY_SUBJECTS = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '20ee1e1f-edce-4dbd-9bf4-022f0757114d' => { name: 'primary teaching',
                                                      hecos_code: '100511',
                                                      register_category: '237db1c8-428a-464b-8e9c-9ef316ecaf3c',
                                                      publish_category: '00',
                                                      category: '50a6f234-2af4-4052-bec4-a3d9241e35dc' },
          # Formerly "specialist teaching (primary with mathematics)"
          'c014fa9a-9b32-4bce-9b9c-a8ca201722f8' => { name: 'primary with mathematics',
                                                      hecos_code: '101085',
                                                      register_category: '4b52ca55-cf75-434e-85e7-c08392f9abb7',
                                                      publish_category: '03',
                                                      category: '50a6f234-2af4-4052-bec4-a3d9241e35dc' },
          'ac245e19-da50-4cd2-bcca-988eee9f6af3' => { name: 'primary with geography and history',
                                                      publish_category: '02',
                                                      category: '50a6f234-2af4-4052-bec4-a3d9241e35dc' },
          'e9e397be-f8a0-449e-bbe1-a1c58b228906' => { name: 'primary with modern languages',
                                                      publish_category: '04',
                                                      category: '50a6f234-2af4-4052-bec4-a3d9241e35dc' },
          'a18310a6-2770-4ede-9ebc-a116d43f4288' => { name: 'primary with physical education',
                                                      publish_category: '06',
                                                      category: '50a6f234-2af4-4052-bec4-a3d9241e35dc' },
          '1c1577a0-9c78-44c6-b252-a375fb29408f' => { name: 'primary with science',
                                                      publish_category: '07',
                                                      category: '50a6f234-2af4-4052-bec4-a3d9241e35dc' }
        },
        SUBJECTS_SCHEMA
      )

      SECONDARY_SUBJECTS = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '68d6c39c-3a03-4c7d-8116-4b5357c18f5e' => { name: 'Ancient Hebrew',
                                                      hecos_code: '101117',
                                                      register_category: '0893125c-ebe1-411c-a890-21bd59e11e09',
                                                      incentive: 'languages',
                                                      publish_category: 'A2',
                                                      category: 'c6d6d59b-f6c5-4a2d-98a1-04f2e99539a9' },
          '60baca6d-04cf-4792-ab88-0cc94851ab51' => { name: 'performing arts',
                                                      hecos_code: '100071',
                                                      register_category: 'e46e935b-d692-431f-bf0d-b0aad57b6035',
                                                      publish_category: '13',
                                                      category: '41f02e8d-de4e-4eff-b02d-a981216ee39e' },
          '63e4e3ea-38fb-4e82-8dcb-2cc4e2af83dd' => { name: 'Physical education',
                                                      register_category: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72',
                                                      # NOTE: Code C7 applies when combined with an EBacc, but this is a historical relic
                                                      publish_category: 'C6',
                                                      category: '3eeba733-48e9-4b4d-8269-045bdfda544e' },
          '208bf78b-a6f7-401a-ab04-b6d0d36d8fe1' => { name: 'health and social care',
                                                      hecos_code: '100476',
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_category: 'L5',
                                                      category: 'd2ffa385-84a8-45ad-9a45-66355b07887b' },
          '83d726fe-026a-4968-b537-4838faa1f5bb' => { name: 'general or integrated engineering',
                                                      hecos_code: '100184',
                                                      register_category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_category: 'DT',
                                                      incentive: 'engineering',
                                                      category: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' },
          '17865203-96dc-465b-a65c-98622c962cad' => { name: 'religious studies',
                                                      hecos_code: '100339',
                                                      register_category: '142d7142-7e60-4d2d-a7c8-a9e7d308b0c7',
                                                      publish_category: 'V6',
                                                      category: 'e8d5dffc-bfba-4d8a-843c-806c6d80d86b' },
          '03a8646b-9d70-4054-9ac1-f6a5fa2ffc92' => { name: 'economics',
                                                      hecos_code: '100450',
                                                      register_category: 'a996783b-c1f0-4420-95ec-a531112f009f',
                                                      publish_category: 'L1',
                                                      category: 'c1ee0be3-b0ce-4581-a62e-1fd79f58920d' },
          '8042327c-f396-40a4-988d-da017833c90c' => { name: 'Design and technology',
                                                      register_category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_category: 'DT',
                                                      incentive: 'engineering',
                                                      category: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' },
          '58764285-62ea-4274-8987-1f1496fbd5a8' => { name: 'applied computing',
                                                      hecos_code: '100358',
                                                      register_category: '5050634c-2f57-4654-b1aa-ddae3089ac37',
                                                      publish_category: '11',
                                                      incentive: 'science',
                                                      category: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51' },

          ## MARKED AS "TO BE REMOVED":
          '5f32df66-87af-485c-baa5-132169ee09be' => { name: 'general sciences',
                                                      hecos_code: '100390',
                                                      register_category: '46750c03-bbd2-4e2e-881a-a84349970cea',
                                                      publish_category: 'F0' },

          '611c8a31-b1e3-4791-83e0-959df107f940' => { name: 'Japanese language',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_category: '19',
                                                      category: '262f596b-b8a2-40c2-9efc-1945586ab0c5' },
          'c57aabfd-4266-40b0-93ff-77abfbc0a5b6' => { name: 'Portuguese language',
                                                      hecos_code: '101142',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_category: '24', # Actually "Modern languages (other)"
                                                      category: '262f596b-b8a2-40c2-9efc-1945586ab0c5' },
          '9e91890d-91fc-4dd8-8007-09d31cee94bf' => { name: 'mathematics',
                                                      hecos_code: '100403',
                                                      register_category: '499be4ee-3895-4c69-92f1-e95d5670a399',
                                                      publish_category: 'G1',
                                                      incentive: 'science',
                                                      category: '71cbc6f2-9b24-4504-86f5-979e573de058' },
          '5c92bc39-ec2e-4c2f-83b6-58655bf52958' => { name: 'manufacturing engineering',
                                                      hecos_code: '100202',
                                                      register_category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_category: 'DT',
                                                      incentive: 'engineering',
                                                      category: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' },
          '88831d9f-8469-4532-8453-b4c8826b1ff7' => { name: 'design',
                                                      hecos_code: '100048',
                                                      register_category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_category: 'DT',
                                                      incentive: 'engineering',
                                                      category: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' },
          '8c4c1209-8085-4484-9086-e0437d2ac8ed' => { name: 'French language',
                                                      hecos_code: '100321',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_category: '15',
                                                      category: '262f596b-b8a2-40c2-9efc-1945586ab0c5' },
          'dac7d7ef-812d-4658-a902-fb6fcf840dea' => { name: 'Italian language',
                                                      hecos_code: '100326',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_category: '18',
                                                      category: '262f596b-b8a2-40c2-9efc-1945586ab0c5' },
          'a93e09b9-4643-4145-a8e3-91d5d724926b' => { name: 'German language',
                                                      hecos_code: '100323',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_category: '17',
                                                      category: '262f596b-b8a2-40c2-9efc-1945586ab0c5' },
          '86603ca5-cced-4749-95a7-9c5fe4f05e25' => { name: 'chemistry',
                                                      hecos_code: '100417',
                                                      register_category: 'c6e125b6-e6da-43bf-8d1b-6f8d6349057c',
                                                      publish_category: 'F1',
                                                      incentive: 'science',
                                                      category: '167b889a-4cbb-47ff-a196-4103cb7ea43d' },
          '8c536594-0fd6-4fa8-bb40-d30a1739465d' => { name: 'Chinese languages',
                                                      hecos_code: '101165',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_category: '20', # Actually Mandarin in pubfind
                                                      category: '262f596b-b8a2-40c2-9efc-1945586ab0c5' },
          'fb1bb68c-a9b7-466d-ba82-6902a7934263' => { name: 'English as a second or other language',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      publish_category: '16',
                                                      category: '48721ee7-577b-4819-8f92-b35d48414443' },
          'c81ac20e-3877-4a6d-9366-e50bc500fc1a' => { name: 'recreation and leisure studies',
                                                      hecos_code: '100893',
                                                      register_category: 'f95ee557-44de-469b-830c-854d3701d802',
                                                      publish_category: '08',
                                                      category: '139d6fa7-6044-423b-a8ac-2192956c357b' },
          'bc3d465b-fb13-4eb9-acce-987c6232f91f' => { name: 'dance',
                                                      hecos_code: '100068',
                                                      register_category: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72',
                                                      publish_category: '12',
                                                      category: '3eeba733-48e9-4b4d-8269-045bdfda544e' },
          '8db557a4-db70-4657-be6b-64369dfa9f18' => { name: 'environmental sciences',
                                                      hecos_code: '100381',
                                                      register_category: 'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb',
                                                      publish_category: 'C1',
                                                      category: 'b51a9678-0a36-4361-983a-fc74f46c1b06' },
          '71ea75e5-81c8-46d1-b597-936af518b899' => { name: 'product design',
                                                      hecos_code: '100050',
                                                      register_category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_category: 'DT',
                                                      incentive: 'engineering',
                                                      category: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' },
          '9280520e-144f-4760-b0d3-b6f1d3b5faa7' => { name: 'sport and exercise sciences',
                                                      hecos_code: '100433',
                                                      register_category: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72',
                                                      publish_category: 'C6',
                                                      category: '3eeba733-48e9-4b4d-8269-045bdfda544e' },
          '7c6ea444-ae7e-4e55-896f-f8e7d4b829a5' => { name: 'retail management',
                                                      hecos_code: '100092',
                                                      register_category: 'f95ee557-44de-469b-830c-854d3701d802',
                                                      publish_category: '08',
                                                      category: '139d6fa7-6044-423b-a8ac-2192956c357b' },
          '1efabbd4-0371-4a9c-a974-e1fd10ec5bbc' => { name: 'art and design',
                                                      hecos_code: '101361',
                                                      register_category: '6ea9457d-b8a2-4211-b58b-064fed680c99',
                                                      publish_category: 'W1',
                                                      category: '69b468df-f7ca-40cb-9410-ed5f4e5bd61b' },
          'b9a62f65-bad6-4e6a-8b20-37531c28cf3d' => { name: 'information technology',
                                                      hecos_code: '100372',
                                                      register_category: '5050634c-2f57-4654-b1aa-ddae3089ac37',
                                                      publish_category: '11',
                                                      incentive: 'science',
                                                      category: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51' },
          '048ef8d9-ed1c-4fb3-87dc-9d6f49cb641e' => { name: 'physics',
                                                      hecos_code: '100425',
                                                      register_category: 'cc6a43bf-78fd-4253-aa7d-0b301b8ce355',
                                                      publish_category: 'F3',
                                                      incentive: 'science',
                                                      category: 'd059a9cd-9b70-49bf-8194-9a71081e6cb9' },
          '75fefeb8-9b74-4545-9982-dd56f92a3cfc' => { name: 'hair and beauty sciences',
                                                      hecos_code: '101373',
                                                      # FIXME: No publish_category
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229',

                                                      category: 'd2ffa385-84a8-45ad-9a45-66355b07887b' },
          'e8b67b80-0155-46e0-9e90-77a5f6a6e3ad' => { name: 'media and communication studies',
                                                      hecos_code: '100444',
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_category: 'P3',
                                                      category: 'be8b8c66-694f-4993-b71f-21710a8a0e29' },
          '52df1fd4-efa8-46ea-9558-4c0a80516a4b' => { name: 'construction and the built environment',
                                                      hecos_code: '100150',
                                                      register_category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_category: 'DT',
                                                      incentive: 'engineering',
                                                      category: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' },
          'c5f818be-5062-4049-994f-eb932196093e' => { name: 'historical linguistics',
                                                      hecos_code: '101410',
                                                      register_category: '057ec850-f246-4830-a4c5-d8e189d9aab4',
                                                      publish_category: 'Q8',
                                                      category: '95547d49-2a52-4ae0-b4ea-744e0da4bfa2' },
          '9e1af130-32ed-4c50-bc68-16df1ab3554f' => { name: 'classical studies',
                                                      hecos_code: '100300',
                                                      register_category: '057ec850-f246-4830-a4c5-d8e189d9aab4',
                                                      publish_category: 'Q8',
                                                      category: '95547d49-2a52-4ae0-b4ea-744e0da4bfa2' },
          '2bdeb307-42c2-405a-a8e1-4aa6b6b64721' => { name: 'food and beverage studies',
                                                      hecos_code: '101017',
                                                      register_category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_category: 'DT',
                                                      incentive: 'engineering',
                                                      category: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' },
          '97b39c3a-3c0a-4629-a44a-b04eed15a2c0' => { name: 'applied physics',
                                                      hecos_code: '101060',
                                                      register_category: 'cc6a43bf-78fd-4253-aa7d-0b301b8ce355',
                                                      publish_category: 'F3',
                                                      incentive: 'science',
                                                      category: 'd059a9cd-9b70-49bf-8194-9a71081e6cb9' },
          '8aeea330-8a16-4874-ae3f-4d5fb212f69c' => { name: 'philosophy',
                                                      hecos_code: '100337',
                                                      register_category: '142d7142-7e60-4d2d-a7c8-a9e7d308b0c7',
                                                      publish_category: 'P1',
                                                      category: '0646e496-34e6-43e3-8f1e-443dbcbf417c' },
          'e8252cb5-c98b-45b8-b3de-e763a7ed79df' => { name: 'early years teaching',
                                                      hecos_code: '100510',
                                                      # FIXME: No publish_category
                                                      register_category: '0fd6679d-9e68-47ea-b783-1bdfb6222fdd',
                                                      category: '5c0ec601-e802-475b-b310-f32068f78f57' },
          '7e22195f-2da5-4902-9bae-a85fd56384b5' => { name: 'music education and teaching',
                                                      hecos_code: '100642',
                                                      register_category: '4a61215c-0fec-4d19-800b-3eb6eae95e63',
                                                      publish_category: 'W3',
                                                      category: 'cc203931-79bf-4d32-982a-ad56600ba141' },
          'efe5a82a-a125-461b-b158-f555c5a4aa36' => { name: 'UK government / Parliamentary studies',
                                                      hecos_code: '100610',
                                                      # FIXME: no publish_category (maybe 09 - citizenship?)
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      category: '01c4ca2a-914d-4afc-ba19-5b71c6348410' },
          '78528b7f-8d9d-4e9e-a271-e6cced2dda52' => { name: 'production and manufacturing engineering',
                                                      hecos_code: '100209',
                                                      register_category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_category: 'DT',
                                                      incentive: 'engineering',
                                                      category: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' },
          '68534f24-6eb4-497f-b45b-a6d87703d8c3' => { name: 'sports management',
                                                      hecos_code: '100097',
                                                      register_category: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72',
                                                      publish_category: 'C6',
                                                      category: '3eeba733-48e9-4b4d-8269-045bdfda544e' },
          'ff119a8c-ddd0-41db-bb92-2884bd85b5ca' => { name: 'applied chemistry',
                                                      hecos_code: '101038',
                                                      register_category: 'c6e125b6-e6da-43bf-8d1b-6f8d6349057c',
                                                      publish_category: 'F1',
                                                      incentive: 'science',
                                                      category: '167b889a-4cbb-47ff-a196-4103cb7ea43d' },

          ## MARKED AS 'TO BE REMOVED':
          '192e412b-e4e6-4032-9be5-ef51fd5719cb' => { name: 'travel and tourism',
                                                      hecos_code: '100101',
                                                      # FIXME: no publish_category
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229' },

          '78516a88-0d32-4a7d-84e1-b6ae568ac760' => { name: 'business and management',
                                                      hecos_code: '100078',
                                                      register_category: 'f95ee557-44de-469b-830c-854d3701d802',
                                                      publish_category: '08',
                                                      category: '139d6fa7-6044-423b-a8ac-2192956c357b' },
          '8508c395-b8fd-43c5-b9e7-6dc108c5f9ba' => { name: 'drama',
                                                      hecos_code: '100069',
                                                      register_category: 'e46e935b-d692-431f-bf0d-b0aad57b6035',
                                                      publish_category: '13',
                                                      category: '41f02e8d-de4e-4eff-b02d-a981216ee39e' },
          '02444cbe-df64-4708-8bcc-cbe5930b01d6' => { name: 'modern languages',
                                                      hecos_code: '100329',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_category: '24',
                                                      category: '262f596b-b8a2-40c2-9efc-1945586ab0c5' },
          '5521d902-6db8-4690-9199-c464e37cfd17' => { name: 'statistics',
                                                      hecos_code: '100406',
                                                      register_category: '499be4ee-3895-4c69-92f1-e95d5670a399',
                                                      publish_category: 'G1',
                                                      incentive: 'science',
                                                      category: '71cbc6f2-9b24-4504-86f5-979e573de058' },
          '068006ec-27ae-4cd8-9b6f-17368736ea71' => { name: 'Arabic languages',
                                                      hecos_code: '101192',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_category: '24', # Actually "Modern languages (other)"
                                                      category: '262f596b-b8a2-40c2-9efc-1945586ab0c5' },
          'b8d53da8-94ee-4ba1-881b-bb70cd50a873' => { name: 'hospitality',
                                                      hecos_code: '100891',
                                                      register_category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_category: 'DT', # FIXME: Questionable
                                                      incentive: 'engineering', # FIXME: Questionable
                                                      category: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' },
          'd59319a5-6151-46d3-8e07-f0eee7af0eae' => { name: 'Latin language',
                                                      hecos_code: '101420',
                                                      register_category: '0893125c-ebe1-411c-a890-21bd59e11e09',
                                                      incentive: 'languages',
                                                      publish_category: 'A0',
                                                      category: 'c6d6d59b-f6c5-4a2d-98a1-04f2e99539a9' },
          'b602f1e1-b4aa-4d1d-9565-6f9a26843336' => { name: 'psychology',
                                                      hecos_code: '100497',
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_category: 'C8',
                                                      category: 'ef4990e2-1786-419d-8814-7e62712092b3' },
          '38c8a945-ca83-46c9-8454-671e58991bb1' => { name: 'history',
                                                      hecos_code: '100302',
                                                      register_category: '3b42c830-7f8c-415d-922d-f93c2796a1a2',
                                                      publish_category: 'V1',
                                                      category: '73ade5bc-0e14-43d9-8a67-6931ba07ab57' },
          'a6b38333-2b66-422a-9a35-2b9089c51902' => { name: 'computer science',
                                                      hecos_code: '100366',
                                                      register_category: '5050634c-2f57-4654-b1aa-ddae3089ac37',
                                                      publish_category: '11',
                                                      incentive: 'science',
                                                      category: 'bc0a97ed-c09c-4688-9dce-b4ea888b6c51' },
          'c45de961-34e4-45bb-a8ae-8bf83e1476c9' => { name: 'biology',
                                                      hecos_code: '100346',
                                                      register_category: 'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb',
                                                      publish_category: 'C1',
                                                      category: 'b51a9678-0a36-4361-983a-fc74f46c1b06' },
          'fc181440-ecc8-4a64-b31c-88af815adc8b' => { name: 'law',
                                                      hecos_code: '100485',
                                                      # FIXME: no publish_category
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      category: 'e898520b-bff7-4ce9-9324-10dd2279894a' },
          '48f17803-5427-4766-bbe1-7bce9db0a993' => { name: 'Citizenship',
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_category: '09',
                                                      category: '01c4ca2a-914d-4afc-ba19-5b71c6348410' },
          'f67be4b9-369a-41b8-9f29-229747e55b0c' => { name: 'Russian languages',
                                                      hecos_code: '100330',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_category: '21',
                                                      category: '262f596b-b8a2-40c2-9efc-1945586ab0c5' },
          '8697cb2b-64bf-43b2-8a03-3c19703d2b53' => { name: 'Spanish language',
                                                      hecos_code: '100332',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_category: '22',
                                                      category: '262f596b-b8a2-40c2-9efc-1945586ab0c5' },
          'd685073f-b730-48b9-bc20-accdd66b00b3' => { name: 'Welsh language',
                                                      hecos_code: '100333',
                                                      register_category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_category: '24', # Actually "Modern languages (other)"
                                                      category: '262f596b-b8a2-40c2-9efc-1945586ab0c5' },
          '431cff55-9ea6-4bcf-beba-ab5ed46d8629' => { name: 'social sciences',
                                                      hecos_code: '100471',
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_category: '14',
                                                      category: 'd17ad243-e9bd-49f8-8a6b-bf846c62fe45' },
          'fe310e09-2805-4ccc-a21b-5a2abb9197ea' => { name: 'public services',
                                                      hecos_code: '100091',
                                                      # FIXME: no publish_category
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      category: '01c4ca2a-914d-4afc-ba19-5b71c6348410' },
          '026c96e8-2b37-4f50-adde-6740355e24df' => { name: 'child development',
                                                      hecos_code: '100456',
                                                      # FIXME: no publish_category
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      category: 'd2ffa385-84a8-45ad-9a45-66355b07887b' },
          '26901536-f900-41c2-87f3-9779692126ac' => { name: 'materials science',
                                                      hecos_code: '100225',
                                                      register_category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_category: 'DT',
                                                      incentive: 'engineering',
                                                      category: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' },
          '598ca321-5086-4aa1-9851-7bb2957b3a22' => { name: 'classical Greek studies',
                                                      hecos_code: '101126',
                                                      register_category: '0893125c-ebe1-411c-a890-21bd59e11e09',
                                                      incentive: 'languages',
                                                      publish_category: 'A1', # "Ancient Greek" in pubfind
                                                      category: 'c6d6d59b-f6c5-4a2d-98a1-04f2e99539a9' },

          '071a99ce-413d-4c79-8eec-4239da30c113' => { name: 'business studies',
                                                      hecos_code: '100079',
                                                      register_category: 'f95ee557-44de-469b-830c-854d3701d802',
                                                      publish_category: '08',
                                                      category: '139d6fa7-6044-423b-a8ac-2192956c357b' },
          '0627be0e-1f18-4629-89c8-c6bfc532eb14' => { name: 'English studies',
                                                      hecos_code: '100320',
                                                      register_category: '89ebd882-0e20-4e02-bf76-80427c061aed',
                                                      publish_category: 'Q3',
                                                      category: '48721ee7-577b-4819-8f92-b35d48414443' },
          '7b6df513-64e8-4020-a681-9965aebe7346' => { name: 'textiles technology',
                                                      hecos_code: '100214',
                                                      register_category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_category: 'DT',
                                                      incentive: 'engineering',
                                                      category: '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' },
          '21cf685d-5f27-4a08-a597-2307afb5733d' => { name: 'graphic design',
                                                      hecos_code: '100061',
                                                      register_category: '6ea9457d-b8a2-4211-b58b-064fed680c99',
                                                      publish_category: 'W1',
                                                      category: '69b468df-f7ca-40cb-9410-ed5f4e5bd61b' },
          '05044321-4c35-45d5-bb37-42be71be6b80' => { name: 'applied biology',
                                                      hecos_code: '100343',
                                                      register_category: 'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb',
                                                      publish_category: 'C1',
                                                      category: 'b51a9678-0a36-4361-983a-fc74f46c1b06' },
          '02b32b63-d178-4e63-9bbd-b6709109f4fc' => { name: 'health studies',
                                                      hecos_code: '100473',
                                                      register_category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_category: 'L5',
                                                      category: 'd2ffa385-84a8-45ad-9a45-66355b07887b' },
          'd1d732b0-1526-4b11-a693-499e813e82f8' => { name: 'geography',
                                                      hecos_code: '100409',
                                                      register_category: '48be902f-9eb4-4f80-8d0b-206143bb7a55',
                                                      publish_category: 'F8',
                                                      incentive: 'geography',
                                                      category: '518be3b3-a0b3-45cb-9299-dfaeea0c4b7e' }
        },
        SUBJECTS_SCHEMA
      )

      SUBJECTS = DfE::ReferenceData::JoinedReferenceList.new([PRIMARY_SUBJECTS, SECONDARY_SUBJECTS], SUBJECTS_SCHEMA)

      # I have given these readable IDs because there's not many of them, and it
      # makes the incentive references more readable.
      INCENTIVES = DfE::ReferenceData::HardcodedReferenceList.new(
        # SEE https://www.gov.uk/government/publications/initial-teacher-training-itt-bursary-funding-manual/initial-teacher-training-bursaries-funding-manual-2022-to-2023-academic-year
        {
          'languages' => {
            bursary_amount: '15000'
          },
          'geography' => {
            bursary_amount: '15000'
          },
          'engineering' => {
            bursary_amount: '15000'
          },
          'biology' => {
            bursary_amount: '10000'
          },
          'science' => {
            bursary_amount: '24000',
            scholarship: '26000'
          }
        },
        INCENTIVES_SCHEMA
      )

      # Subject categories as used in Publish, annotated with their age range.
      PUBLISH_CATEGORIES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '00' => { name: 'Primary',
                    age_range: :primary,
                    tad_category: '19' },
          '01' => { name: 'Primary with English',
                    age_range: :primary,
                    tad_category: '19' },
          '02' => { name: 'Primary with geography and history',
                    age_range: :primary,
                    tad_category: '19' },
          '03' => { name: 'Primary with mathematics',
                    age_range: :primary,
                    tad_category: '19' },
          '04' => { name: 'Primary with modern languages',
                    age_range: :primary,
                    tad_category: '19' },
          '06' => { name: 'Primary with physical education',
                    age_range: :primary,
                    tad_category: '19' },
          '07' => { name: 'Primary with science',
                    age_range: :primary,
                    tad_category: '19' },
          'W1' => { name: 'Art and design',
                    age_range: :secondary,
                    tad_category: '1' },
          'F0' => { name: 'Science',
                    age_range: :seconday,
                    tad_category: '18' },
          'C1' => { name: 'Biology',
                    age_range: :secondary,
                    tad_category: '2' },
          '08' => { name: 'Business studies',
                    age_range: :secondary,
                    tad_category: '3' },
          'F1' => { name: 'Chemistry',
                    age_range: :secondary,
                    tad_category: '4' },
          '09' => { name: 'Citizenship',
                    age_range: :secondary,
                    tad_category: '16' },
          'Q8' => { name: 'Classics',
                    age_range: :secondary,
                    tad_category: '5' },
          'P3' => { name: 'Communication and media studies',
                    age_range: :secondary,
                    tad_category: '16' },
          '11' => { name: 'Computing',
                    age_range: :secondary,
                    tad_category: '6' },
          '12' => { name: 'Dance',
                    age_range: :secondary,
                    tad_category: '17' },
          'DT' => { name: 'Design and technology',
                    age_range: :secondary,
                    tad_category: '7' },
          '13' => { name: 'Drama',
                    age_range: :secondary,
                    tad_category: '8' },
          'L1' => { name: 'Economics',
                    age_range: :secondary,
                    tad_category: '3' },
          'Q3' => { name: 'English',
                    age_range: :secondary,
                    tad_category: '9' },
          'F8' => { name: 'Geography',
                    age_range: :secondary,
                    tad_category: '10' },
          'L5' => { name: 'Health and social care',
                    age_range: :secondary,
                    tad_category: '16' },
          'V1' => { name: 'History',
                    age_range: :secondary,
                    tad_category: '11' },
          'G1' => { name: 'Mathematics',
                    age_range: :secondary,
                    tad_category: '12' },
          'W3' => { name: 'Music',
                    age_range: :secondary,
                    tad_category: '14' },
          'P1' => { name: 'Philosophy',
                    age_range: :secondary,
                    tad_category: '16' },
          'C6' => { name: 'Physical education',
                    age_range: :secondary,
                    tad_category: '17' },
          'F3' => { name: 'Physics',
                    age_range: :secondary,
                    tad_category: '18' },
          'C8' => { name: 'Psychology',
                    age_range: :secondary,
                    tad_category: '16' },
          'V6' => { name: 'Religious education',
                    age_range: :secondary,
                    tad_category: '20' },
          '14' => { name: 'Social sciences',
                    age_range: :secondary,
                    tad_category: '16' },
          '15' => { name: 'French',
                    age_range: :secondary,
                    tad_category: '13' },
          '16' => { name: 'English as a second or other language',
                    age_range: :secondary,
                    tad_category: '13' },
          '17' => { name: 'German',
                    age_range: :secondary,
                    tad_category: '13' },
          '18' => { name: 'Italian',
                    age_range: :secondary,
                    tad_category: '13' },
          '19' => { name: 'Japanese',
                    age_range: :secondary,
                    tad_category: '13' },
          '20' => { name: 'Mandarin',
                    age_range: :secondary,
                    tad_category: '13' },
          '21' => { name: 'Russian',
                    age_range: :secondary,
                    tad_category: '13' },
          '22' => { name: 'Spanish',
                    age_range: :secondary,
                    tad_category: '13' },
          '41' => { name: 'Further education',
                    age_range: :further },
          '24' => { name: 'Modern languages (other)',
                    age_range: :secondary,
                    tad_category: '13' },
          'A0' => { name: 'Latin',
                    age_range: :secondary },
          'A1' => { name: 'Ancient Greek',
                    age_range: :secondary },
          'A2' => { name: 'Ancient Hebrew',
                    age_range: :secondary },
          'C7' => { name: 'Physical education with an EBacc subject',
                    # NOTE: This is a historical relic
                    age_range: :secondary }
        },
        PUBLISH_CATEGORIES_SCHEMA
      )

      REGISTER_CATEGORIES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          'b2e39f76-9f45-47ea-bb5c-24d02b232a72' => {
            name: 'Physical education',
            publish_category: 'C6'
          },
          'a996783b-c1f0-4420-95ec-a531112f009f' => {
            name: 'Economics',
            publish_category: 'L1'
          },
          '05798776-a0db-4378-8c9c-4e9bfe69b1c6' => {
            name: 'Design and technology',
            publish_category: 'DT'
          },
          '0893125c-ebe1-411c-a890-21bd59e11e09' => {
            name: 'Ancient languages'
            # Matches both Ancient Hebrew (A2) and Ancient Greek (A1) from findpub categories
          },
          '46750c03-bbd2-4e2e-881a-a84349970cea' => {
            name: 'General sciences',
            publish_category: 'F0'
          },
          '89ebd882-0e20-4e02-bf76-80427c061aed' => {
            name: 'English',
            publish_category: 'Q3'
          },
          'c6e125b6-e6da-43bf-8d1b-6f8d6349057c' => {
            name: 'Chemistry',
            publish_category: 'F1'
          },
          'cc6a43bf-78fd-4253-aa7d-0b301b8ce355' => {
            name: 'Physics',
            publish_category: 'F3'
          },
          '5050634c-2f57-4654-b1aa-ddae3089ac37' => {
            name: 'Computing',
            publish_category: '11'
          },
          '4b52ca55-cf75-434e-85e7-c08392f9abb7' => {
            name: 'Primary with mathematics',
            publish_category: '03'
          },
          '6ea9457d-b8a2-4211-b58b-064fed680c99' => {
            name: 'Art and design',
            publish_category: 'W1'
          },
          '61af352e-fec4-48e0-9fb6-926f2663e229' => {
            name: 'Other subjects'
            # FIXME: No match in pub/find
          },
          '057ec850-f246-4830-a4c5-d8e189d9aab4' => {
            name: 'Classics',
            publish_category: 'Q8'
          },
          'e46e935b-d692-431f-bf0d-b0aad57b6035' => {
            name: 'Drama',
            publish_category: '13'
          },
          'd46e3117-5eae-4609-8abc-a49cb4ec38d0' => {
            name: 'Modern languages'
            # FIXME: See Modern Languages in pubfind list
          },
          '4a61215c-0fec-4d19-800b-3eb6eae95e63' => {
            name: 'Music',
            publish_category: 'W3'
          },
          '499be4ee-3895-4c69-92f1-e95d5670a399' => {
            name: 'Mathematics',
            publish_category: 'G1'
          },
          '3b42c830-7f8c-415d-922d-f93c2796a1a2' => {
            name: 'History',
            publish_category: 'V1'
          },
          '142d7142-7e60-4d2d-a7c8-a9e7d308b0c7' => {
            name: 'Religious education',
            publish_category: 'V6'
          },
          'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb' => {
            name: 'Biology',
            publish_category: 'C1'
          },
          '0fd6679d-9e68-47ea-b783-1bdfb6222fdd' => {
            name: 'Early years ITT'
            # FIXME: No pubfind mapping
          },
          '237db1c8-428a-464b-8e9c-9ef316ecaf3c' => {
            name: 'Primary',
            publish_category: '00'
          },
          'f95ee557-44de-469b-830c-854d3701d802' => {
            name: 'Business studies',
            publish_category: '08'
          },
          '48be902f-9eb4-4f80-8d0b-206143bb7a55' => {
            name: 'Geography',
            publish_category: 'F8'
          }
        },
        REGISTER_CATEGORIES_SCHEMA
      )

      # From https://docs.google.com/spreadsheets/d/152PMbCj_bmnm8rmqVFLJAA2Hu8-9pkPjDmGyOi85768/edit#gid=2053127863&range=Q1
      CATEGORIES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          'c6d6d59b-f6c5-4a2d-98a1-04f2e99539a9' => { name: 'Ancient languages' },
          '69b468df-f7ca-40cb-9410-ed5f4e5bd61b' => { name: 'Art and design' },
          'b51a9678-0a36-4361-983a-fc74f46c1b06' => { name: 'Biology' },
          '139d6fa7-6044-423b-a8ac-2192956c357b' => { name: 'Business studies' },
          '167b889a-4cbb-47ff-a196-4103cb7ea43d' => { name: 'Chemistry' },
          '95547d49-2a52-4ae0-b4ea-744e0da4bfa2' => { name: 'Classics' },
          '01c4ca2a-914d-4afc-ba19-5b71c6348410' => { name: 'Citizenship' },
          'be8b8c66-694f-4993-b71f-21710a8a0e29' => { name: 'Media studies' },
          'bc0a97ed-c09c-4688-9dce-b4ea888b6c51' => { name: 'Computing' },
          '81900c77-7f9a-4f3a-93e9-02fcbc2ff8a5' => { name: 'Design and technology' },
          '41f02e8d-de4e-4eff-b02d-a981216ee39e' => { name: 'Drama' },
          'c1ee0be3-b0ce-4581-a62e-1fd79f58920d' => { name: 'Economics' },
          '48721ee7-577b-4819-8f92-b35d48414443' => { name: 'English' },
          'd2ffa385-84a8-45ad-9a45-66355b07887b' => { name: 'Health and social care' },
          '262f596b-b8a2-40c2-9efc-1945586ab0c5' => { name: 'Modern languages ' },
          '518be3b3-a0b3-45cb-9299-dfaeea0c4b7e' => { name: 'Geography' },
          '73ade5bc-0e14-43d9-8a67-6931ba07ab57' => { name: 'History' },
          'e898520b-bff7-4ce9-9324-10dd2279894a' => { name: 'Law' },
          '71cbc6f2-9b24-4504-86f5-979e573de058' => { name: 'Mathematics' },
          'cc203931-79bf-4d32-982a-ad56600ba141' => { name: 'Music' },
          'e8d5dffc-bfba-4d8a-843c-806c6d80d86b' => { name: 'Religious education' },
          '0646e496-34e6-43e3-8f1e-443dbcbf417c' => { name: 'Philosophy' },
          '3eeba733-48e9-4b4d-8269-045bdfda544e' => { name: 'Physical education' },
          'd059a9cd-9b70-49bf-8194-9a71081e6cb9' => { name: 'Physics' },
          'ef4990e2-1786-419d-8814-7e62712092b3' => { name: 'Psychology' },
          'd17ad243-e9bd-49f8-8a6b-bf846c62fe45' => { name: 'Social sciences' },

          '50a6f234-2af4-4052-bec4-a3d9241e35dc' => { name: 'Primary' },

          # Added by Alaric to support Register tracking EYTS
          '5c0ec601-e802-475b-b310-f32068f78f57' => { name: 'Early Years' }
        },
        CATEGORIES_SCHEMA
      )

      # Taken from a spreadsheet passed to me
      TAD_CATEGORIES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '19' => { name: 'Primary',
                    publish_category: '07',
                    register_name: 'Primary with science',
                    type: :primary,
                    phase: :primary,
                    other_id: '7' },

          '1' => { name: 'Art & Design',
                   publish_category: 'W1',
                   register_name: 'Art and design',
                   type: :secondary,
                   phase: :secondary,
                   other_id: '8' },

          '18' => { name: 'Physics',
                    publish_category: 'F3',
                    register_name: 'Physics',
                    type: :secondary,
                    phase: :secondary,
                    other_id: '29' },

          '2' => { name: 'Biology',
                   publish_category: nil,
                   register_name: 'Balanced Science',
                   type: :discontinued,
                   phase: :secondary,
                   other_id: '45' },

          '3' => { name: 'Business Studies',
                   publish_category: 'L1',
                   register_name: 'Economics',
                   type: :secondary,
                   phase: :secondary,
                   other_id: '20' },

          '4' => { name: 'Chemistry',
                   publish_category: 'F1',
                   register_name: 'Chemistry',
                   type: :secondary,
                   phase: :secondary,
                   other_id: '12' },

          '16' => { name: 'Others',
                    publish_category: nil,
                    register_name: 'Humanities',
                    type: :discontinued,
                    phase: :secondary,
                    other_id: '44' },

          '5' => { name: 'Classics',
                   publish_category: 'Q8',
                   register_name: 'Classics',
                   type: :secondary,
                   phase: :secondary,
                   other_id: '14' },

          '6' => { name: 'Computing',
                   publish_category: '11',
                   register_name: 'Computing',
                   type: :secondary,
                   phase: :secondary,
                   other_id: '16' },

          '17' => { name: 'Physical education',
                    publish_category: 'C6',
                    register_name: 'Physical education',
                    type: :secondary,
                    phase: :secondary,
                    other_id: '28' },

          '7' => { name: 'Design & Technology',
                   publish_category: 'DT',
                   register_name: 'Design and technology',
                   type: :secondary,
                   phase: :secondary,
                   other_id: '18' },

          '8' => { name: 'Drama',
                   publish_category: '13',
                   register_name: 'Drama',
                   type: :secondary,
                   phase: :secondary,
                   other_id: '19' },

          '9' => { name: 'English',
                   publish_category: 'Q3',
                   register_name: 'English',
                   type: :secondary,
                   phase: :secondary,
                   other_id: '21' },

          '10' => { name: 'Geography',
                    publish_category: 'F8',
                    register_name: 'Geography',
                    type: :secondary,
                    phase: :secondary,
                    other_id: '22' },

          '11' => { name: 'History',
                    publish_category: 'V1',
                    register_name: 'History',
                    type: :secondary,
                    phase: :secondary,
                    other_id: '24' },

          '12' => { name: 'Mathematics',
                    publish_category: 'G1',
                    register_name: 'Mathematics',
                    type: :secondary,
                    phase: :secondary,
                    other_id: '25' },

          '14' => { name: 'Music',
                    publish_category: 'W3',
                    register_name: 'Music',
                    type: :secondary,
                    phase: :secondary,
                    other_id: '26' },

          '20' => { name: 'Religious Education',
                    publish_category: 'V6',
                    register_name: 'Religious education',
                    type: :secondary,
                    phase: :secondary,
                    other_id: '31' },

          '13' => { name: 'Modern Foreign Languages',
                    publish_category: '24',
                    register_name: 'Modern languages (other)',
                    type: :modern_languages,
                    phase: :secondary,
                    other_id: '42' }
        },
        TAD_CATEGORIES_SCHEMA
      )
    end
  end
end
