require 'dfe/reference_data/age_ranges'

RSpec.describe DfE::ReferenceData::AgeRanges do
  describe described_class::AGE_RANGES do
    it_should_behave_like 'a list of valid records'

    it 'contains mappings from age ranges to options and levels' do
      expect(described_class.one([3, 11]).option).to eq(:main)
      expect(described_class.one([3, 11]).levels).to eq([:primary])
      expect(described_class.one([14, 19]).option).to eq(:additional)
      expect(described_class.one([14, 19]).levels).to eq([:secondary])
    end
  end

  describe described_class::HESA_CODE_SETS do
    it 'contains mappings from HESA code sets to age ranges' do
      expect(described_class).to eq({
                                      '13909'	=> [3, 7],
                                      '13911'	=> [3, 9],
                                      '13912'	=> [3, 11],
                                      '13913'	=> [5, 9],
                                      '13914'	=> [5, 11],
                                      '13915'	=> [7, 11],
                                      '13916'	=> [7, 14],
                                      '13917' => [9, 14],
                                      '13918'	=> [11, 16],
                                      '13919'	=> [11, 19]
                                    })
    end
  end

  describe described_class::COURSE_LEVELS do
    it 'contains mappings from course levels to age ranges' do
      expect(described_class).to eq({
                                      early_years: [[0, 5]],
                                      primary: [
                                        [2, 7],
                                        [2, 11],
                                        [3, 7],
                                        [3, 8],
                                        [3, 9],
                                        [3, 11],
                                        [4, 11],
                                        [5, 9],
                                        [5, 11],
                                        [7, 11]
                                      ],
                                      secondary: [
                                        [2, 19],
                                        [3, 16],
                                        [4, 19],
                                        [5, 14],
                                        [5, 18],
                                        [7, 14],
                                        [7, 16],
                                        [7, 18],
                                        [9, 13],
                                        [9, 14],
                                        [9, 16],
                                        [11, 16],
                                        [11, 18],
                                        [11, 19],
                                        [13, 18],
                                        [14, 18],
                                        [14, 19]
                                      ]
                                    })
    end
  end
end
