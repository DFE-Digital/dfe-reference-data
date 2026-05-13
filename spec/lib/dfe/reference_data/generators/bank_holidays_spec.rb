require 'tempfile'
require 'bundler'

RSpec.describe DfE::ReferenceData::Generators::BankHolidays do
  let(:fixtures_path) { Bundler.root.join('spec/fixtures/bank_holidays').to_s }

  describe '.generate_bank_holidays_data_from_raw_data' do
    let(:tmp_json) { Tempfile.new(['bank_holidays', '.json']) }
    let(:tmp_rb)   { Tempfile.new(['bank_holidays', '.rb']) }

    before do
      FileUtils.cp(File.join(fixtures_path, 'existing.json'), tmp_json.path)
      FileUtils.cp(File.join(fixtures_path, 'bank_holidays.rb'), tmp_rb.path)
    end

    after do
      tmp_json.unlink
      tmp_rb.unlink
    end

    subject(:result) { described_class.generate_bank_holidays_data_from_raw_data(tmp_json.path, tmp_rb.path) }

    it 'returns a hash keyed by UUID' do
      expect(result.keys).to all(match(/\A[0-9a-f-]{36}\z/))
    end

    it 'returns all records' do
      expect(result.size).to eq(3)
    end

    it 'parses titles' do
      expect(result['3a7c3c1d-7d6d-475d-af54-7989cf294d6e'][:title]).to eq("New Year's Day")
    end

    it 'parses dates as DateTime' do
      expect(result['6c1f10f3-c36c-4dec-8f88-3d224cf100fd'][:date]).to eq(DateTime.new(2022, 4, 15))
    end

    it 'parses optional notes when present' do
      expect(result['3a7c3c1d-7d6d-475d-af54-7989cf294d6e'][:notes]).to eq('Substitute day')
    end

    it 'omits notes when absent' do
      expect(result['6c1f10f3-c36c-4dec-8f88-3d224cf100fd']).not_to have_key(:notes)
    end

    it 'rewrites BANK_HOLIDAYS_DATA in the Ruby file' do
      result
      content = File.read(tmp_rb.path)
      expect(content).to include('BANK_HOLIDAYS_DATA = {')
      expect(content).to include("\"3a7c3c1d-7d6d-475d-af54-7989cf294d6e\"")
      expect(content).to include('DateTime.new(2022, 1, 3)')
    end

    it 'preserves surrounding file content' do
      result
      content = File.read(tmp_rb.path)
      expect(content).to include('module DfE')
      expect(content).to include('module BankHolidays')
    end
  end

  describe '.download_latest_file' do
    let(:tmp_json) { Tempfile.new(['bank_holidays', '.json']) }
    let(:gov_uk_response) { File.read(File.join(fixtures_path, 'gov_uk_response.json')) }

    let(:uuid_1) { 'aaaaaaaa-0000-0000-0000-000000000001' }
    let(:uuid_2) { 'aaaaaaaa-0000-0000-0000-000000000002' }

    before do
      FileUtils.cp(File.join(fixtures_path, 'existing.json'), tmp_json.path)
      allow(ENV).to receive(:fetch).with('GOV_UK_BANK_HOLIDAYS_URL').and_return('https://example.com/bank-holidays.json')
      allow(Net::HTTP).to receive(:get).and_return(gov_uk_response)
      allow(SecureRandom).to receive(:uuid).and_return(uuid_1, uuid_2)
    end

    after { tmp_json.unlink }

    subject(:new_records) { described_class.download_latest_file(tmp_json.path) }

    it 'returns only the new records' do
      expect(new_records.size).to eq(2)
    end

    it 'assigns mocked UUIDs to new records' do
      expect(new_records.map { |r| r['id'] }).to contain_exactly(uuid_1, uuid_2)
    end

    it 'sets title and date on new records' do
      expect(new_records.map { |r| r['date'] }).to contain_exactly('2022-05-02', '2022-06-02')
      expect(new_records.map { |r| r['title'] }).to contain_exactly('Early May bank holiday', 'Spring bank holiday')
    end

    it 'includes notes only when non-empty' do
      may_record  = new_records.find { |r| r['date'] == '2022-05-02' }
      june_record = new_records.find { |r| r['date'] == '2022-06-02' }
      expect(may_record).not_to have_key('notes')
      expect(june_record['notes']).to eq('Substitute day')
    end

    it 'writes all records sorted by date to the file' do
      new_records
      written = JSON.parse(File.read(tmp_json.path))
      expect(written.size).to eq(5)
      expect(written.map { |r| r['date'] }).to eq(written.map { |r| r['date'] }.sort)
    end

    it 'preserves existing records in the written file' do
      new_records
      written = JSON.parse(File.read(tmp_json.path))
      existing_ids = %w[3a7c3c1d-7d6d-475d-af54-7989cf294d6e 6c1f10f3-c36c-4dec-8f88-3d224cf100fd 0b7dbaf9-3591-4e01-8fb0-b2fe4172ae6e]
      expect(written.map { |r| r['id'] }).to include(*existing_ids)
    end

    context 'when there are no new records' do
      let(:gov_uk_response) do
        { 'england-and-wales' => { 'events' => [
          { 'title' => "New Year's Day", 'date' => '2022-01-03', 'notes' => 'Substitute day' }
        ] } }.to_json
      end

      it 'returns an empty array' do
        expect(new_records).to eq([])
      end

      it 'does not modify the file' do
        original = File.read(tmp_json.path)
        new_records
        expect(File.read(tmp_json.path)).to eq(original)
      end
    end
  end
end
