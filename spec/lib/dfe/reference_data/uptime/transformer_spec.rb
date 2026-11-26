require_relative '../../../../../lib/dfe/reference_data/uptime/transformer'
require 'json'
require 'bundler'

RSpec.describe DfE::ReferenceData::Uptime::Transformer do
  let(:fixture_path) { Bundler.root.join('spec/fixtures/uptime.json').to_s }
  let(:services) { JSON.parse(File.read(fixture_path)) }

  describe '.call' do
    subject(:result) { described_class.call(services) }

    it 'produces one record per dailyMinutesDown entry across all services' do
      expected_count = services.sum { |service| (service['dailyMinutesDown'] || {}).size }
      expect(result.size).to eq(expected_count)
    end

    it 'composes the id from the slug and date' do
      expect(result).to have_key('access-your-teaching-qualifications-2026-09-21')
    end

    it 'carries over the service name and slug' do
      record = result['access-your-teaching-qualifications-2026-09-21']
      expect(record[:name]).to eq('Access your teaching qualifications')
      expect(record[:slug]).to eq('access-your-teaching-qualifications')
    end

    it 'carries over the raw minutes down' do
      record = result['access-your-teaching-qualifications-2026-09-21']
      expect(record[:minutes_down]).to eq(133)
    end

    it 'always sets minutes_monitored to 1440' do
      expect(result.values.map { |r| r[:minutes_monitored] }.uniq).to eq([1440])
    end

    it 'calculates the uptime percentage for a partial outage' do
      record = result['access-your-teaching-qualifications-2026-09-21']
      expect(record[:uptime_pct]).to eq(90.76) # (1440 - 133) / 1440 * 100
    end

    it 'calculates 0% uptime for a full day down' do
      record = result['register-of-placement-schools-2026-11-25']
      expect(record[:uptime_pct]).to eq(0.0)
    end

    it 'skips services with no downtime recorded' do
      expect(result.keys.any? { |id| id.start_with?('register-trainee-teachers-') }).to be(false)
    end

    describe 'date transformation' do
      it 'converts the date string to the reference data DateTime format' do
        record = result['access-your-teaching-qualifications-2026-09-21']
        expect(record[:downtime_date]).to eq(DateTime.new(2026, 9, 21))
      end
    end
  end

  describe '.build_id' do
    it 'joins slug and date with a hyphen' do
      expect(described_class.build_id('a-slug', '2026-01-02')).to eq('a-slug-2026-01-02')
    end
  end

  describe '.to_downtime_date' do
    it 'parses an ISO date string into a DateTime' do
      expect(described_class.to_downtime_date('2026-01-02')).to eq(DateTime.new(2026, 1, 2))
    end
  end

  describe '.calculate_uptime_pct' do
    it 'returns 100.0 when there is no downtime' do
      expect(described_class.calculate_uptime_pct(0)).to eq(100.0)
    end

    it 'returns 0.0 when the service was down the whole day' do
      expect(described_class.calculate_uptime_pct(1440)).to eq(0.0)
    end

    it 'never returns a negative percentage, even with bad upstream data' do
      expect(described_class.calculate_uptime_pct(2000)).to eq(0.0)
    end

    it 'rounds to 2 decimal places' do
      expect(described_class.calculate_uptime_pct(37)).to eq(97.43)
    end
  end
end
