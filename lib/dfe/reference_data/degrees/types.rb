module DfE
  module ReferenceData
    module Degrees
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
              'BA (Hons)',
              'BA Honours',
              'Bachelor of Arts with honours',
              'Bachelor of Arts (Hons)',
              'Bachelor of Arts (Honours)'
            ],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'db695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '51' },
          'dd695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Arts Economics',
            abbreviation: 'BAEcon',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'dd695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '52' },
          'df695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Arts in Architecture',
            abbreviation: 'BAArch',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'df695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '53' },
          'e1695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of the Art of Obstetrics',
            abbreviation: 'BAO',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'e1695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '54' },
          'e3695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Architecture',
            abbreviation: 'BAArch',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'e3695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '55' },
          'e5695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Applied Science',
            abbreviation: 'BAsc',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'e5695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '56' },
          'e7695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Agriculture',
            abbreviation: 'BAg',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'e7695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '57' },
          'e9695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Accountancy',
            abbreviation: 'BAcc',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'e9695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '58' },
          'eb695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Administration',
            abbreviation: 'BAdmin',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'eb695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '59' },
          'ed695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Business Administration',
            abbreviation: 'BBA',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'ed695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '60' },
          'ef695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Combined Studies',
            abbreviation: 'BCS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'ef695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '61' },
          'f1695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Commerce',
            abbreviation: 'BComm',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'f1695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '62' },
          'f3695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Divinity',
            abbreviation: 'BD',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'f3695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '63' },
          'f5695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Dental Surgery',
            abbreviation: 'BDS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'f5695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '64' },
          'f7695652-c197-e711-80d8-005056ac45bb' =>
          { priority: 1,
            name: 'Bachelor of Engineering',
            abbreviation: 'BEng',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'f7695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '65' },
          'f9695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Engineering with Business Studies',
            abbreviation: 'BEng/BS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'f9695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '66' },
          'fb695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Fine Art',
            abbreviation: 'BFA',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'fb695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '67' },
          'fd695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of General Studies',
            abbreviation: 'BGS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'fd695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '68' },
          'ff695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Humanities',
            abbreviation: 'BH',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'ff695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '69' },
          '016a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Hygiene',
            abbreviation: 'BHyg',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '016a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '70' },
          '036a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Law',
            abbreviation: 'LLB', # This one is weird
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '036a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '71' },
          '056a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Librarianship',
            abbreviation: 'BLib',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '056a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '72' },
          '076a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Librarianship and Information Studies',
            abbreviation: 'BLS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '076a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '73' },
          '096a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Literature',
            abbreviation: 'BLitt',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '096a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '74' },
          '0b6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Land Economy',
            abbreviation: 'BLEcon',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '0b6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '75' },
          '0d6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Medical Science',
            abbreviation: 'BMedSc',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '0d6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '76' },
          '0f6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Medicine',
            abbreviation: 'BM',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '0f6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '77' },
          '116a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Metallurgy',
            abbreviation: 'BMet',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '116a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '78' },
          '136a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Metallurgy and Engineering',
            abbreviation: 'BMet/Eng',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '136a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '79' },
          '156a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Music',
            abbreviation: 'BMus',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '156a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '80' },
          '176a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Nursing',
            abbreviation: 'BN',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '176a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '81' },
          '196a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Pharmacy',
            abbreviation: 'BPharm',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '196a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '82' },
          '1b6a5652-c197-e711-80d8-005056ac45bb' =>
          { priority: 1,
            name: 'Bachelor of Science',
            abbreviation: 'BSc',
            suggestion_synonyms: [],
            match_synonyms: [
              'BSc Hons',
              'BSc (Hons)',
              'BSc Honours',
              'Bachelor of Science with honours',
              'Bachelor of Science (Hons)'
            ],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '1b6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '83' },
          '1d6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Science Economics',
            abbreviation: 'BScEcon',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '1d6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '84' },
          '1f6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Science and Engineering',
            abbreviation: 'BScEng',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '1f6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '85' },
          '216a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Science and Technology',
            abbreviation: 'BScTech',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '216a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '86' },
          '236a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Science in Social Science', # Is this a subject/type conflation?
            abbreviation: 'BSc SS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '236a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '87' },
          '256a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Science in Speech Therapy', # Is this a subject/type conflation?
            abbreviation: 'BSc SPT',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '256a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '88' },
          '276a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Social Science',
            abbreviation: 'BaSocSc',
            suggestion_synonyms: ['BSS'],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '276a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '89' },
          '296a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Surgery',
            abbreviation: 'BS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '296a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '90' },
          '2b6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Chirurgiae',
            abbreviation: 'BCh',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '2b6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '91' },
          '2d6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Technology',
            abbreviation: 'BTech',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '2d6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '92' },
          '2f6a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Theology',
            abbreviation: 'BTheol',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '2f6a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '93' },
          '316a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Veterinary Medicine',
            abbreviation: 'BVMed',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '316a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '94' },
          '336a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Veterinary Medicine and Surgery',
            abbreviation: 'BVMS',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '336a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '95' },
          '356a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Veterinary Science',
            abbreviation: 'BVsc',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '356a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '96' },
          '376a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Education Scotland and Northern Ireland', # Why the two BEds?
            abbreviation: 'BEd',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '376a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '97' },
          '396a5652-c197-e711-80d8-005056ac45bb' =>
          { name: 'Bachelor of Philosophy',
            abbreviation: 'BPhil',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: '396a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '98' },
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
            hesa_itt_code: '1' },
          'd5695652-c197-e711-80d8-005056ac45bb' =>
          { name: 'BA with intercalated PGCE', # This is weird
            abbreviation: nil,
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: 'b580a760-da23-4d38-b803-62ae11de6a65',
            dttp_id: 'd5695652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '12' },
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
            dqt_id: nil,
            hesa_itt_code: nil },
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
            dqt_id: nil,
            hesa_itt_code: nil },
          'b6d2c5aa-cf99-4831-9bfe-6279349d8ea9' =>
          { name: 'Master in Science',
            abbreviation: 'MSci',
            suggestion_synonyms: [],
            match_synonyms: ['masters in science'],
            qualification: '4b7f4349-a981-4441-8f4d-ad2d0e57c8e9',
            dqt_id: nil,
            hesa_itt_code: nil,
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
          { name: 'Doctor of Philosophy',
            abbreviation: 'DPhil',
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: '181eb0ae-eeb8-487b-9c6a-a4ee3e1907b6',
            dttp_id: '656a5652-c197-e711-80d8-005056ac45bb',
            hesa_itt_code: '305' },
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
            hesa_itt_code: nil },
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
            hesa_itt_code: '3',
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
            hesa_itt_code: '5',
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
            hesa_itt_code: '7',
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
            hesa_itt_code: '9',
            deprecated: true } }
      )
      GENERIC_TYPES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '0584565a-1c98-4c1d-ae64-c241542c0879' =>
          { priority: 1,
            name: 'First Degree',
            abbreviation: nil,
            suggestion_synonyms: [],
            match_synonyms: [],
            qualification: nil,
            dttp_id: nil,
            hesa_itt_code: '400' },
          'fdafdcd7-5f21-4363-b7d5-c1f44a852af1' =>
          { priority: 1,
            name: 'Higher degree or quivalent',
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
            qualification: nil,
            dttp_id: nil,
            hesa_itt_code: '401' },
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
            qualification: nil,
            dttp_id: nil,
            hesa_itt_code: '402' }
        }
      )

      TYPES_INCLUDING_GENERICS = DfE::ReferenceData::JoinedReferenceList.new([TYPES, GENERIC_TYPES])
    end
  end
end
