module DfE
  module ReferenceData
    module Degrees
      TYPES_SCHEMA = {
        id: :string,
        name: :string,
        suggestion_synonyms: { kind: :array, element_schema: :string },
        match_synonyms: { kind: :array, element_schema: :string },
        priority: { kind: :optional, schema: :integer },
        abbreviation: { kind: :optional, schema: :string },
        qualification: :string,
        dttp_id: { kind: :optional, schema: { kind: :code, pattern: /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/ } },
        hesa_itt_code: { kind: :optional, schema: { kind: :code, pattern: /^[0-9]+$/ } },
        deprecated: { kind: :optional, schema: :boolean },
        comment: { kind: :optional, schema: :string },
        hint: { kind: :optional, schema: :string }
      }.freeze

      GENERIC_TYPES_SCHEMA = TYPES_SCHEMA.merge(
        {
          qualification: { kind: :optional, schema: :string },
          generic: :boolean
        }
      )

      UNKNOWN_TYPES_SCHEMA = TYPES_SCHEMA.merge(
        {
          qualification: { kind: :optional, schema: :string },
          unknown: :boolean
        }
      )

      TYPES_INCLUDING_GENERICS_SCHEMA = TYPES_SCHEMA.merge(
        {
          qualification: { kind: :optional, schema: :string },
          generic: { kind: :optional, schema: :boolean }
        }
      )

      TYPES_FIELD_DESCRIPTIONS = {
        id: 'A unique identifier for this type of degree',
        # priority: I don't actually know what this is used for!
        name: 'The long name of the degree type, eg "Foundation of Arts"',
        abbreviation: 'The abbreviated name, eg, "FdA"',
        hint: 'An optional hint to be shown alongside the name to users',
        suggestion_synonyms: 'A list of common alternative names that *may* be appropriate for this type',
        match_synonyms: 'A list of common alternative names that are equivalent to this type. An answer matching a match synonym can be safely matched to this type.',
        qualification: 'The ID of the qualification level of this degree (see [`DfE::ReferenceData::Qualifications::QUALIFICATIONS`](https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_qualifications.md)',
        dttp_id: 'The ID used for this qualification in DQT',
        hesa_itt_code: 'The HESA DEGTYPE code for this degree type (see [DEGTYPE](https://www.hesa.ac.uk/collection/c22053/e/degtype) documentation)',
        comment: 'Any extra comment or description for the field',
        generic: 'If present and true, indicates this is a generic option for degree types not otherwise covered',
        unknown: 'If present and true, indicates that this indicates a degree we do not have type information about'
      }.freeze

      TYPES = DfE::ReferenceData::HardcodedReferenceList.new(
        { 'be08f598-0860-4de0-b95a-3c448a16cc99' =>
          { name: 'Foundation degree',
            abbreviation: 'FdSc',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '8b5bb841-c7fd-43e3-87d8-dc9653c54dda',
            dttp_id: nil,
            hesa_itt_code: nil,
            comment: 'This is specifically for foundation degrees with the FdSc abbreviation, which which don’t have a subject within the degree title, rather than as a generic type for all foundation degrees.' },
          '7022c4c2-ec9a-4eec-98dc-315bfeb1ef3a' =>
          { priority: 1,
            name: 'Foundation of Arts',
            abbreviation: 'FdA',
            suggestion_synonyms: [
              'Foundation degree'
            ],
            match_synonyms: [
              'Foundation degree arts',
              'Foundation degree of arts'
            ],
            qualification: '8b5bb841-c7fd-43e3-87d8-dc9653c54dda',
            dttp_id: nil,
            hesa_itt_code: nil },
          '2b5b8af4-cade-421b-9e3d-026f71f143b7' =>
          { priority: 1,
            name: 'Foundation Degree of Education',
            abbreviation: 'FDEd',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '8b5bb841-c7fd-43e3-87d8-dc9653c54dda',
            dttp_id: nil,
            hesa_itt_code: nil },
          'a02be347-1d5b-485a-a845-40c2d4b6ee8f' =>
          { priority: 1,
            name: 'Foundation of Sciences',
            abbreviation: 'FdSs',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '8b5bb841-c7fd-43e3-87d8-dc9653c54dda',
            dttp_id: nil,
            hesa_itt_code: nil },
          'db695652-c197-e711-80d8-005056ac45bb' =>
          { priority: 1,
            name: 'Bachelor of Arts',
            abbreviation: 'BA',
            suggestion_synonyms: [],
            match_synonyms: [
              'BA Hons',
              'BA Honours',
              'BA with hons',
              'BA with honours',
              'BA (Hons)',
              'BA (Honours)',
              'BA (with Hons)',
              'BA (with Honours)',
              'Bachelor of Arts Hons',
              'Bachelor of Arts Honours',
              'Bachelor of Arts with hons',
              'Bachelor of Arts with honours',
              'Bachelor of Arts (Hons)',
              'Bachelor of Arts (Honours)',
              'Bachelor of Arts (with Hons)',
              'Bachelor of Arts (with Honours)'
            ],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'db695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '051' },
          'dd695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Arts Economics',
            abbreviation: 'BAEcon',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'dd695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '052' },
          'df695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Arts in Architecture',
            abbreviation: 'BAArch',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'df695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '053' },
          'e1695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of the Art of Obstetrics',
            abbreviation: 'BAO',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'e1695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '054' },
          'e3695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Architecture',
            abbreviation: 'BAArch',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'e3695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '055' },
          'e5695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Applied Science',
            abbreviation: 'BAsc',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'e5695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '056' },
          'e7695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Agriculture',
            abbreviation: 'BAg',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'e7695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '057' },
          'e9695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Accountancy',
            abbreviation: 'BAcc',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'e9695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '058' },
          'eb695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Administration',
            abbreviation: 'BAdmin',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'eb695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '059' },
          'ed695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Business Administration',
            abbreviation: 'BBA',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'ed695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '060' },
          'ef695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Combined Studies',
            abbreviation: 'BCS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'ef695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '061' },
          'f1695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Commerce',
            abbreviation: 'BComm',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'f1695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '062' },
          'f3695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Divinity',
            abbreviation: 'BD',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'f3695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '063' },
          'f5695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Dental Surgery',
            abbreviation: 'BDS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'f5695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '064' },
          'f7695652-c197-e711-80d8-005056ac45bb' =>
          { priority: 1,
            name: 'Bachelor of Engineering',
            abbreviation: 'BEng',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'f7695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '065' },
          'f9695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Engineering with Business Studies',
            abbreviation: 'BEng/BS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'f9695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '066' },
          'fb695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Fine Art',
            abbreviation: 'BFA',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'fb695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '067' },
          'fd695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of General Studies',
            abbreviation: 'BGS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'fd695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '068' },
          'ff695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Humanities',
            abbreviation: 'BH',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'ff695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '069' },
          '016a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Hygiene',
            abbreviation: 'BHyg',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '016a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '070' },
          '036a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Law',
            abbreviation: 'LLB', # This one is weird
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '036a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '071' },
          '056a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Librarianship',
            abbreviation: 'BLib',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '056a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '072' },
          '076a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Librarianship and Information Studies',
            abbreviation: 'BLS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '076a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '073' },
          '096a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Literature',
            abbreviation: 'BLitt',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '096a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '074' },
          '0b6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Land Economy',
            abbreviation: 'BLEcon',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '0b6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '075' },
          '0d6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Medical Science',
            abbreviation: 'BMedSc',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '0d6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '076' },
          '0f6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Medicine',
            abbreviation: 'BM',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '0f6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '077' },
          '116a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Metallurgy',
            abbreviation: 'BMet',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '116a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '078' },
          '136a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Metallurgy and Engineering',
            abbreviation: 'BMet/Eng',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '136a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '079' },
          '156a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Music',
            abbreviation: 'BMus',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '156a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '080' },
          '176a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Nursing',
            abbreviation: 'BN',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '176a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '081' },
          '196a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Pharmacy',
            abbreviation: 'BPharm',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '196a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '082' },
          '1b6a5652-c197-e711-80d8-005056ac45bb' =>
          { priority: 1,
            name: 'Bachelor of Science',
            abbreviation: 'BSc',
            suggestion_synonyms: [],
            match_synonyms: [
              'BSc Hons',
              'BSc Honours',
              'BSc with hons',
              'BSc with honours',
              'BSc (Hons)',
              'BSc (Honours)',
              'BSc (with Hons)',
              'BSc (with Honours)',
              'Bachelor of Science Hons',
              'Bachelor of Science Honours',
              'Bachelor of Science with hons',
              'Bachelor of Science with honours',
              'Bachelor of Science (Hons)',
              'Bachelor of Science (Honours)',
              'Bachelor of Science (with Hons)',
              'Bachelor of Science (with Honours)'
            ],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '1b6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '083' },
          '1d6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Science Economics',
            abbreviation: 'BScEcon',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '1d6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '084' },
          '1f6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Science and Engineering',
            abbreviation: 'BScEng',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '1f6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '085' },
          '216a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Science and Technology',
            abbreviation: 'BScTech',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '216a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '086' },
          '236a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Science in Social Science', # Is this a subject/type conflation?
            abbreviation: 'BSc SS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '236a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '087' },
          '256a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Science in Speech Therapy', # Is this a subject/type conflation?
            abbreviation: 'BSc SPT',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '256a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '088' },
          '276a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Social Science',
            abbreviation: 'BaSocSc',
            suggestion_synonyms: ['BSS'],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '276a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '089' },
          '296a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Surgery',
            abbreviation: 'BS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '296a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '090' },
          '2b6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Chirurgiae',
            abbreviation: 'BCh',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '2b6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '091' },
          '2d6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Technology',
            abbreviation: 'BTech',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '2d6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '092' },
          '2f6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Theology',
            abbreviation: 'BTheol',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '2f6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '093' },
          '316a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Veterinary Medicine',
            abbreviation: 'BVMed',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '316a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '094' },
          '336a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Veterinary Medicine and Surgery',
            abbreviation: 'BVMS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '336a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '095' },
          '356a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Veterinary Science',
            abbreviation: 'BVsc',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '356a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '096' },
          '376a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Education Scotland and Northern Ireland', # Why the two BEds?
            abbreviation: 'BEd',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '376a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '097' },
          '396a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Philosophy',
            abbreviation: 'BPhil',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '396a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '098' },
          'c1695652-c197-e711-80d8-005056ac45bb' =>
          { priority: 1,
            name: 'Bachelor of Education', # Why the two BEds?
            abbreviation: 'BEd',
            suggestion_synonyms: [],
            match_synonyms: [
              'BEd Hons',
              'BEd (Hons)'
            ],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'c1695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '001' },
          'd5695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'BA with intercalated PGCE',
            abbreviation: nil,
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'd5695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '012' },
          '348ff3a9-a4b8-4a40-a74d-dcaef9e8ac73' =>
          { name: 'BSc with intercalated PGCE',
            abbreviation: nil,
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            hesa_itt_code: '099' },
          '3b6a5652-c197-e711-80d8-005056ac45bb' =>
          { priority: 1,
            name: 'Master of Arts',
            abbreviation: 'MA',
            suggestion_synonyms: [],
            match_synonyms: ['masters of arts'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '3b6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '200' },
          '3d6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Master of Librarianship',
            abbreviation: 'MLib',
            suggestion_synonyms: [],
            match_synonyms: ['masters of librarianship'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '3d6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '201' },
          '3f6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Master of Literature',
            abbreviation: 'MLitt',
            suggestion_synonyms: [],
            match_synonyms: ['masters of literature'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '3f6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '202' },
          'f3eaa983-d543-4d4b-a239-f46d7cc94825' =>
          { name: 'Master of Mathematics',
            abbreviation: 'MMath',
            suggestion_synonyms: [],
            match_synonyms: [
              'masters of mathematics',
              'masters of maths'
            ],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: nil,
            hesa_itt_code: '216' },
          '416a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Master of Music',
            abbreviation: 'MMus',
            suggestion_synonyms: [],
            match_synonyms: ['masters of music'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '416a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '203' },
          '436a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Master of Philosophy',
            abbreviation: 'MPhil',
            suggestion_synonyms: [],
            match_synonyms: ['masters of philosophy'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '436a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '204' },
          'cfae21bd-2b03-4048-bfdd-5f768c5b85e9' =>
          { name: 'Master of Research',
            abbreviation: 'MRes',
            suggestion_synonyms: [],
            match_synonyms: ['masters of research'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: nil,
            hesa_itt_code: '217' },
          'b6d2c5aa-cf99-4831-9bfe-6279349d8ea9' =>
          { name: 'Master in Science',
            abbreviation: 'MSci',
            suggestion_synonyms: [],
            match_synonyms: ['masters in science'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: nil,
            hesa_itt_code: '218',
            comment: 'This is a qualificatoin distinct from Master of Science. MSci are typically four year courses
            including three years of undergraduate study.' },
          '456a5652-c197-e711-80d8-005056ac45bb' =>
          { priority: 1,
            name: 'Master of Science',
            abbreviation: 'MSc',
            suggestion_synonyms: [],
            match_synonyms: ['masters of science'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '456a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '205' },
          '476a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Master of Theology',
            abbreviation: 'MTheol',
            suggestion_synonyms: [],
            match_synonyms: ['masters of theology'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '476a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '206' },
          '496a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Certificate of Membership of Cranfield Institute of Technology', # This one is weird
            abbreviation: nil,
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '25e0b680-c960-48ec-bd4a-338c8bc9c116', # level 7 certificate rather than degree
            dttp_id: '496a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '207' },
          '4b6a5652-c197-e711-80d8-005056ac45bb' =>
          { priority: 1,
            name: 'Master of Education',
            abbreviation: 'MEd',
            suggestion_synonyms: [],
            match_synonyms: ['masters of education'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '4b6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '208' },
          '4d6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Master of Business Studies',
            abbreviation: 'MBS',
            suggestion_synonyms: [],
            match_synonyms: ['masters of business studies'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '4d6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '209' },
          '4f6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Master of Social Studies',
            abbreviation: 'MSS',
            suggestion_synonyms: [],
            match_synonyms: ['masters of social studies'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '4f6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '210' },
          '516a5652-c197-e711-80d8-005056ac45bb' =>
          { priority: 1,
            name: 'Master of Engineering',
            abbreviation: 'MEng',
            suggestion_synonyms: [],
            match_synonyms: ['masters of engineering'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '516a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '211' },
          '536a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Master of Law',
            abbreviation: 'MLaw',
            suggestion_synonyms: [],
            match_synonyms: ['masters of law'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '536a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '212' },
          '556a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Master of Business Administration',
            abbreviation: 'MBA',
            suggestion_synonyms: [],
            match_synonyms: ['masters of business administration'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '556a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '213' },
          '576a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Master of Chemistry',
            abbreviation: 'MChem',
            suggestion_synonyms: [],
            match_synonyms: ['masters of chemistry'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '576a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '214' },
          '596a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Master of Physics',
            abbreviation: 'MPhys',
            suggestion_synonyms: [],
            match_synonyms: ['masters of physics'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dttp_id: '596a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '215' },
          '5b6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Doctor of Divinity',
            abbreviation: 'DD',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '181eb0ae-eeb8-487b-9c6a-a4ee3e1907b6',
            dttp_id: '5b6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '300' },
          '5d6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Doctor of Civil Law',
            abbreviation: 'DCL',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '181eb0ae-eeb8-487b-9c6a-a4ee3e1907b6',
            dttp_id: '5d6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '301' },
          '5f6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Doctor of Medicine',
            abbreviation: 'MD',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '181eb0ae-eeb8-487b-9c6a-a4ee3e1907b6',
            dttp_id: '5f6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '302' },
          '616a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Doctor of Music',
            abbreviation: 'DMu',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '181eb0ae-eeb8-487b-9c6a-a4ee3e1907b6',
            dttp_id: '616a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '303' },
          '636a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Doctor of Science',
            abbreviation: 'DSc',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '181eb0ae-eeb8-487b-9c6a-a4ee3e1907b6',
            dttp_id: '636a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '304' },
          '656a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Doctor of Philosophy (DPhil)',
            abbreviation: 'DPhil',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '181eb0ae-eeb8-487b-9c6a-a4ee3e1907b6',
            dttp_id: '656a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '305',
            comment: 'The abbreviation has been appended to the name to disambiguate between PhD and DPhil when used as a select option as discussed https://github.com/DFE-Digital/dfe-reference-data/pull/42' },
          '676a5652-c197-e711-80d8-005056ac45bb' =>
          { priority: 1,
            name: 'Doctor of Philosophy',
            abbreviation: 'PhD',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '181eb0ae-eeb8-487b-9c6a-a4ee3e1907b6',
            dttp_id: '676a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '306' },
          '03d6b7af-499c-49e3-96cc-e63f9beda6e5' =>
          { priority: 1,
            name: 'Doctor of Education',
            abbreviation: 'EdD',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '181eb0ae-eeb8-487b-9c6a-a4ee3e1907b6',
            dttp_id: nil,
            hesa_itt_code: '307' },
          # These next four are HESA codes found in production data that weren't
          # in the current HESA list, so presumably had been removed; so are
          # included here to not break existing data, but probably shouldn't be
          # offered as options for new entries
          '7ba49954-7595-437c-8df0-6a777c97307b' =>
          { priority: 1,
            name: 'Bachelor of Science in Education',
            abbreviation: 'BSc/Education',
            suggestion_synonyms: ['BSc Education'],
            match_synonyms: [
              'BSc Hons /Education',
              'BSc (Hons) /Education'
            ],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: nil,
            hesa_itt_code: '003',
            deprecated: true },
          'c6aeedca-9147-4e88-886a-a90302f3d097' =>
          { priority: 1,
            name: 'Bachelor of Technology in Education',
            abbreviation: 'BTech/Education',
            suggestion_synonyms: [],
            match_synonyms: [
              'BTech /Education',
              'BTech Hons /Education',
              'BTech (Hons) /Education'
            ],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: nil,
            hesa_itt_code: '005',
            deprecated: true },
          '007a0999-87f7-4afc-8ccd-ce1e1d92c9ac' =>
          { priority: 1,
            name: 'Bachelor of Arts in Education',
            abbreviation: 'BA/Education',
            suggestion_synonyms: ['BA Education'],
            match_synonyms: [
              'BA Hons /Education',
              'BA (Hons) /Education'
            ],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: nil,
            hesa_itt_code: '007',
            deprecated: true },
          'da47d378-f4bb-45ec-bda0-14af40ad974e' =>
          { priority: 1,
            name: 'Bachelor of Arts in Combined Studies / Education of the Deaf',
            abbreviation: nil,
            suggestion_synonyms: [],
            match_synonyms: [
              'BA Combined Studies/Education of the Deaf'
            ],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: nil,
            hesa_itt_code: '009',
            deprecated: true } },
        schema: TYPES_SCHEMA,
        list_description: 'Types of degrees (eg, "BEng", "MA", etc.)',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_degrees.md#dfereferencedatadegreestypes',
        field_descriptions: TYPES_FIELD_DESCRIPTIONS
      )

      GENERIC_TYPES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '0584565a-1c98-4c1d-ae64-c241542c0879' =>
          { priority: 1,
            name: 'First Degree',
            abbreviation: nil,
            suggestion_synonyms: [],
            match_synonyms: [],
            dttp_id: nil,
            hesa_itt_code: '400',
            generic: true,
            deprecated: true },
          'fdafdcd7-5f21-4363-b7d5-c1f44a852af1' =>
          { priority: 1,
            name: 'Higher degree or equivalent',
            abbreviation: nil,
            hint: 'Including level 7, level 8, masters, postgraduate certificates and diplomas',
            suggestion_synonyms: [
              'Other',
              # Level 7 qualifications
              'Integrated master',
              'Integrated masters',
              'Integrated master’s degree',
              'Level 7 award',
              'Level 7 certificate',
              'Level 7 national diploma',
              'Level 7 NVQ',
              'Postgraduate certificate',
              'Postgraduate certificate in education',
              'PGCE',
              'Postgraduate diploma',
              'Master degree',
              'Masters degree',
              # Level 8 qualifications
              'Level 8 award',
              'Level 8 certificate',
              'Level 8 diploma'
            ],
            match_synonyms: [],
            dttp_id: nil,
            hesa_itt_code: '401',
            generic: true },
          '03c4fa67-345e-4d09-8e9b-68c36a450947' =>
          { priority: 1,
            name: 'Degree equivalent',
            abbreviation: nil,
            hint: 'Including level 6 qualifications, graduate certificates and diplomas, degree apprenticeships and ordinary degrees',
            suggestion_synonyms: [
              'Other',
              # Level 6 qualifications
              'Degree apprenticeship',
              'Graduate certificate',
              'Graduate diploma',
              'Level 6 award',
              'Level 6 certificate',
              'Level 6 national diploma',
              'Level 6 NVQ',
              'Ordinary degree'
            ],
            match_synonyms: [],
            dttp_id: nil,
            hesa_itt_code: '402',
            generic: true }
        },
        schema: GENERIC_TYPES_SCHEMA,
        list_description: 'Generic "catch-all" degree types, for approximating degree types not listed in TYPES (eg, "First Degree" to cover any first degree).',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_degrees.md#dfereferencedatadegreesgeneric_types',
        field_descriptions: TYPES_FIELD_DESCRIPTIONS
      )

      UNKNOWN_TYPES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '3e042de2-a453-47dc-9452-90a23399e9ee' =>
          { name: 'Not available',
            abbreviation: nil,
            suggestion_synonyms: [],
            match_synonyms: [],
            hesa_itt_code: '999',
            unknown: true }
        },
        schema: UNKNOWN_TYPES_SCHEMA,
        list_description: 'Generic "catch-all" degree types, for approximating degree types not listed in TYPES (eg, "First Degree" to cover any first degree).',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_degrees.md#dfereferencedatadegreesgeneric_types',
        field_descriptions: TYPES_FIELD_DESCRIPTIONS
      )

      TYPES_INCLUDING_GENERICS = DfE::ReferenceData::JoinedReferenceList.new(
        [TYPES, GENERIC_TYPES],
        schema: TYPES_INCLUDING_GENERICS_SCHEMA,
        list_description: 'Degree types, including specifics such as "BSc" and generic types such as "First degree"',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_degrees.md#dfereferencedatadegreestypes_including_generics',
        field_descriptions: TYPES_FIELD_DESCRIPTIONS
      )

      # Not published as Ruby, just the union of all types for importing to BigQuery
      ALL_TYPES = DfE::ReferenceData::JoinedReferenceList.new(
        [TYPES, GENERIC_TYPES, UNKNOWN_TYPES],
        schema: TYPES_SCHEMA.merge(
          {
            qualification: { kind: :optional, schema: :string },
            generic: { kind: :optional, schema: :boolean },
            unknown: { kind: :optional, schema: :boolean }
          }
        ),
        list_description: 'All degree types',
        field_descriptions: TYPES_FIELD_DESCRIPTIONS
      )
    end
  end
end
