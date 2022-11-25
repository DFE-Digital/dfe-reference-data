require 'dfe/reference_data/countries_and_territories'

RSpec.describe DfE::ReferenceData::CountriesAndTerritories do
  describe described_class::COUNTRIES_AND_TERRITORIES do
    it_should_behave_like 'a list of valid records'
    it_should_behave_like 'a valid autocomplete-capable list'

    it 'contains mappings from ISO codes to country names' do
      expect(described_class.one('AW').name).to eq('Aruba')
      expect(described_class.one('UM-81').name).to eq('Baker Island')
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
