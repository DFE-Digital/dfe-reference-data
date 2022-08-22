module DfE
  module ReferenceData
    module ITT
      SUBJECTS = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '68d6c39c-3a03-4c7d-8116-4b5357c18f5e' => { name: 'Ancient Hebrew',
                                                      hecos_code: '101117',
                                                      allocation_subject: '0893125c-ebe1-411c-a890-21bd59e11e09' },
          '20ee1e1f-edce-4dbd-9bf4-022f0757114d' => { name: 'primary teaching',
                                                      hecos_code: '100511',
                                                      allocation_subject: '237db1c8-428a-464b-8e9c-9ef316ecaf3c' },
          '60baca6d-04cf-4792-ab88-0cc94851ab51' => { name: 'performing arts',
                                                      hecos_code: '100071',
                                                      allocation_subject: 'e46e935b-d692-431f-bf0d-b0aad57b6035' },
          '63e4e3ea-38fb-4e82-8dcb-2cc4e2af83dd' => { name: 'Physical education',
                                                      allocation_subject: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72' },
          '208bf78b-a6f7-401a-ab04-b6d0d36d8fe1' => { name: 'health and social care',
                                                      hecos_code: '100476',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '83d726fe-026a-4968-b537-4838faa1f5bb' => { name: 'general or integrated engineering',
                                                      hecos_code: '100184',
                                                      allocation_subject: '05798776-a0db-4378-8c9c-4e9bfe69b1c6' },
          '17865203-96dc-465b-a65c-98622c962cad' => { name: 'religious studies',
                                                      hecos_code: '100339',
                                                      allocation_subject: '142d7142-7e60-4d2d-a7c8-a9e7d308b0c7' },
          '03a8646b-9d70-4054-9ac1-f6a5fa2ffc92' => { name: 'economics',
                                                      hecos_code: '100450',
                                                      allocation_subject: 'a996783b-c1f0-4420-95ec-a531112f009f' },
          '8042327c-f396-40a4-988d-da017833c90c' => { name: 'Design and technology',
                                                      allocation_subject: '05798776-a0db-4378-8c9c-4e9bfe69b1c6' },
          '58764285-62ea-4274-8987-1f1496fbd5a8' => { name: 'applied computing',
                                                      hecos_code: '100358',
                                                      allocation_subject: '5050634c-2f57-4654-b1aa-ddae3089ac37' },
          '5f32df66-87af-485c-baa5-132169ee09be' => { name: 'general sciences',
                                                      hecos_code: '100390',
                                                      allocation_subject: '46750c03-bbd2-4e2e-881a-a84349970cea' },
          '611c8a31-b1e3-4791-83e0-959df107f940' => { name: 'Japanese language',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          'c57aabfd-4266-40b0-93ff-77abfbc0a5b6' => { name: 'Portuguese language',
                                                      hecos_code: '101142',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          '9e91890d-91fc-4dd8-8007-09d31cee94bf' => { name: 'mathematics',
                                                      hecos_code: '100403',
                                                      allocation_subject: '499be4ee-3895-4c69-92f1-e95d5670a399' },
          '5c92bc39-ec2e-4c2f-83b6-58655bf52958' => { name: 'manufacturing engineering',
                                                      hecos_code: '100202',
                                                      allocation_subject: '05798776-a0db-4378-8c9c-4e9bfe69b1c6' },
          '88831d9f-8469-4532-8453-b4c8826b1ff7' => { name: 'design',
                                                      hecos_code: '100048',
                                                      allocation_subject: '05798776-a0db-4378-8c9c-4e9bfe69b1c6' },
          '8c4c1209-8085-4484-9086-e0437d2ac8ed' => { name: 'French language',
                                                      hecos_code: '100321',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          'dac7d7ef-812d-4658-a902-fb6fcf840dea' => { name: 'Italian language',
                                                      hecos_code: '100326',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          'a93e09b9-4643-4145-a8e3-91d5d724926b' => { name: 'German language',
                                                      hecos_code: '100323',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          '86603ca5-cced-4749-95a7-9c5fe4f05e25' => { name: 'chemistry',
                                                      hecos_code: '100417',
                                                      allocation_subject: 'c6e125b6-e6da-43bf-8d1b-6f8d6349057c' },
          '8c536594-0fd6-4fa8-bb40-d30a1739465d' => { name: 'Chinese languages',
                                                      hecos_code: '101165',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          'fb1bb68c-a9b7-466d-ba82-6902a7934263' => { name: 'English as a second or other language',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          'c81ac20e-3877-4a6d-9366-e50bc500fc1a' => { name: 'recreation and leisure studies',
                                                      hecos_code: '100893',
                                                      allocation_subject: 'f95ee557-44de-469b-830c-854d3701d802' },
          'bc3d465b-fb13-4eb9-acce-987c6232f91f' => { name: 'dance',
                                                      hecos_code: '100068',
                                                      allocation_subject: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72' },
          '8db557a4-db70-4657-be6b-64369dfa9f18' => { name: 'environmental sciences',
                                                      hecos_code: '100381',
                                                      allocation_subject: 'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb' },
          '71ea75e5-81c8-46d1-b597-936af518b899' => { name: 'product design',
                                                      hecos_code: '100050',
                                                      allocation_subject: '05798776-a0db-4378-8c9c-4e9bfe69b1c6' },
          '9280520e-144f-4760-b0d3-b6f1d3b5faa7' => { name: 'sport and exercise sciences',
                                                      hecos_code: '100433',
                                                      allocation_subject: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72' },
          '7c6ea444-ae7e-4e55-896f-f8e7d4b829a5' => { name: 'retail management',
                                                      hecos_code: '100092',
                                                      allocation_subject: 'f95ee557-44de-469b-830c-854d3701d802' },
          '1efabbd4-0371-4a9c-a974-e1fd10ec5bbc' => { name: 'art and design',
                                                      hecos_code: '101361',
                                                      allocation_subject: '6ea9457d-b8a2-4211-b58b-064fed680c99' },
          'b9a62f65-bad6-4e6a-8b20-37531c28cf3d' => { name: 'information technology',
                                                      hecos_code: '100372',
                                                      allocation_subject: '5050634c-2f57-4654-b1aa-ddae3089ac37' },
          '048ef8d9-ed1c-4fb3-87dc-9d6f49cb641e' => { name: 'physics',
                                                      hecos_code: '100425',
                                                      allocation_subject: 'cc6a43bf-78fd-4253-aa7d-0b301b8ce355' },
          'c014fa9a-9b32-4bce-9b9c-a8ca201722f8' => { name: 'specialist teaching (primary with mathematics)',
                                                      hecos_code: '101085',
                                                      allocation_subject: '4b52ca55-cf75-434e-85e7-c08392f9abb7' },
          '75fefeb8-9b74-4545-9982-dd56f92a3cfc' => { name: 'hair and beauty sciences',
                                                      hecos_code: '101373',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          'e8b67b80-0155-46e0-9e90-77a5f6a6e3ad' => { name: 'media and communication studies',
                                                      hecos_code: '100444',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '52df1fd4-efa8-46ea-9558-4c0a80516a4b' => { name: 'construction and the built environment',
                                                      hecos_code: '100150',
                                                      allocation_subject: '05798776-a0db-4378-8c9c-4e9bfe69b1c6' },
          'c5f818be-5062-4049-994f-eb932196093e' => { name: 'historical linguistics',
                                                      hecos_code: '101410',
                                                      allocation_subject: '057ec850-f246-4830-a4c5-d8e189d9aab4' },
          '9e1af130-32ed-4c50-bc68-16df1ab3554f' => { name: 'classical studies',
                                                      hecos_code: '100300',
                                                      allocation_subject: '057ec850-f246-4830-a4c5-d8e189d9aab4' },
          '2bdeb307-42c2-405a-a8e1-4aa6b6b64721' => { name: 'food and beverage studies',
                                                      hecos_code: '101017',
                                                      allocation_subject: '05798776-a0db-4378-8c9c-4e9bfe69b1c6' },
          '97b39c3a-3c0a-4629-a44a-b04eed15a2c0' => { name: 'applied physics',
                                                      hecos_code: '101060',
                                                      allocation_subject: 'cc6a43bf-78fd-4253-aa7d-0b301b8ce355' },
          '8aeea330-8a16-4874-ae3f-4d5fb212f69c' => { name: 'philosophy',
                                                      hecos_code: '100337',
                                                      allocation_subject: '142d7142-7e60-4d2d-a7c8-a9e7d308b0c7' },
          'e8252cb5-c98b-45b8-b3de-e763a7ed79df' => { name: 'early years teaching',
                                                      hecos_code: '100510',
                                                      allocation_subject: '0fd6679d-9e68-47ea-b783-1bdfb6222fdd' },
          '7e22195f-2da5-4902-9bae-a85fd56384b5' => { name: 'music education and teaching',
                                                      hecos_code: '100642',
                                                      allocation_subject: '4a61215c-0fec-4d19-800b-3eb6eae95e63' },
          'efe5a82a-a125-461b-b158-f555c5a4aa36' => { name: 'UK government / Parliamentary studies',
                                                      hecos_code: '100610',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '78528b7f-8d9d-4e9e-a271-e6cced2dda52' => { name: 'production and manufacturing engineering',
                                                      hecos_code: '100209',
                                                      allocation_subject: '05798776-a0db-4378-8c9c-4e9bfe69b1c6' },
          '68534f24-6eb4-497f-b45b-a6d87703d8c3' => { name: 'sports management',
                                                      hecos_code: '100097',
                                                      allocation_subject: 'b2e39f76-9f45-47ea-bb5c-24d02b232a72' },
          'ff119a8c-ddd0-41db-bb92-2884bd85b5ca' => { name: 'applied chemistry',
                                                      hecos_code: '101038',
                                                      allocation_subject: 'c6e125b6-e6da-43bf-8d1b-6f8d6349057c' },
          '192e412b-e4e6-4032-9be5-ef51fd5719cb' => { name: 'travel and tourism',
                                                      hecos_code: '100101',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '78516a88-0d32-4a7d-84e1-b6ae568ac760' => { name: 'business and management',
                                                      hecos_code: '100078',
                                                      allocation_subject: 'f95ee557-44de-469b-830c-854d3701d802' },
          '8508c395-b8fd-43c5-b9e7-6dc108c5f9ba' => { name: 'drama',
                                                      hecos_code: '100069',
                                                      allocation_subject: 'e46e935b-d692-431f-bf0d-b0aad57b6035' },
          '02444cbe-df64-4708-8bcc-cbe5930b01d6' => { name: 'modern languages',
                                                      hecos_code: '100329',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          '5521d902-6db8-4690-9199-c464e37cfd17' => { name: 'statistics',
                                                      hecos_code: '100406',
                                                      allocation_subject: '499be4ee-3895-4c69-92f1-e95d5670a399' },
          '068006ec-27ae-4cd8-9b6f-17368736ea71' => { name: 'Arabic languages',
                                                      hecos_code: '101192',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          'b8d53da8-94ee-4ba1-881b-bb70cd50a873' => { name: 'hospitality',
                                                      hecos_code: '100891',
                                                      allocation_subject: '05798776-a0db-4378-8c9c-4e9bfe69b1c6' },
          'd59319a5-6151-46d3-8e07-f0eee7af0eae' => { name: 'Latin language',
                                                      hecos_code: '101420',
                                                      allocation_subject: '0893125c-ebe1-411c-a890-21bd59e11e09' },
          'b602f1e1-b4aa-4d1d-9565-6f9a26843336' => { name: 'psychology',
                                                      hecos_code: '100497',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '38c8a945-ca83-46c9-8454-671e58991bb1' => { name: 'history',
                                                      hecos_code: '100302',
                                                      allocation_subject: '3b42c830-7f8c-415d-922d-f93c2796a1a2' },
          'a6b38333-2b66-422a-9a35-2b9089c51902' => { name: 'computer science',
                                                      hecos_code: '100366',
                                                      allocation_subject: '5050634c-2f57-4654-b1aa-ddae3089ac37' },
          'c45de961-34e4-45bb-a8ae-8bf83e1476c9' => { name: 'biology',
                                                      hecos_code: '100346',
                                                      allocation_subject: 'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb' },
          'fc181440-ecc8-4a64-b31c-88af815adc8b' => { name: 'law',
                                                      hecos_code: '100485',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '48f17803-5427-4766-bbe1-7bce9db0a993' => { name: 'Citizenship',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          'f67be4b9-369a-41b8-9f29-229747e55b0c' => { name: 'Russian languages',
                                                      hecos_code: '100330',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          '8697cb2b-64bf-43b2-8a03-3c19703d2b53' => { name: 'Spanish language',
                                                      hecos_code: '100332',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          'd685073f-b730-48b9-bc20-accdd66b00b3' => { name: 'Welsh language',
                                                      hecos_code: '100333',
                                                      allocation_subject: 'd46e3117-5eae-4609-8abc-a49cb4ec38d0' },
          '431cff55-9ea6-4bcf-beba-ab5ed46d8629' => { name: 'social sciences',
                                                      hecos_code: '100471',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          'fe310e09-2805-4ccc-a21b-5a2abb9197ea' => { name: 'public services',
                                                      hecos_code: '100091',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '026c96e8-2b37-4f50-adde-6740355e24df' => { name: 'child development',
                                                      hecos_code: '100456',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          '26901536-f900-41c2-87f3-9779692126ac' => { name: 'materials science',
                                                      hecos_code: '100225',
                                                      allocation_subject: '05798776-a0db-4378-8c9c-4e9bfe69b1c6' },
          '598ca321-5086-4aa1-9851-7bb2957b3a22' => { name: 'classical Greek studies',
                                                      hecos_code: '101126',
                                                      allocation_subject: '0893125c-ebe1-411c-a890-21bd59e11e09' },
          '071a99ce-413d-4c79-8eec-4239da30c113' => { name: 'business studies',
                                                      hecos_code: '100079',
                                                      allocation_subject: 'f95ee557-44de-469b-830c-854d3701d802' },
          '0627be0e-1f18-4629-89c8-c6bfc532eb14' => { name: 'English studies',
                                                      hecos_code: '100320',
                                                      allocation_subject: '89ebd882-0e20-4e02-bf76-80427c061aed' },
          '7b6df513-64e8-4020-a681-9965aebe7346' => { name: 'textiles technology',
                                                      hecos_code: '100214',
                                                      allocation_subject: '05798776-a0db-4378-8c9c-4e9bfe69b1c6' },
          '21cf685d-5f27-4a08-a597-2307afb5733d' => { name: 'graphic design',
                                                      hecos_code: '100061',
                                                      allocation_subject: '6ea9457d-b8a2-4211-b58b-064fed680c99' },
          '05044321-4c35-45d5-bb37-42be71be6b80' => { name: 'applied biology',
                                                      hecos_code: '100343',
                                                      allocation_subject: 'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb' },
          '02b32b63-d178-4e63-9bbd-b6709109f4fc' => { name: 'health studies',
                                                      hecos_code: '100473',
                                                      allocation_subject: '61af352e-fec4-48e0-9fb6-926f2663e229' },
          'd1d732b0-1526-4b11-a693-499e813e82f8' => { name: 'geography',
                                                      hecos_code: '100409',
                                                      allocation_subject: '48be902f-9eb4-4f80-8d0b-206143bb7a55' }
        }
      )
      ALLOCATION_SUBJECTS = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          'b2e39f76-9f45-47ea-bb5c-24d02b232a72' => {
            name: 'Physical education'
          },
          'a996783b-c1f0-4420-95ec-a531112f009f' => {
            name: 'Economics'
          },
          '05798776-a0db-4378-8c9c-4e9bfe69b1c6' => {
            name: 'Design and technology'
          },
          '0893125c-ebe1-411c-a890-21bd59e11e09' => {
            name: 'Ancient languages'
          },
          '46750c03-bbd2-4e2e-881a-a84349970cea' => {
            name: 'General sciences'
          },
          '89ebd882-0e20-4e02-bf76-80427c061aed' => {
            name: 'English'
          },
          'c6e125b6-e6da-43bf-8d1b-6f8d6349057c' => {
            name: 'Chemistry'
          },
          'cc6a43bf-78fd-4253-aa7d-0b301b8ce355' => {
            name: 'Physics'
          },
          '5050634c-2f57-4654-b1aa-ddae3089ac37' => {
            name: 'Computing'
          },
          '4b52ca55-cf75-434e-85e7-c08392f9abb7' => {
            name: 'Primary with mathematics'
          },
          '6ea9457d-b8a2-4211-b58b-064fed680c99' => {
            name: 'Art and design'
          },
          '61af352e-fec4-48e0-9fb6-926f2663e229' => {
            name: 'Other subjects'
          },
          '057ec850-f246-4830-a4c5-d8e189d9aab4' => {
            name: 'Classics'
          },
          'e46e935b-d692-431f-bf0d-b0aad57b6035' => {
            name: 'Drama'
          },
          'd46e3117-5eae-4609-8abc-a49cb4ec38d0' => {
            name: 'Modern languages'
          },
          '4a61215c-0fec-4d19-800b-3eb6eae95e63' => {
            name: 'Music'
          },
          '499be4ee-3895-4c69-92f1-e95d5670a399' => {
            name: 'Mathematics'
          },
          '3b42c830-7f8c-415d-922d-f93c2796a1a2' => {
            name: 'History'
          },
          '142d7142-7e60-4d2d-a7c8-a9e7d308b0c7' => {
            name: 'Religious education'
          },
          'd1dbc6f9-806a-45dc-93c3-ea7ab17aa7fb' => {
            name: 'Biology'
          },
          '0fd6679d-9e68-47ea-b783-1bdfb6222fdd' => {
            name: 'Early years ITT'
          },
          '237db1c8-428a-464b-8e9c-9ef316ecaf3c' => {
            name: 'Primary'
          },
          'f95ee557-44de-469b-830c-854d3701d802' => {
            name: 'Business studies'
          },
          '48be902f-9eb4-4f80-8d0b-206143bb7a55' => {
            name: 'Geography'
          }
        }
      )
    end
  end
end
