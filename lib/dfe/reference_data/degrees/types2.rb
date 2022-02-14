module DfE
  module ReferenceData
    module Degrees
      LEVELS = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          '5' => { 'name' => 'Foundation', 'abbreviation' => 'Fd' },
          '6' => { 'name' => 'Bachelor', 'abbreviation' => 'B' },
          '7' => { 'name' => 'Master', 'abbreviation' => 'M' },
          '8' => { 'name' => 'Doctor', 'abbreviation' => 'D' }
        }
      )

      TOPICS = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          'A' => { 'name' => 'Arts' },
          'Ed' => { 'name' => 'Education' },
          'Sc' => { 'name' => 'Science' },
          'AEcon' => { 'name' => 'Arts in Economics' },
          'AArch' => { 'name' => 'Arts in Architecture' }
          # ... omitted
        }
      )

      TYPES_2 = DfE::ReferenceData::HardcodedReferenceList.new(
        { '7022c4c2-ec9a-4eec-98dc-315bfeb1ef3a' =>
          { 'priority' => 1,
            'name' => 'Foundation of Arts',
            'abbreviation' => 'FdA',
            'synonyms' => [],
            'level' => '5',
            'topic' => 'A',
            'dqt_id' => nil,
            'hesa_itt_code' => nil },
          '2b5b8af4-cade-421b-9e3d-026f71f143b7' =>
          { 'priority' => 1,
            'name' => 'Foundation Degree of Education',
            'abbreviation' => 'FDEd',
            'synonyms' => [],
            'level' => '5',
            'topic' => 'Ed',
            'dqt_id' => nil,
            'hesa_itt_code' => nil },
          'a02be347-1d5b-485a-a845-40c2d4b6ee8f' =>
          { 'priority' => 1,
            'name' => 'Foundation of Sciences',
            'abbreviation' => 'FdSs',
            'synonyms' => [],
            'level' => '5',
            'topic' => 'Sc',
            'dqt_id' => nil,
            'hesa_itt_code' => nil },
          'db695652-c197-e711-80d8-005056ac45bb' =>
          { 'priority' => 1,
            'name' => 'Bachelor of Arts',
            'abbreviation' => 'BA',
            'synonyms' => [],
            'level' => '6',
            'topic' => 'A',
            'dqt_id' => 'db695652-c197-e711-80d8-005056ac45bb',
            'hesa_itt_code' => '51' },
          'dd695652-c197-e711-80d8-005056ac45bb' =>
          { 'name' => 'Bachelor of Arts Economics',
            'abbreviation' => 'BAEcon',
            'synonyms' => [],
            'level' => '6',
            'topic' => 'AEcon',
            'dqt_id' => 'dd695652-c197-e711-80d8-005056ac45bb',
            'hesa_itt_code' => '52' },
          'df695652-c197-e711-80d8-005056ac45bb' =>
          { 'name' => 'Bachelor of Arts in Architecture',
            'abbreviation' => 'BAArch',
            'synonyms' => [],
            'level' => '6',
            'topic' => 'AArch',
            'dqt_id' => 'df695652-c197-e711-80d8-005056ac45bb',
            'hesa_itt_code' => '53' },
          # ... omitted
          '636a5652-c197-e711-80d8-005056ac45bb' =>
          { 'name' => 'Doctor of Science',
            'abbreviation' => 'DSc',
            'synonyms' => [],
            'level' => '8',
            'topic' => 'Sc',
            'dqt_id' => '636a5652-c197-e711-80d8-005056ac45bb',
            'hesa_itt_code' => '304' },
          '656a5652-c197-e711-80d8-005056ac45bb' =>
          { 'name' => 'Doctor of Philosophy',
            'abbreviation' => 'DPhil',
            'synonyms' => [],
            'level' => '8',
            'topic' => 'Phil',
            'dqt_id' => '656a5652-c197-e711-80d8-005056ac45bb',
            'hesa_itt_code' => '305' },
          '676a5652-c197-e711-80d8-005056ac45bb' =>
          { 'priority' => 1,
            'name' => 'Doctor of Philosophy',
            'abbreviation' => 'PhD',
            'synonyms' => [],
            'level' => '8',
            'topic' => 'Phil',
            'dqt_id' => '676a5652-c197-e711-80d8-005056ac45bb',
            'hesa_itt_code' => '306' },
          '03d6b7af-499c-49e3-96cc-e63f9beda6e5' =>
          { 'priority' => 1,
            'name' => 'Doctor of Education',
            'abbreviation' => 'EdD',
            'synonyms' => [],
            'level' => '8',
            'topic' => 'Ed',
            'dqt_id' => nil,
            'hesa_itt_code' => nil } }
      )
    end
  end
end
