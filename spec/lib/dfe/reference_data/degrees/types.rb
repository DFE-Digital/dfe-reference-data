RSpec.describe DfE::ReferenceData::Degrees::TYPES do
  describe 'types' do
    it 'is a valid autocomplete-capable list' do
      DfE::ReferenceData::TYPES.validate_autocomplete_compatibility!
    end
  end
end
