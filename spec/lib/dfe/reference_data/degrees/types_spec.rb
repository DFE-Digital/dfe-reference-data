require 'support/schema_validation'

RSpec.describe DfE::ReferenceData::Degrees::TYPES do
  it_should_behave_like 'a list of valid records'
end

RSpec.describe DfE::ReferenceData::Degrees::GENERIC_TYPES do
  it_should_behave_like 'a list of valid records'
end

RSpec.describe DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS do
  it_should_behave_like 'a list of valid records'
end
