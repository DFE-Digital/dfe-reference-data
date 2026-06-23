require 'dfe/reference_data/v2/countries_and_territories'

RSpec.describe DfE::ReferenceData::V2::CountriesAndTerritories do
  describe described_class::COUNTRIES do
    it_should_behave_like 'a list of valid records'
    it_should_behave_like 'a valid autocomplete-capable list'

    it 'contains mappings from ISO codes to country names' do
      expect(described_class.one('SY').name).to eq('Syria')
      expect(described_class.one('RO').name).to eq('Romania')
    end
  end

  describe described_class::TERRITORIES do
    it_should_behave_like 'a list of valid records'
    it_should_behave_like 'a valid autocomplete-capable list'

    it 'contains mappings from ISO codes to country names' do
      expect(described_class.one('TW').name).to eq('Taiwan')
      expect(described_class.one('MO').name).to eq('Macao')
    end
  end

  describe described_class::UK_AND_CI_POSTCODE_PREFIX_COUNTRIES do
    it_should_behave_like 'a list of valid records'

    it 'contains mappings from UK and Channel Island country/territory names to lists of postcode prefixes' do
      expect(described_class.one('Wales').prefixes).to eq(['CF', 'SA'])
      expect(described_class.one('Jersey').prefixes).to eq(['JE'])
    end
  end
end
