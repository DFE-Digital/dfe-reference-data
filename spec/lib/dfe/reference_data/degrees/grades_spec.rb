RSpec.describe DfE::ReferenceData::Degrees::GRADES do
  describe 'grades' do
    it 'is a valid autocomplete-capable list' do
      DfE::ReferenceData::Degrees::GRADES.validate_autocomplete_compatibility!
    end
  end
end
