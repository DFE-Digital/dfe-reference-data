RSpec.describe DfE::ReferenceData::Qualifications::QUALIFICATIONS do
  describe 'qualifications' do
    it 'is a valid autocomplete-capable list' do
      DfE::ReferenceData::Qualifications::QUALIFICATIONS.validate_autocomplete_compatibility!
    end
  end
end
