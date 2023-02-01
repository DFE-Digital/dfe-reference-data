RSpec.describe DfE::ReferenceData::JoinedReferenceList do
  let(:hardcoded_reference_list1) do
    DfE::ReferenceData::HardcodedReferenceList.new(
      {
        '1' => { name: 'Alaric', child: false },
        '2' => { name: 'Sarah', child: false }
      },
      schema: {
        id: :string,
        name: :string,
        child: :boolean
      },
      list_description: 'Test 1',
      list_usage_guidance: 'Use it wisely',
      field_descriptions: {
        id: 'An ID',
        child: 'A childness'
      }
    )
  end

  let(:hardcoded_reference_list2) do
    DfE::ReferenceData::HardcodedReferenceList.new(
      {
        '3' => { name: 'Jean', child: true },
        '4' => { name: 'Mary', child: true }
      },
      schema: {
        id: :string,
        name: :string,
        child: :boolean
      },
      list_description: 'Test 2',
      list_usage_guidance: 'Use it enthusiastically',
      field_descriptions: {
        id: 'An ID',
        name: 'A name'
      }
    )
  end

  let(:joined_reference_list) do
    described_class.new([hardcoded_reference_list1, hardcoded_reference_list2])
  end

  # NB: These particular tests also make a potentially fragile assumption that
  # the implementation of some preserves the order of entries, it would be
  # better if we sorted the results by :id or used an order-insensitive array
  # comparator

  it 'returns correct data from low-level methods' do
    expect(joined_reference_list.all).to eq([
                                              { id: '1', name: 'Alaric', child: false },
                                              { id: '2', name: 'Sarah', child: false },
                                              { id: '3', name: 'Jean', child: true },
                                              { id: '4', name: 'Mary', child: true }
                                            ])

    expect(joined_reference_list.one('1')).to eq({ id: '1', name: 'Alaric', child: false })
    expect(joined_reference_list.one('3')).to eq({ id: '3', name: 'Jean', child: true })
    expect(joined_reference_list.one('nonexistent')).to be_nil
    expect(joined_reference_list.schema).to eq({ child: :boolean, id: :string, name: :string })
    expect(joined_reference_list.list_description).to eq('Union of the following lists: Test 1, Test 2')
    expect(joined_reference_list.list_usage_guidance).to eq('Please note this guidance from the constituent lists: Use it wisely, Use it enthusiastically')
    expect(joined_reference_list.field_descriptions).to eq({ child: 'A childness', id: 'An ID', name: 'A name' })
  end
end
