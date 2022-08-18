RSpec.describe DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS do
  describe 'types including generics' do
    it 'is a valid autocomplete-capable list' do
      DfE::ReferenceData::TYPES_INCLUDING_GENERICS.validate_autocomplete_compatibility!
    end
  end
end
