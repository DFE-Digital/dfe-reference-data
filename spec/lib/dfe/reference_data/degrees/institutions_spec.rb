require 'support/schema_validation'
require 'support/autocomplete'

RSpec.describe DfE::ReferenceData::Degrees::INSTITUTIONS do
  it_should_behave_like 'a list of valid records'
  it_should_behave_like 'a valid autocomplete-capable list'
end
