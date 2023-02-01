RSpec.describe DfE::ReferenceData::Degrees::TYPES do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end

RSpec.describe DfE::ReferenceData::Degrees::GENERIC_TYPES do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end

RSpec.describe DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end

RSpec.describe DfE::ReferenceData::Degrees::UNKNOWN_TYPES do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end
