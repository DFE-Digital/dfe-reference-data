RSpec.describe DfE::ReferenceData::Degrees::SUBJECTS do
  describe 'subjects' do
    it 'is a valid autocomplete-capable list' do
      DfE::ReferenceData::Degrees::SUBJECTS.validate_autocomplete_compatibility!
    end
  end
end
