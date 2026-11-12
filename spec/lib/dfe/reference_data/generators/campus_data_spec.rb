require 'bundler'

RSpec.describe DfE::ReferenceData::Generators::CampusData do
  # A trimmed copy of the real CSV, see spec/fixtures/campus_data/campusdata.csv
  let(:fixture_csv) do
    Bundler.root.join('spec/fixtures/campus_data/campusdata.csv').to_s
  end

  describe '.generate' do
    subject(:dataset) { described_class.generate(fixture_csv) }

    it 'is keyed by a generated UUID' do
      expect(dataset.keys).to all(match(/\A[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\z/))
    end

    it 'produces one record per CSV row' do
      expect(dataset.size).to eq(5)
    end

    it 'assigns a different id to each row' do
      expect(dataset.keys.uniq.size).to eq(dataset.size)
    end

    it 'stores each campus as a flat hash of its own columns' do
      expect(dataset.values).to include(
        { provider_name: 'AA School of Architecture', ukprn: '10008071', instid: '0323',
          name: 'Hooke Park', country: 'England', postcode: 'DT8 3PH', latitude: 50.790481, longitude: -2.673988 }
      )
    end

    it 'keeps distinct records for a UKPRN with several INSTIDs' do
      names = dataset.values.select { |record| record[:ukprn] == '10007773' }.map { |record| record[:provider_name] }
      expect(names).to contain_exactly('The Open University in England', 'The Open University in Scotland')
    end

    it 'omits blank country/postcode and "NULL" coordinates from a campus' do
      derby = dataset.values.find { |record| record[:ukprn] == '10007851' }
      expect(derby).to eq(provider_name: 'University of Derby', ukprn: '10007851', instid: '0057', name: 'Overseas')
    end

    context 'with no argument' do
      subject(:dataset) { described_class.generate }

      it 'reads the bundled raw data CSV' do
        expect(dataset).not_to be_empty
        expect(dataset.keys).to all(match(/\A[0-9a-f-]{36}\z/))
      end
    end
  end

  describe '.generate_ruby_literal' do
    subject(:literal) { described_class.generate_ruby_literal(fixture_csv) }

    it 'returns a frozen Ruby hash literal' do
      expect(literal).to start_with('{').and end_with('}.freeze')
    end

    it 'round-trips to the same shape of data as .generate' do
      literal_values = eval(literal).values # rubocop:disable Security/Eval
      expect(literal_values).to match_array(described_class.generate(fixture_csv).values)
    end
  end
end
