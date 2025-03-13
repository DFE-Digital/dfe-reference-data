require 'dfe/reference_data/hesa/domiciles'

RSpec.describe DfE::ReferenceData::HESA::Domiciles do
  describe described_class::COUNTRIES_AND_TERRITORIES do
    it_should_behave_like 'a list of valid records'

    it 'contains normal mappings from ISO codes to country names' do
      expect(described_class.one('AU').name).to eq('Australia')
      expect(described_class.one('GB-SCT').name).to eq('Scotland')
    end

    it 'provides some HESA-specific mappings' do
      expect(described_class.one('XX').name).to eq('Antarctica')
      expect(described_class.one('ZZ')).to be_nil
    end
  end

  describe described_class::SPECIAL_ISO_CODES do
    it_should_behave_like 'a list of valid records'

    it 'provides some HESA-specific mappings' do
      expect(described_class.one('XC').code).to eq('CY')
      expect(described_class.one(nil).code).to eq('ZZ')
    end
  end

  describe described_class::CODES_FOR_UK_AND_CI do
    it_should_behave_like 'a list of valid records'

    it 'provides some HESA-specific mappings' do
      expect(described_class.one(nil).code).to eq('ZZ')
      expect(described_class.one('England').code).to eq('XF')
      expect(described_class.one('Wales').code).to eq('XI')
      expect(described_class.one('other').code).to eq('XK')
    end
  end
end
