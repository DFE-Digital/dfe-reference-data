module DfE
  module ReferenceData
    module Qualifications
      QUALIFICATIONS_SCHEMA = {
        id: :string,
        name: :string,
        level: { kind: :code, pattern: /^entry|[1-8]$/ },
        suggestion_synonyms: { kind: :array, element_schema: :string },
        match_synonyms: { kind: :array, element_schema: :string },
        degree: { kind: :optional, schema: :symbol },
        hint: { kind: :optional, schema: :string }
      }.freeze

      QUALIFICATIONS = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '3a736cb8-039e-4a9f-b2fb-1fcc45acce58' =>
          { name: 'entry level award',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: 'entry' },
          '485afd6a-78e1-420c-90a9-e760da092013' =>
          { name: 'entry level certificate',
            suggestion_synonyms: ['ELC'],
            match_synonyms: [],
            level: 'entry' },
          '4a0e7f00-3ae0-4c3e-858c-f9c73d425def' =>
          { name: 'entry level diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: 'entry' },
          '56062eee-173a-4e63-9948-29dca8460390' =>
          { name: 'entry level English for speakers of other languages',
            suggestion_synonyms: ['ESOL'],
            match_synonyms: [],
            level: 'entry' },
          'e5fef144-666c-48ce-9d4e-4c474fafc1d4' =>
          { name: 'entry level essential skills',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: 'entry' },
          '902bfaee-2281-4973-a2e4-78d96f45ddc2' =>
          { name: 'entry level functional skills',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: 'entry' },
          '9190827b-80e6-487e-96da-6ac8fe6c915d' =>
          { name: 'Skills for Life',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: 'entry' },
          '830f1cbe-ac4e-4dd8-9a29-f1e52944b226' =>
          { name: 'first certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '1' },
          '72980e1d-458c-456a-89f7-3fb169cd31cd' =>
          { name: 'GCSE - grades 3, 2, 1 or grades D, E, F, G',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '1' },
          'ed1b2d27-16b0-4a54-9d35-7ad5cc54d044' =>
          { name: 'level 1 award',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '1' },
          'd726e24a-45b3-44ea-ad44-c83585a344d5' =>
          { name: 'level 1 certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '1' },
          '9b92461a-69e6-4328-88d6-f80c874d7a0e' =>
          { name: 'level 1 diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '1' },
          '76fd6c8a-5948-4de1-961d-fe7458911004' =>
          { name: 'level 1 English for speakers of other languages',
            suggestion_synonyms: ['ESOL'],
            match_synonyms: [],
            level: '1' },
          '1e0a6198-1e33-4f77-b633-6343a733bd96' =>
          { name: 'level 1 essential skills',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '1' },
          '60464bb0-2afc-41e7-8fde-b973d935dc8b' =>
          { name: 'level 1 functional skills',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '1' },
          '8d6a7d7e-c529-4093-a468-fe2aa9e7e39e' =>
          { name: 'level 1 national vocational qualification',
            suggestion_synonyms: ['NVQ'],
            match_synonyms: [],
            level: '1' },
          '972b71f0-6253-4efb-9db0-c21fabea4b34' =>
          { name: 'music grades 1, 2 and 3',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '1' },
          '1d2dfa29-cf75-4bee-bff8-4bf201666369' =>
          { name: 'CSE - grade 1',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          '995c0d70-4e46-4286-a493-8d59e7d0908f' =>
          { name: 'GCSE - grades 9, 8, 7, 6, 5, 4 or grades A*, A, B, C',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          '98e2fe2c-a807-4d08-a644-33bcbe55e0d1' =>
          { name: 'intermediate apprenticeship',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          '81f92c72-3c91-4cc4-b9e0-dc2d6f96d724' =>
          { name: 'level 2 award',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          'b9637576-fa7f-46be-a21e-63e41c08e05c' =>
          { name: 'level 2 certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          '0d38a8a0-46f4-44e4-95ff-7c80784201bc' =>
          { name: 'level 2 diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          '9c12e356-a242-4077-916f-61fadb662b64' =>
          { name: 'level 2 English for speakers of other languages',
            suggestion_synonyms: ['ESOL'],
            match_synonyms: [],
            level: '2' },
          '2ae6e10d-da25-4eb8-8031-af18c1699322' =>
          { name: 'level 2 essential skills',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          'e7205afc-66d2-4c0f-8f9c-b30f42a43412' =>
          { name: 'level 2 functional skills',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          '9b1490cb-b9da-4661-a525-d6a3de3e3c6b' =>
          { name: 'level 2 national certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          '7cbdd373-48a1-4c17-8307-b7aa9eaaf636' =>
          { name: 'level 2 national diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          'b27e3583-b7a6-4f50-bf08-e54e5f80c0dd' =>
          { name: 'level 2 national vocational qualification',
            suggestion_synonyms: ['NVQ'],
            match_synonyms: [],
            level: '2' },
          '2eb51716-8f56-4d33-b482-0cec89eae965' =>
          { name: 'music grades 4 and 5',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          '551c390b-d378-4d41-ad0b-4caf800804d2' =>
          { name: 'O level - grade A, B or C',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '2' },
          '7811d3e0-c1c2-4fb8-9d23-844ceab0764a' =>
          { name: 'A level',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          '39b9f3c2-00cc-4408-85c8-1972726c728f' =>
          { name: 'access to higher education diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          'c4282161-2358-429c-baba-b7765b02262c' =>
          { name: 'advanced apprenticeship',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          '14c9c9f8-3b44-4e3d-bf4c-17cded6a98fe' =>
          { name: 'applied general',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          '4646546e-5d85-47b6-93db-b844a3cec56c' =>
          { name: 'AS level',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          '414ac908-1e70-4b13-834f-936cbdb995cc' =>
          { name: 'international Baccalaureate diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          '5ace8fac-63be-457c-918d-f048e23fa2e0' =>
          { name: 'level 3 award',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          'fa3dbbe7-8ea6-4787-83b9-a8118672666d' =>
          { name: 'level 3 certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          '98db840e-a399-40c5-a95d-589e54ccee4c' =>
          { name: 'level 3 diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          '0ab5bb24-3cde-4489-96ff-fd558c046474' =>
          { name: 'level 3 English for speakers of other languages',
            suggestion_synonyms: ['ESOL'],
            match_synonyms: [],
            level: '3' },
          '537433b3-562e-4cac-b61e-b9386a80ace0' =>
          { name: 'level 3 national certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          '67bc4f81-186a-4b50-a09d-4b50d64c4c0a' =>
          { name: 'level 3 national diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          '1b2063df-13b3-4e46-8020-916708493273' =>
          { name: 'level 3 national vocational qualification',
            suggestion_synonyms: ['NVQ'],
            match_synonyms: [],
            level: '3' },
          '1eb92c31-cd60-4ff6-8d0f-8dfde9705191' =>
          { name: 'music grades 6, 7 and 8',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          'a42468af-a30e-4893-852e-fa8aad0047a5' =>
          { name: 'tech level',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '3' },
          'f7ab37d2-4413-41e6-b0aa-9b0cb7bf9d53' =>
          { name: 'certificate of higher education',
            suggestion_synonyms: ['CertHE'],
            match_synonyms: [],
            level: '4' },
          'dbe7bb34-2df5-413a-8ce9-9b806da829e1' =>
          { name: 'higher apprenticeship',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '4' },
          '8f08ac5c-5657-4616-ae97-146b5e6f5b67' =>
          { name: 'higher national certificate',
            suggestion_synonyms: ['HNC'],
            match_synonyms: [],
            level: '4' },
          'aca93aaf-747b-489e-a76f-f25310e6f87d' =>
          { name: 'level 4 award',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '4' },
          'de7c4d54-68bd-44c3-a8fe-70a9ff1847a4' =>
          { name: 'level 4 certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '4' },
          '1eb3625e-d376-4b0b-8521-8a1269ef73ac' =>
          { name: 'level 4 diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '4' },
          'b6ba9cfe-5336-4589-a466-674dded38563' =>
          { name: 'level 4 national vocational qualification',
            suggestion_synonyms: ['NVQ'],
            match_synonyms: [],
            level: '4' },
          '50c8bfd7-8b08-48d8-ab6d-b6be9c17ff79' =>
          { name: 'diploma of higher education',
            suggestion_synonyms: ['DipHE'],
            match_synonyms: [],
            level: '5' },
          '8b5bb841-c7fd-43e3-87d8-dc9653c54dda' =>
          { name: 'foundation degree',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '5',
            degree: :foundation },
          '2e4d3d83-bbf7-4d37-b451-0f6bbf3ac32a' =>
          { name: 'higher national diploma',
            suggestion_synonyms: ['HND'],
            match_synonyms: [],
            level: '5' },
          'ab446a38-71d5-45c2-8ad6-23990dc66f16' =>
          { name: 'level 5 award',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '5' },
          '679215a9-6b4f-41b2-b7d9-f179c3f241ed' =>
          { name: 'level 5 certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '5' },
          '2810949c-b17f-4b08-8461-f4e3775e81f3' =>
          { name: 'level 5 diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '5' },
          'fdd44a44-ce01-4a4c-bc99-1e17e69ad8fe' =>
          { name: 'level 5 national vocational qualification',
            suggestion_synonyms: ['NVQ'],
            match_synonyms: [],
            level: '5' },
          '77c6065f-de57-4094-b588-c1317b0f0b3e' =>
          { name: 'degree apprenticeship',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '6' },
          'b580a760-da23-4d38-b803-62ae11de6a65' =>
          { name: 'bachelors degree',
            suggestion_synonyms: ['ordinary degree', "bachelor's degree"],
            match_synonyms: [],
            level: '6',
            degree: :bachelor },
          'a4a57564-1707-4aed-8231-1be922f1acee' =>
          { name: 'graduate certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '6' },
          'fc519e23-9c57-4a10-bba7-ea609b11e20f' =>
          { name: 'graduate diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '6' },
          '8c19f663-73fb-4875-b705-766ebd2726ed' =>
          { name: 'level 6 award',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '6' },
          'b5d7fe12-c2e9-4e35-82ed-bf18231ad594' =>
          { name: 'level 6 certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '6' },
          '4290f584-fb7d-420e-8a21-1d6ef50e2876' =>
          { name: 'level 6 diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '6' },
          'c0ada43b-9b18-424a-9ddd-47af929d4220' =>
          { name: 'level 6 NVQ',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '6' },
          '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9' =>
          { name: "master's degree",
            suggestion_synonyms: [],
            match_synonyms: ['masters degree'],
            level: '7',
            degree: :master },
          '67c8cb38-5ecc-4bd6-b2fe-847348c8cde7' =>
          { name: 'level 7 award',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '7' },
          '25e0b680-c960-48ec-bd4a-338c8bc9c116' =>
          { name: 'level 7 certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '7' },
          '01d73c15-fefd-4a5b-a211-e310eab1cd93' =>
          { name: 'level 7 diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '7' },
          '61f9f333-c77e-4a93-8837-ce86d65ecfad' =>
          { name: 'level 7 national vocational qualification',
            suggestion_synonyms: ['NVQ'],
            match_synonyms: [],
            level: '7' },
          '2bda548c-38f4-428a-94a9-ce248b6d582b' =>
          { name: 'postgraduate certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '7' },
          'de63513e-edaf-4e54-ad4a-803fe0ee9ec6' =>
          { name: 'postgraduate certificate in education',
            suggestion_synonyms: ['PGCE'],
            match_synonyms: [],
            level: '7' },
          'bda17e7c-aca7-488a-a7c0-9420eb8b7204' =>
          { name: 'postgraduate diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '7' },
          '181eb0ae-eeb8-487b-9c6a-a4ee3e1907b6' =>
          { name: 'doctorate',
            hint: 'For example, doctor of philosophy',
            suggestion_synonyms: ['PhD'],
            match_synonyms: [],
            level: '8',
            degree: :doctor },
          'a835ae3d-7ad7-432c-a8a0-8ea8effdb4b0' =>
          { name: 'level 8 award',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '8' },
          'c677f36c-9591-456e-92d9-c6b8deebeede' =>
          { name: 'level 8 certificate',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '8' },
          '15a5fba3-0b21-412f-830d-522ff05d5ad4' =>
          { name: 'level 8 diploma',
            suggestion_synonyms: [],
            match_synonyms: [],
            level: '8' }
        },
        schema: QUALIFICATIONS_SCHEMA,
        list_description: 'Types of qualifications, as recognised in the UK.',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_qualifications.md#dfereferencedataqualificationsqualifications',
        field_descriptions: {
          id: 'A unique identifier',
          name: 'The long name of the qualification type',
          suggestion_synonyms: 'A list of common alternative names that *may* be appropriate for this qualification type',
          match_synonyms: 'A list of common alternative names that are equivalent to this type. An answer matching a match synonym can be safely matched to this type.',
          level: 'The level of the qualification. `entry`, `1`, `2`, `3`, `4`, `5`, `6`, or `7`.',
          degree: 'If the qualification type is a degree, the level of degree - `foundation`, `bachelor`, `master` or `doctor`'
        }
      )
    end
  end
end
