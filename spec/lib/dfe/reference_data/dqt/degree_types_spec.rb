require 'dfe/reference_data/dqt/degree_types'

RSpec.describe DfE::ReferenceData::DQT::DegreeTypes do
  it 'defines FOUNDATIONS' do
    expect(described_class::FOUNDATIONS).to include('be08f598-0860-4de0-b95a-3c448a16cc99')
  end

  it 'defines MAPPING' do
    expect(described_class::MAPPING).to be_a(Hash)
  end

  it 'maps degree types correctly' do
    expect(described_class::MAPPING['db695652-c197-e711-80d8-005056ac45bb']).to eq('BachelorOfArts')
    expect(described_class::MAPPING['dd695652-c197-e711-80d8-005056ac45bb']).to eq('BachelorOfArtsEconomics')
    expect(described_class::MAPPING['df695652-c197-e711-80d8-005056ac45bb']).to eq('BachelorOfArtsInArchitecture')
  end
end
