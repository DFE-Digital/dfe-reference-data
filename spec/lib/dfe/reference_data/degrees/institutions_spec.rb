RSpec.describe DfE::ReferenceData::Degrees::UK_INSTITUTIONS do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end

RSpec.describe DfE::ReferenceData::Degrees::GENERIC_INSTITUTIONS do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end

RSpec.describe DfE::ReferenceData::Degrees::INSTITUTIONS do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end
