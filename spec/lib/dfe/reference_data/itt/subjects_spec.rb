RSpec.describe DfE::ReferenceData::ITT::SUBJECTS do
  describe 'subjects' do
    let(:records) { described_class.all }
    let(:allocation_subjects) { DfE::ReferenceData::ITT::ALLOCATION_SUBJECTS.all_as_hash }

    it 'has a valid allocation subject' do
      expect(records).to be_all do |rec|
        name = rec.name
        allocation_subject_id = rec.allocation_subject

        unless allocation_subjects.key?(allocation_subject_id)
          # Component ID isn't in SINGLE_SUBJECTS, definitely a problem
          puts "Allocation subject ID mismatch in SUBJECTS[#{rec.id}] (#{name}): allocation subject ID #{allocation_subject_id} not found in ALLOCATION_SUBJECTS"
          false
        end
        true
      end
    end
  end
end
