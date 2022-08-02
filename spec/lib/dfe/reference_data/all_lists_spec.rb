require_relative '../../../../lib/dfe/reference_data/all_lists'

## ABS FIXME Why does this fail with confusing errors? I need to learn rspec better.

RSpec::Matchers.define :be_a_valid_reference_data_list do
  match do |actual|
    actual.validate() == {}
  end
end

RSpec.describe DfE::ReferenceData do
  let(:all_lists) do
    DfE::ReferenceData::ALL_LISTS
  end

  describe 'All lists with schemas' do
    let(:all_lists_with_schemas) do
      all_lists.values.filter do |x|
        x.schema != nil
      end
    end

    it 'is a valid reference list' do
      expect (all_lists_with_schemas).to all(be_a_valid_reference_data_list)
    end
  end
end
