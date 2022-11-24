require 'dfe/reference_data/countries_and_territories'

RSpec.describe DfE::ReferenceData::CountriesAndTerritories::COUNTRIES_AND_TERRITORIES do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'

  it 'contains mappings from ISO codes to country names' do
    expect(described_class.one('AW').name).to eq('Aruba')
    expect(described_class.one('UM-81').name).to eq('Baker Island')
  end
end
