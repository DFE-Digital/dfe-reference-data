require 'dfe/reference_data/hesa_provider_campus'

RSpec.describe DfE::ReferenceData::HesaProviderCampus::HESA_PROVIDER_CAMPUSES do
  it_should_behave_like 'a list of valid records'

  it 'contains one record per campus' do
    expect(described_class.all.size).to eq(1095)
  end

  it 'contains mappings from a provider UKPRN to its campuses' do
    campuses = described_class.some(ukprn: '10008071')
    expect(campuses.map(&:name)).to contain_exactly('Hooke Park', 'Main campus')
    expect(campuses.map(&:provider_name).uniq).to eq(['AA School of Architecture'])
  end

  it 'keeps distinct provider names for a UKPRN with several INSTIDs (eg the Open University)' do
    provider_names = described_class.some(ukprn: '10007773').map(&:provider_name).uniq
    expect(provider_names).to include(
      'The Open University in England', 'The Open University in Scotland', 'The Open University in Wales'
    )
  end

  it 'omits country and postcode where the source data has none' do
    overseas = described_class.some(ukprn: '10007851', name: 'Overseas').first
    expect(overseas.country).to be_nil
    expect(overseas.postcode).to be_nil
    expect(overseas.latitude).to eq(-3.0)
  end

  it 'omits latitude and longitude where the source data has none' do
    campus = described_class.some(ukprn: '10021550', name: 'Main campus').first
    expect(campus.latitude).to be_nil
    expect(campus.longitude).to be_nil
    expect(campus.country).to eq('Wales')
  end

  it 'assigns a unique id to every record' do
    ids = described_class.all.map(&:id)
    expect(ids.uniq.size).to eq(ids.size)
  end
end
