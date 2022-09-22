module DfE
  module ReferenceData
    module ITT
      # FIXME: Publish subjects with no references:

      # C7 - Physical education with an EBacc subject
      # 41 - Further Education
      # 07 - Primary with science
      # 06 - Primary with physical education
      # As an exception, 03 - Primary with mathematics IS mapped
      # 04 - Primary with modern languages
      # 02 - Primary with geography and history
      # 01 - Primary with English

      SUBJECTS = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '68d6c39c-3a03-4c7d-8116-4b5357c18f5e' => { name: 'Ancient Hebrew',
                                                      hecos_code: '101117',
                                                      category: '0893125c-ebe1-411c-a890-21bd59e11e09',
                                                      incentive: 'languages',
                                                      publish_code: 'A2' },
          '20ee1e1f-edce-4dbd-9bf4-022f0757114d' => { name: 'primary teaching',
                                                      hecos_code: '100511',
                                                      category: '237db1c8-428a-464b-8e9c-9ef316ecaf3c',
                                                      publish_code: '00' },
          '60baca6d-04cf-4792-ab88-0cc94851ab51' => { name: 'performing arts',
                                                      hecos_code: '100071',
                                                      category: 'e46e935b-d692-431f-bf0d-b0aad57b6035',
                                                      publish_code: '13' },
          '63e4e3ea-38fb-4e82-8dcb-2cc4e2af83dd' => { name: 'Physical education',
                                                      category: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72',
                                                      # NOTE: Code C7 applies when combined with an EBacc, but this is a historical relic
                                                      publish_code: 'C6' },
          '208bf78b-a6f7-401a-ab04-b6d0d36d8fe1' => { name: 'health and social care',
                                                      hecos_code: '100476',
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_code: 'L5' },
          '83d726fe-026a-4968-b537-4838faa1f5bb' => { name: 'general or integrated engineering',
                                                      hecos_code: '100184',
                                                      category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_code: 'DT',
                                                      incentive: 'geography and design' },
          '17865203-96dc-465b-a65c-98622c962cad' => { name: 'religious studies',
                                                      hecos_code: '100339',
                                                      category: '142d7142-7e60-4d2d-a7c8-a9e7d308b0c7',
                                                      publish_code: 'V6' },
          '03a8646b-9d70-4054-9ac1-f6a5fa2ffc92' => { name: 'economics',
                                                      hecos_code: '100450',
                                                      category: 'a996783b-c1f0-4420-95ec-a531112f009f',
                                                      publish_code: 'L1' },
          '8042327c-f396-40a4-988d-da017833c90c' => { name: 'Design and technology',
                                                      category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_code: 'DT',
                                                      incentive: 'geography and design' },
          '58764285-62ea-4274-8987-1f1496fbd5a8' => { name: 'applied computing',
                                                      hecos_code: '100358',
                                                      category: '5050634c-2f57-4654-b1aa-ddae3089ac37',
                                                      publish_code: '11',
                                                      incentive: 'sciency stuff' },
          '5f32df66-87af-485c-baa5-132169ee09be' => { name: 'general sciences',
                                                      hecos_code: '100390',
                                                      category: '46750c03-bbd2-4e2e-881a-a84349970cea',
                                                      publish_code: 'F0' },
          '611c8a31-b1e3-4791-83e0-959df107f940' => { name: 'Japanese language',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_code: '19' },
          'c57aabfd-4266-40b0-93ff-77abfbc0a5b6' => { name: 'Portuguese language',
                                                      hecos_code: '101142',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      # Actually "Modern languages (other)"
                                                      publish_code: '24' },
          '9e91890d-91fc-4dd8-8007-09d31cee94bf' => { name: 'mathematics',
                                                      hecos_code: '100403',
                                                      category: '499be4ee-3895-4c69-92f1-e95d5670a399',
                                                      publish_code: 'G1',
                                                      incentive: 'sciency stuff' },
          '5c92bc39-ec2e-4c2f-83b6-58655bf52958' => { name: 'manufacturing engineering',
                                                      hecos_code: '100202',
                                                      category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_code: 'DT',
                                                      incentive: 'geography and design' },
          '88831d9f-8469-4532-8453-b4c8826b1ff7' => { name: 'design',
                                                      hecos_code: '100048',
                                                      category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_code: 'DT',
                                                      incentive: 'geography and design' },
          '8c4c1209-8085-4484-9086-e0437d2ac8ed' => { name: 'French language',
                                                      hecos_code: '100321',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_code: '15' },
          'dac7d7ef-812d-4658-a902-fb6fcf840dea' => { name: 'Italian language',
                                                      hecos_code: '100326',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_code: '18' },
          'a93e09b9-4643-4145-a8e3-91d5d724926b' => { name: 'German language',
                                                      hecos_code: '100323',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_code: '17' },
          '86603ca5-cced-4749-95a7-9c5fe4f05e25' => { name: 'chemistry',
                                                      hecos_code: '100417',
                                                      category: 'c6e125b6-e6da-43bf-8d1b-6f8d6349057c',
                                                      publish_code: 'F1',
                                                      incentive: 'sciency stuff' },
          '8c536594-0fd6-4fa8-bb40-d30a1739465d' => { name: 'Chinese languages',
                                                      hecos_code: '101165',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      # Actually Mandarin in pubfind
                                                      publish_code: '20' },
          'fb1bb68c-a9b7-466d-ba82-6902a7934263' => { name: 'English as a second or other language',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      publish_code: '16' },
          'c81ac20e-3877-4a6d-9366-e50bc500fc1a' => { name: 'recreation and leisure studies',
                                                      hecos_code: '100893',
                                                      category: 'f95ee557-44de-469b-830c-854d3701d802',
                                                      publish_code: '08' },
          'bc3d465b-fb13-4eb9-acce-987c6232f91f' => { name: 'dance',
                                                      hecos_code: '100068',
                                                      category: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72',
                                                      publish_code: '12' },
          '8db557a4-db70-4657-be6b-64369dfa9f18' => { name: 'environmental sciences',
                                                      hecos_code: '100381',
                                                      category: 'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb',
                                                      publish_code: 'C1' },
          '71ea75e5-81c8-46d1-b597-936af518b899' => { name: 'product design',
                                                      hecos_code: '100050',
                                                      category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_code: 'DT',
                                                      incentive: 'geography and design' },
          '9280520e-144f-4760-b0d3-b6f1d3b5faa7' => { name: 'sport and exercise sciences',
                                                      hecos_code: '100433',
                                                      category: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72',
                                                      publish_code: 'C6' },
          '7c6ea444-ae7e-4e55-896f-f8e7d4b829a5' => { name: 'retail management',
                                                      hecos_code: '100092',
                                                      category: 'f95ee557-44de-469b-830c-854d3701d802',
                                                      publish_code: '08' },
          '1efabbd4-0371-4a9c-a974-e1fd10ec5bbc' => { name: 'art and design',
                                                      hecos_code: '101361',
                                                      category: '6ea9457d-b8a2-4211-b58b-064fed680c99',
                                                      publish_code: 'W1' },
          'b9a62f65-bad6-4e6a-8b20-37531c28cf3d' => { name: 'information technology',
                                                      hecos_code: '100372',
                                                      category: '5050634c-2f57-4654-b1aa-ddae3089ac37',
                                                      publish_code: '11',
                                                      incentive: 'sciency stuff' },
          '048ef8d9-ed1c-4fb3-87dc-9d6f49cb641e' => { name: 'physics',
                                                      hecos_code: '100425',
                                                      category: 'cc6a43bf-78fd-4253-aa7d-0b301b8ce355',
                                                      publish_code: 'F3',
                                                      incentive: 'sciency stuff' },
          'c014fa9a-9b32-4bce-9b9c-a8ca201722f8' => { name: 'specialist teaching (primary with mathematics)',
                                                      hecos_code: '101085',
                                                      category: '4b52ca55-cf75-434e-85e7-c08392f9abb7',
                                                      publish_code: '03' },
          '75fefeb8-9b74-4545-9982-dd56f92a3cfc' => { name: 'hair and beauty sciences',
                                                      hecos_code: '101373',
                                                      # FIXME: No publish_code
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          'e8b67b80-0155-46e0-9e90-77a5f6a6e3ad' => { name: 'media and communication studies',
                                                      hecos_code: '100444',
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_code: 'P3' },
          '52df1fd4-efa8-46ea-9558-4c0a80516a4b' => { name: 'construction and the built environment',
                                                      hecos_code: '100150',
                                                      category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_code: 'DT',
                                                      incentive: 'geography and design' },
          'c5f818be-5062-4049-994f-eb932196093e' => { name: 'historical linguistics',
                                                      hecos_code: '101410',
                                                      category: '057ec850-f246-4830-a4c5-d8e189d9aab4',
                                                      publish_code: 'Q8' },
          '9e1af130-32ed-4c50-bc68-16df1ab3554f' => { name: 'classical studies',
                                                      hecos_code: '100300',
                                                      category: '057ec850-f246-4830-a4c5-d8e189d9aab4',
                                                      publish_code: 'Q8' },
          '2bdeb307-42c2-405a-a8e1-4aa6b6b64721' => { name: 'food and beverage studies',
                                                      hecos_code: '101017',
                                                      category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_code: 'DT',
                                                      incentive: 'geography and design' },
          '97b39c3a-3c0a-4629-a44a-b04eed15a2c0' => { name: 'applied physics',
                                                      hecos_code: '101060',
                                                      category: 'cc6a43bf-78fd-4253-aa7d-0b301b8ce355',
                                                      publish_code: 'F3',
                                                      incentive: 'sciency stuff' },
          '8aeea330-8a16-4874-ae3f-4d5fb212f69c' => { name: 'philosophy',
                                                      hecos_code: '100337',
                                                      category: '142d7142-7e60-4d2d-a7c8-a9e7d308b0c7',
                                                      publish_code: 'P1' },
          'e8252cb5-c98b-45b8-b3de-e763a7ed79df' => { name: 'early years teaching',
                                                      hecos_code: '100510',
                                                      # FIXME: No publish_code
                                                      category: '0fd6679d-9e68-47ea-b783-1bdfb6222fdd' },
          '7e22195f-2da5-4902-9bae-a85fd56384b5' => { name: 'music education and teaching',
                                                      hecos_code: '100642',
                                                      category: '4a61215c-0fec-4d19-800b-3eb6eae95e63',
                                                      publish_code: 'W3' },
          'efe5a82a-a125-461b-b158-f555c5a4aa36' => { name: 'UK government / Parliamentary studies',
                                                      hecos_code: '100610',
                                                      # FIXME: no publish_code (maybe 09 - citizenship?)
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '78528b7f-8d9d-4e9e-a271-e6cced2dda52' => { name: 'production and manufacturing engineering',
                                                      hecos_code: '100209',
                                                      category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_code: 'DT',
                                                      incentive: 'geography and design' },
          '68534f24-6eb4-497f-b45b-a6d87703d8c3' => { name: 'sports management',
                                                      hecos_code: '100097',
                                                      category: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72',
                                                      publish_code: 'C6' },
          'ff119a8c-ddd0-41db-bb92-2884bd85b5ca' => { name: 'applied chemistry',
                                                      hecos_code: '101038',
                                                      category: 'c6e125b6-e6da-43bf-8d1b-6f8d6349057c',
                                                      publish_code: 'F1',
                                                      incentive: 'sciency stuff' },
          '192e412b-e4e6-4032-9be5-ef51fd5719cb' => { name: 'travel and tourism',
                                                      hecos_code: '100101',
                                                      # FIXME: no publish_code
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '78516a88-0d32-4a7d-84e1-b6ae568ac760' => { name: 'business and management',
                                                      hecos_code: '100078',
                                                      category: 'f95ee557-44de-469b-830c-854d3701d802',
                                                      publish_code: '08' },
          '8508c395-b8fd-43c5-b9e7-6dc108c5f9ba' => { name: 'drama',
                                                      hecos_code: '100069',
                                                      category: 'e46e935b-d692-431f-bf0d-b0aad57b6035',
                                                      publish_code: '13' },
          '02444cbe-df64-4708-8bcc-cbe5930b01d6' => { name: 'modern languages',
                                                      hecos_code: '100329',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      # Actually "Modern languages (other)"
                                                      publish_code: '24' },
          '5521d902-6db8-4690-9199-c464e37cfd17' => { name: 'statistics',
                                                      hecos_code: '100406',
                                                      category: '499be4ee-3895-4c69-92f1-e95d5670a399',
                                                      publish_code: 'G1',
                                                      incentive: 'sciency stuff' },
          '068006ec-27ae-4cd8-9b6f-17368736ea71' => { name: 'Arabic languages',
                                                      hecos_code: '101192',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      # Actually "Modern languages (other)"
                                                      publish_code: '24' },
          'b8d53da8-94ee-4ba1-881b-bb70cd50a873' => { name: 'hospitality',
                                                      hecos_code: '100891',
                                                      category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_code: 'DT', # FIXME: Questionable
                                                      incentive: 'geography and design' },
          'd59319a5-6151-46d3-8e07-f0eee7af0eae' => { name: 'Latin language',
                                                      hecos_code: '101420',
                                                      category: '0893125c-ebe1-411c-a890-21bd59e11e09',
                                                      incentive: 'languages',
                                                      publish_code: 'A0' },
          'b602f1e1-b4aa-4d1d-9565-6f9a26843336' => { name: 'psychology',
                                                      hecos_code: '100497',
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_code: 'C8' },
          '38c8a945-ca83-46c9-8454-671e58991bb1' => { name: 'history',
                                                      hecos_code: '100302',
                                                      category: '3b42c830-7f8c-415d-922d-f93c2796a1a2',
                                                      publish_code: 'V1' },
          'a6b38333-2b66-422a-9a35-2b9089c51902' => { name: 'computer science',
                                                      hecos_code: '100366',
                                                      category: '5050634c-2f57-4654-b1aa-ddae3089ac37',
                                                      publish_code: '11',
                                                      incentive: 'sciency stuff' },
          'c45de961-34e4-45bb-a8ae-8bf83e1476c9' => { name: 'biology',
                                                      hecos_code: '100346',
                                                      category: 'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb',
                                                      publish_code: 'C1' },
          'fc181440-ecc8-4a64-b31c-88af815adc8b' => { name: 'law',
                                                      hecos_code: '100485',
                                                      # FIXME: no publish_code
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '48f17803-5427-4766-bbe1-7bce9db0a993' => { name: 'Citizenship',
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_code: '09' },
          'f67be4b9-369a-41b8-9f29-229747e55b0c' => { name: 'Russian languages',
                                                      hecos_code: '100330',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_code: '21' },
          '8697cb2b-64bf-43b2-8a03-3c19703d2b53' => { name: 'Spanish language',
                                                      hecos_code: '100332',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      publish_code: '22' },
          'd685073f-b730-48b9-bc20-accdd66b00b3' => { name: 'Welsh language',
                                                      hecos_code: '100333',
                                                      category: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0',
                                                      incentive: 'languages',
                                                      # Actually "Modern languages (other)"
                                                      publish_code: '24' },
          '431cff55-9ea6-4bcf-beba-ab5ed46d8629' => { name: 'social sciences',
                                                      hecos_code: '100471',
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_code: '14' },
          'fe310e09-2805-4ccc-a21b-5a2abb9197ea' => { name: 'public services',
                                                      hecos_code: '100091',
                                                      # FIXME: no publish_code
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '026c96e8-2b37-4f50-adde-6740355e24df' => { name: 'child development',
                                                      hecos_code: '100456',
                                                      # FIXME: no publish_code
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '26901536-f900-41c2-87f3-9779692126ac' => { name: 'materials science',
                                                      hecos_code: '100225',
                                                      category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_code: 'DT',
                                                      incentive: 'geography and design' },
          '598ca321-5086-4aa1-9851-7bb2957b3a22' => { name: 'classical Greek studies',
                                                      hecos_code: '101126',
                                                      category: '0893125c-ebe1-411c-a890-21bd59e11e09',
                                                      incentive: 'languages',
                                                      # Actually, this is down as "Ancient Greek" in pubfind
                                                      publish_code: 'A1' },
          '071a99ce-413d-4c79-8eec-4239da30c113' => { name: 'business studies',
                                                      hecos_code: '100079',
                                                      category: 'f95ee557-44de-469b-830c-854d3701d802',
                                                      publish_code: '08' },
          '0627be0e-1f18-4629-89c8-c6bfc532eb14' => { name: 'English studies',
                                                      hecos_code: '100320',
                                                      category: '89ebd882-0e20-4e02-bf76-80427c061aed',
                                                      publish_code: 'Q3' },
          '7b6df513-64e8-4020-a681-9965aebe7346' => { name: 'textiles technology',
                                                      hecos_code: '100214',
                                                      category: '05798776-a0db-4378-8c9c-4e9bfe69b1c6',
                                                      publish_code: 'DT',
                                                      incentive: 'geography and design' },
          '21cf685d-5f27-4a08-a597-2307afb5733d' => { name: 'graphic design',
                                                      hecos_code: '100061',
                                                      category: '6ea9457d-b8a2-4211-b58b-064fed680c99',
                                                      publish_code: 'W1' },
          '05044321-4c35-45d5-bb37-42be71be6b80' => { name: 'applied biology',
                                                      hecos_code: '100343',
                                                      category: 'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb',
                                                      publish_code: 'C1' },
          '02b32b63-d178-4e63-9bbd-b6709109f4fc' => { name: 'health studies',
                                                      hecos_code: '100473',
                                                      category: '61af352e-fec4-48e0-9fb6-926f2663e229',
                                                      publish_code: 'L5' },
          'd1d732b0-1526-4b11-a693-499e813e82f8' => { name: 'geography',
                                                      hecos_code: '100409',
                                                      category: '48be902f-9eb4-4f80-8d0b-206143bb7a55',
                                                      publish_code: 'F8',
                                                      incentive: 'geography and design' }
        }
      )

      # I have given these readable IDs because there's not many of them, and it
      # makes the incentive references more readable.
      INCENTIVES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          'languages' => {
            bursary_amount: '15000'
          },
          # FIXME: Needs a better name!
          'geography and design' => {
            # FIXME: This is assigned to subjects in category
            # 05798776-a0db-4378-8c9c-4e9bfe69b1c6 as that's what pub/find
            # assigns to subject code DT, but some of the actual subjects in
            # this category look potentially removed from that - needs checking
            bursary_amount: '15000'
          },
          'biology' => {
            bursary_amount: '10000'
          },
          'sciency stuff except biology' => {
            bursary_amount: '24000',
            scholarship: '26000'
          }
        }
      )

      # Formerly "allocation subjects" from register, also annotated with a
      # publish_code where a simple correspondance between a category and a
      # subject from publish exists - but the publish_code values from the
      # SUBJECTS should take precedence over that in the corresponding category
      # in here!
      CATEGORIES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          'b2e39f76-9f45-47ea-bb5c-24d02b232a72' => {
            name: 'Physical education',
            publish_code: 'C6'
          },
          'a996783b-c1f0-4420-95ec-a531112f009f' => {
            name: 'Economics',
            publish_code: 'L1'
          },
          '05798776-a0db-4378-8c9c-4e9bfe69b1c6' => {
            name: 'Design and technology',
            publish_code: 'DT'
          },
          '0893125c-ebe1-411c-a890-21bd59e11e09' => {
            name: 'Ancient languages'
            # FIXME: Matches Ancient Hebrew (A2) and Ancient Greek (A1)
          },
          '46750c03-bbd2-4e2e-881a-a84349970cea' => {
            name: 'General sciences',
            publish_code: 'F0'
          },
          '89ebd882-0e20-4e02-bf76-80427c061aed' => {
            name: 'English',
            publish_code: 'Q3'
          },
          'c6e125b6-e6da-43bf-8d1b-6f8d6349057c' => {
            name: 'Chemistry',
            publish_code: 'F1'
          },
          'cc6a43bf-78fd-4253-aa7d-0b301b8ce355' => {
            name: 'Physics',
            publish_code: 'F3'
          },
          '5050634c-2f57-4654-b1aa-ddae3089ac37' => {
            name: 'Computing',
            publish_code: '11'
          },
          '4b52ca55-cf75-434e-85e7-c08392f9abb7' => {
            name: 'Primary with mathematics',
            publish_code: '03'
          },
          '6ea9457d-b8a2-4211-b58b-064fed680c99' => {
            name: 'Art and design',
            publish_code: 'W1'
          },
          '61af352e-fec4-48e0-9fb6-926f2663e229' => {
            name: 'Other subjects'
            # FIXME: No match in pub/find
          },
          '057ec850-f246-4830-a4c5-d8e189d9aab4' => {
            name: 'Classics',
            publish_code: 'Q8'
          },
          'e46e935b-d692-431f-bf0d-b0aad57b6035' => {
            name: 'Drama',
            publish_code: '13'
          },
          'd46e3117-5eae-4609-8abc-a49cb4ec38d0' => {
            name: 'Modern languages'
            # FIXME: See Modern Languages in pubfind list
          },
          '4a61215c-0fec-4d19-800b-3eb6eae95e63' => {
            name: 'Music',
            publish_code: 'W3'
          },
          '499be4ee-3895-4c69-92f1-e95d5670a399' => {
            name: 'Mathematics',
            publish_code: 'G1'
          },
          '3b42c830-7f8c-415d-922d-f93c2796a1a2' => {
            name: 'History',
            publish_code: 'V1'
          },
          '142d7142-7e60-4d2d-a7c8-a9e7d308b0c7' => {
            name: 'Religious education',
            publish_code: 'V6'
          },
          'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb' => {
            name: 'Biology',
            publish_code: 'C1'
          },
          '0fd6679d-9e68-47ea-b783-1bdfb6222fdd' => {
            name: 'Early years ITT'
            # FIXME: No pubfind mapping
          },
          '237db1c8-428a-464b-8e9c-9ef316ecaf3c' => {
            name: 'Primary',
            publish_code: '00'
          },
          'f95ee557-44de-469b-830c-854d3701d802' => {
            name: 'Business studies',
            publish_code: '08'
          },
          '48be902f-9eb4-4f80-8d0b-206143bb7a55' => {
            name: 'Geography',
            publish_code: 'F8'
          }
        }
      )
    end
  end
end
