RSpec.describe DfE::ReferenceData::Degrees::COMMON_COMPOUND_SUBJECTS do
  describe 'component subject IDs are correct' do
    let(:records) { described_class.all }
    let(:single_subjects) { DfE::ReferenceData::Degrees::SINGLE_SUBJECTS.all_as_hash }

    it 'returns the values for each attribute' do
      expect(records).to(be_all do |rec|
        rec.components.all? do |component_id|
          single_subjects.key?(component_id)
        end
      end)
    end
  end
end
