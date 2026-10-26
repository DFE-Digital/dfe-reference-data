RSpec.describe DfE::ReferenceData::TweakedReferenceList do
  let(:hardcoded_reference_list) do
    DfE::ReferenceData::HardcodedReferenceList.new(
      {
        '1' => { name: 'Alaric', child: false },
        '2' => { name: 'Sarah', child: false },
        '3' => { name: 'Jean', child: true },
        '4' => { name: 'Mary', child: true }
      },
      schema: { name: :string, child: :boolean },
      list_description: 'A list of people',
      list_usage_guidance: 'Use this to look up people',
      list_docs_url: 'https://example.com/docs',
      field_descriptions: { name: 'Full name', child: 'Whether they are a child' }
    )
  end

  let(:tweaked_reference_list) do
    described_class.new(
      hardcoded_reference_list,
      {
        '1' => nil,
        '2' => { favourite_pokemon: 'Eevee' },
        '5' => { name: 'Helium', cat: true }
      }
    )
  end

  it 'returns correct data from low-level methods' do
    expect(tweaked_reference_list.all.map(&:data)).to contain_exactly(
      { id: '2', name: 'Sarah', child: false, favourite_pokemon: 'Eevee' },
      { id: '3', name: 'Jean', child: true },
      { id: '4', name: 'Mary', child: true },
      { id: '5', name: 'Helium', cat: true }
    )

    expect(tweaked_reference_list.all_as_hash.transform_values(&:data)).to eq(
      {
        '2' => { id: '2', name: 'Sarah', child: false,
                 favourite_pokemon: 'Eevee' },
        '3' => { id: '3', name: 'Jean', child: true },
        '4' => { id: '4', name: 'Mary', child: true },
        '5' => { id: '5', name: 'Helium', cat: true }
      }
    )

    expect(tweaked_reference_list.one('1')).to be_nil
    expect(tweaked_reference_list.one('2').data).to eq({ id: '2', name: 'Sarah', child: false, favourite_pokemon: 'Eevee' })
    expect(tweaked_reference_list.one('5').data).to eq({ id: '5', name: 'Helium', cat: true })
  end

  it 'copies metadata from the base list by default' do
    expect(tweaked_reference_list.schema).to eq(hardcoded_reference_list.schema)
    expect(tweaked_reference_list.list_description).to eq(hardcoded_reference_list.list_description)
    expect(tweaked_reference_list.list_usage_guidance).to eq(hardcoded_reference_list.list_usage_guidance)
    expect(tweaked_reference_list.list_docs_url).to eq(hardcoded_reference_list.list_docs_url)
    expect(tweaked_reference_list.field_descriptions).to eq(hardcoded_reference_list.field_descriptions)
  end

  it 'allows metadata to be overridden explicitly' do
    overridden_list = described_class.new(
      hardcoded_reference_list,
      {},
      schema: { name: :string },
      list_description: 'A different description',
      list_usage_guidance: 'Different guidance',
      list_docs_url: 'https://example.com/other-docs',
      field_descriptions: { name: 'A different description of name' }
    )

    expect(overridden_list.schema).to eq({ name: :string })
    expect(overridden_list.list_description).to eq('A different description')
    expect(overridden_list.list_usage_guidance).to eq('Different guidance')
    expect(overridden_list.list_docs_url).to eq('https://example.com/other-docs')
    expect(overridden_list.field_descriptions).to eq({ name: 'A different description of name' })
  end
end
