require 'tmpdir'
require 'dfe/reference_data/helpers/v2/country_list_compiler'

RSpec.describe DfE::ReferenceData::Helpers::V2::CountryListCompiler do
  subject(:compiler) { described_class.new }

  describe 'LegacyCountry' do
    subject(:legacy_country) { described_class::LegacyCountry.new('AD', 'Andorra') }

    it 'exposes code and name' do
      expect(legacy_country.code).to eq('AD')
      expect(legacy_country.name).to eq('Andorra')
    end
  end

  describe 'FCDOCountry' do
    subject(:fcdo_country) { described_class::FCDOCountry.new('AD', 'Andorra', 'The Principality of Andorra', 'Andorran') }

    it 'exposes code, name, official_name, and citizen_names' do
      expect(fcdo_country.code).to eq('AD')
      expect(fcdo_country.name).to eq('Andorra')
      expect(fcdo_country.official_name).to eq('The Principality of Andorra')
      expect(fcdo_country.citizen_names).to eq('Andorran')
    end
  end

  describe '#initialize' do
    it 'loads FCDO codes from the CSV' do
      expect(compiler.fcdo_codes).to include('AF', 'AD', 'GB')
    end

    it 'loads legacy codes from the CSV' do
      expect(compiler.legacy_codes).to include('AF', 'AD', 'AE-AJ', 'XK')
    end

    it 'ensures all FCDO codes are present in the legacy codes' do
      expect(compiler.fcdo_codes).to all(be_in(compiler.legacy_codes))
    end

    it 'builds all_countries_data' do
      expect(compiler.all_countries_data).not_to be_empty
    end
  end

  describe '#compile_all_countries_symbols' do
    before { compiler.compile_all_countries_symbols }

    it 'produces the union of legacy and FCDO codes without duplicates' do
      all_codes = compiler.instance_variable_get(:@all_codes)
      expect(all_codes).to eq((compiler.legacy_codes + compiler.fcdo_codes).uniq)
    end

    it 'contains no duplicate codes' do
      all_codes = compiler.instance_variable_get(:@all_codes)
      expect(all_codes.uniq).to eq(all_codes)
    end
  end

  describe '#build_indexes' do
    before { compiler.build_indexes }

    describe 'fcdo_codes_index' do
      it 'maps FCDO codes to FCDOCountry structs' do
        expect(compiler.fcdo_codes_index['AD'].name).to eq('Andorra')
        expect(compiler.fcdo_codes_index['AD'].official_name).to eq('The Principality of Andorra')
        expect(compiler.fcdo_codes_index['AD'].citizen_names).to eq('Andorran')
      end

      it 'returns nil for codes not in the FCDO list' do
        expect(compiler.fcdo_codes_index['AE-AJ']).to be_nil
      end
    end

    describe 'legacy_codes_index' do
      it 'maps legacy codes to LegacyCountry structs' do
        expect(compiler.legacy_codes_index['AF'].name).to eq('Afghanistan')
        expect(compiler.legacy_codes_index['AE-DU'].name).to eq('Dubai')
      end

      it 'includes entries for codes only present in the legacy list' do
        expect(compiler.legacy_codes_index['XK'].name).to eq('Kosovo')
      end
    end
  end

  describe '#build_all_countries_data' do
    describe 'a country in both FCDO and legacy lists' do
      let(:entry) { compiler.all_countries_data.find { |c| c[:code] == 'GB' } }

      it 'uses the legacy name as the primary name' do
        expect(entry[:name]).to eq('United Kingdom')
      end

      it 'includes the FCDO official name and citizen names' do
        expect(entry[:full_name]).to eq('The United Kingdom of Great Britain and Northern Ireland')
        expect(entry[:citizen_name]).to eq('Briton, British')
      end

      it 'includes both list names' do
        expect(entry[:fcdo_list_name]).to eq('United Kingdom')
        expect(entry[:legacy_list_name]).to eq('United Kingdom')
      end
    end

    describe 'a country only in the legacy list' do
      let(:entry) { compiler.all_countries_data.find { |c| c[:code] == 'AE-AJ' } }

      it 'uses the legacy name as the primary name' do
        expect(entry[:name]).to eq('Ajman')
      end

      it 'has no FCDO-specific data' do
        expect(entry[:full_name]).to be_nil
        expect(entry[:citizen_name]).to be_nil
        expect(entry[:fcdo_list_name]).to be_nil
      end

      it 'includes the legacy list name' do
        expect(entry[:legacy_list_name]).to eq('Ajman')
      end
    end

    it 'includes all legacy codes' do
      codes = compiler.all_countries_data.map { |c| c[:code] }
      expect(codes).to include(*compiler.legacy_codes)
    end

    it 'includes all FCDO codes' do
      codes = compiler.all_countries_data.map { |c| c[:code] }
      expect(codes).to include(*compiler.fcdo_codes)
    end

    it 'contains no duplicate codes' do
      codes = compiler.all_countries_data.map { |c| c[:code] }
      expect(codes).to eq(codes.uniq)
    end
  end

  describe '#create_full_csv' do
    let(:fcdo_fixture) do
      [
        described_class::FCDOCountry.new('AF', 'Afghanistan', 'The Islamic Republic of Afghanistan', 'Afghan'),
        described_class::FCDOCountry.new('AD', 'Andorra', 'The Principality of Andorra', 'Andorran')
      ]
    end

    let(:legacy_fixture) do
      [
        described_class::LegacyCountry.new('AF', 'Afghanistan'),
        described_class::LegacyCountry.new('AD', 'Andorra'),
        described_class::LegacyCountry.new('AE-AJ', 'Ajman')
      ]
    end

    let(:output_csv_path) { File.join(Dir.mktmpdir, 'full_countries_and_territories.csv') }

    let(:csv_rows) do
      compiler.create_full_csv
      CSV.read(output_csv_path, headers: true)
    end

    before do
      stub_const("#{described_class}::FCDO_COUNTRIES", fcdo_fixture)
      stub_const("#{described_class}::LEGACY_COUNTRIES_AND_TERRITORIES", legacy_fixture)
      allow(CSV).to receive(:open).and_wrap_original do |original, path, *rest, **kwargs, &block|
        path = output_csv_path if path == 'raw_data/full_countries_and_territories.csv'
        original.call(path, *rest, **kwargs, &block)
      end
    end

    it 'writes a header row' do
      expect(csv_rows.headers).to eq(['code', 'name', 'full_name', 'citizen_name', 'FCDO_list', 'Legacy_list', 'is_domicile'])
    end

    it 'writes one row per country' do
      expect(csv_rows.size).to eq(3)
    end

    it 'includes FCDO countries with full data' do
      afghanistan = csv_rows.find { |r| r['code'] == 'AF' }
      expect(afghanistan['name']).to eq('Afghanistan')
      expect(afghanistan['full_name']).to eq('The Islamic Republic of Afghanistan')
      expect(afghanistan['citizen_name']).to eq('Afghan')
      expect(afghanistan['FCDO_list']).to eq('Afghanistan')
      expect(afghanistan['Legacy_list']).to eq('Afghanistan')
      expect(afghanistan['is_domicile']).to eq('false')
    end

    it 'marks legacy-only entries as domiciles with no FCDO data' do
      ajman = csv_rows.find { |r| r['code'] == 'AE-AJ' }
      expect(ajman['name']).to eq('Ajman')
      expect(ajman['full_name']).to be_nil
      expect(ajman['citizen_name']).to be_nil
      expect(ajman['FCDO_list']).to be_nil
      expect(ajman['is_domicile']).to eq('true')
    end
  end
end
