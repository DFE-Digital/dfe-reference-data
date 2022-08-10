require 'support/schema_validation'

RSpec.describe DfE::ReferenceData::Degrees::SINGLE_SUBJECTS do
  it_should_behave_like 'a list of valid records'
end

RSpec.describe DfE::ReferenceData::Degrees::COMBINED_SUBJECTS do
  it_should_behave_like 'a list of valid records'
end

RSpec.describe DfE::ReferenceData::Degrees::SUBJECTS do
  it_should_behave_like 'a list of valid records'
end
