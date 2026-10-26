require 'tmpdir'

RSpec.describe DfE::ReferenceData::Generators::JsonExporter do
  let(:widgets) do
    DfE::ReferenceData::HardcodedReferenceList.new(
      { 'a' => { name: 'Widget A' }, 'b' => { name: 'Widget B' } },
      schema: { id: :string, name: :string },
      list_description: 'Widgets available in the shop',
      list_usage_guidance: 'Pick one widget per order',
      list_docs_url: 'https://example.com/docs/widgets',
      field_descriptions: { id: 'The widget id', name: 'The widget name' }
    )
  end

  let(:gadgets) do
    DfE::ReferenceData::HardcodedReferenceList.new(
      { '1' => { name: 'Gadget One' } }
    )
  end

  let(:unlisted) do
    DfE::ReferenceData::HardcodedReferenceList.new(
      { 'x' => { name: 'Should not be exported' } }
    )
  end

  let(:simple_module) do
    mod = Module.new
    mod.const_set(:WIDGETS, widgets)
    mod.const_set(:UNLISTED, unlisted)
    mod.const_set(:NOT_A_DATASET, 'just a string')
    mod.const_set(:DATASETS, [widgets].freeze)
    allow(mod).to receive(:name).and_return('DfE::ReferenceData::Simple')
    mod
  end

  let(:nested_module) do
    mod = Module.new
    mod.const_set(:GADGETS, gadgets)
    mod.const_set(:DATASETS, [gadgets].freeze)
    allow(mod).to receive(:name).and_return('DfE::ReferenceData::Nested::Deep')
    mod
  end

  let(:output_dir) { Dir.mktmpdir }

  before do
    stub_const('DfE::ReferenceData::MODULES', [simple_module, nested_module])
  end

  after { FileUtils.remove_entry(output_dir) }

  describe '.generate' do
    subject(:generate) { described_class.generate(output_dir) }

    it 'writes one file per dataset, nested by namespace' do
      generate

      expect(Dir.glob("#{output_dir}/**/*.json")).to contain_exactly(
        File.join(output_dir, 'simple/widgets.json'),
        File.join(output_dir, 'nested/deep/gadgets.json')
      )
    end

    it 'writes each dataset as pretty-printed JSON, with records nested under "data"' do
      generate

      content = File.read(File.join(output_dir, 'simple/widgets.json'))
      expect(JSON.parse(content)['data']).to contain_exactly(
        { 'id' => 'a', 'name' => 'Widget A' },
        { 'id' => 'b', 'name' => 'Widget B' }
      )
      expect(content).to include("\n") # pretty-printed, not a single line
    end

    it 'includes the dataset documentation metadata alongside the data' do
      generate

      content = JSON.parse(File.read(File.join(output_dir, 'simple/widgets.json')))
      expect(content).to include(
        'description' => 'Widgets available in the shop',
        'usage_guidance' => 'Pick one widget per order',
        'docs_url' => 'https://example.com/docs/widgets',
        'schema' => { 'id' => 'string', 'name' => 'string' },
        'field_descriptions' => { 'id' => 'The widget id', 'name' => 'The widget name' }
      )
    end

    it 'writes datasets from a nested module under a matching directory structure' do
      generate

      content = JSON.parse(File.read(File.join(output_dir, 'nested/deep/gadgets.json')))
      expect(content['data']).to contain_exactly({ 'id' => '1', 'name' => 'Gadget One' })
    end

    it 'only exports constants listed in DATASETS' do
      generate

      expect(File).not_to exist(File.join(output_dir, 'simple/unlisted.json'))
      expect(File).not_to exist(File.join(output_dir, 'simple/not_a_dataset.json'))
    end

    it 'creates the output directory tree if it does not already exist' do
      target_dir = File.join(output_dir, 'does', 'not', 'exist', 'yet')

      described_class.generate(target_dir)

      expect(File).to exist(File.join(target_dir, 'simple/widgets.json'))
    end
  end
end
