require 'bundler'

RSpec.describe DfE::ReferenceData::Generators::InternationalQualifications do
  # A trimmed 5-group copy of the real CSV, see
  # spec/fixtures/international_qualifications/international_qualifications.csv
  let(:fixture_csv) do
    Bundler.root.join('spec/fixtures/international_qualifications/international_qualifications.csv').to_s
  end

  let(:gaokao_id) { '9450f8ea-cc70-4af1-92df-f848f03aa4ff' }
  let(:benke_id)  { '10139d58-e2ab-418a-bfcc-f5057612cfa4' }

  describe '.generate' do
    subject(:dataset) { described_class.generate(fixture_csv) }

    it 'is keyed by the per-group UUID' do
      expect(dataset.keys).to all(match(/\A[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\z/))
    end

    it 'produces one record per group, not per CSV row' do
      expect(dataset.size).to eq(5)
    end

    it 'collapses every grade of a group into a single record' do
      expect(dataset.fetch(gaokao_id)[:grades])
        .to contain_exactly('good', 'top tier', 'borderline', 'high', 'pass', 'fail')
    end

    it 'de-duplicates repeated grades' do
      grades = dataset.fetch(gaokao_id)[:grades]
      expect(grades).to eq(grades.uniq)
    end

    it 'exposes qualification_group as a Symbol' do
      expect(dataset.fetch(gaokao_id)[:qualification_group]).to eq(:gaokao)
    end

    it 'stores the ENIC columns as scalar strings' do
      record = dataset.fetch(gaokao_id)
      expect(record.values_at(:enic_band, :enic_notes, :equivalence_type))
        .to eq(['band 6', 'university entry', 'a_level'])
    end

    it 'tokenises rqf_level' do
      expect(dataset.fetch(gaokao_id)[:rqf_level]).to eq('level_3')
    end

    it 'omits a scalar column that is blank for the whole group' do
      expect(dataset.fetch(benke_id)).not_to have_key(:enic_notes)
    end

    it 'keeps only "met" grades in gcse_equivalent_grades' do
      expect(dataset.fetch(gaokao_id)[:gcse_equivalent_grades])
        .to contain_exactly('good', 'top tier', 'high', 'pass')
    end

    it 'always keeps gcse_equivalent_grades a subset of grades' do
      dataset.each_value do |record|
        equivalent = record.fetch(:gcse_equivalent_grades, [])
        expect(equivalent - record[:grades]).to be_empty
      end
    end

    it 'omits gcse_equivalent_grades when no grade meets the bar' do
      expect(dataset.fetch(benke_id)).not_to have_key(:gcse_equivalent_grades)
    end

    it 'does not carry the id inside the record body' do
      expect(dataset.fetch(gaokao_id)).not_to have_key(:id)
    end

    context 'with no argument' do
      subject(:dataset) { described_class.generate }

      it 'reads the bundled raw data CSV' do
        expect(dataset).not_to be_empty
        expect(dataset.keys).to all(match(/\A[0-9a-f-]{36}\z/))
      end

      it 'includes a known qualification' do
        expect(dataset.fetch(gaokao_id)[:qualification_name])
          .to eq('gaokao (national college entrance exam)')
      end
    end
  end

  describe '.generate_ruby_literal' do
    subject(:literal) { described_class.generate_ruby_literal(fixture_csv) }

    it 'returns a frozen Ruby hash literal' do
      expect(literal).to start_with('{').and end_with('}.freeze')
    end

    it 'round-trips to the same data as .generate' do
      expect(eval(literal)).to eq(described_class.generate(fixture_csv)) # rubocop:disable Security/Eval
    end

    it 'escapes apostrophes in string values' do
      expect(literal).to include("'benke (bachelor\\'s degree)'")
    end

    it 'emits qualification_group as a bare symbol' do
      expect(literal).to include('qualification_group: :gaokao')
    end
  end
end
