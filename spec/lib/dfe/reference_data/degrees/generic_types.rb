RSpec.describe DfE::ReferenceData::Degrees::GENERIC_TYPES do
  describe 'generic types' do
    it 'is a valid autocomplete-capable list' do
      DfE::ReferenceData::GENERIC_TYPES.validate_autocomplete_compatibility!
    end
  end
end
