RSpec.describe DfE::ReferenceData::Degrees::SINGLE_SUBJECTS do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end

RSpec.describe DfE::ReferenceData::Degrees::COMBINED_SUBJECTS do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end

RSpec.describe DfE::ReferenceData::Degrees::SUBJECTS do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end

RSpec.describe DfE::ReferenceData::Degrees::GENERIC_SUBJECTS do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end

RSpec.describe DfE::ReferenceData::Degrees::SUBJECTS_INCLUDING_GENERICS do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end
