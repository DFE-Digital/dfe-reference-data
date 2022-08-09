RSpec.describe DfE::ReferenceData::Degrees::INSTITUTIONS do
  describe 'institutions' do
    it 'is a valid autocomplete-capable list' do
      DfE::ReferenceData::Degrees::INSTITUTIONS.validate_autocomplete_compatibility!
    end
  end
end
