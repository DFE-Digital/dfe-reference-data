require 'dfe/reference_data/countries_and_territories'

RSpec.describe DfE::ReferenceData::CountriesSubjectSpecialismsAndTerritories do
  describe described_class::SUBJECT_SPECIALISMS do
    it_should_behave_like 'a list of valid records'
    it_should_behave_like 'a valid autocomplete-capable list'

    it 'contains mappings from DQT Legacy Codes to Subject names' do
      expect(described_class.one('X8830').name).to eq('Academic Studies In Education')
      expect(described_class.one('N1200').name).to eq('Business Administration')
    end

    it 'contains mappings from HECoS codes to Subject names' do
      expect(described_class.one('100083').name).to eq('event management')
      expect(described_class.one('100320').name).to eq('English studies')
    end

    it 'contains mappings from HECoS codes to Subject Specialism flags' do
      expect(described_class.one('100320').subject_specialism).to eq(TRUE)
      expect(described_class.one('100328').subject_specialism).to eq(FALSE)
    end
  end
end
