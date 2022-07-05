RSpec.describe DfE::ReferenceData::Degrees::COMBINED_SUBJECTS do
  describe 'subject IDs are correct' do
    let(:records) { described_class.all }
    let(:single_subjects) { DfE::ReferenceData::Degrees::SINGLE_SUBJECTS.all_as_hash }

    it 'returns the values for each attribute' do
      expect(records).to(be_all do |rec|
                           name = rec.name
                           name_downcased = name.downcase
                           rec.subject_ids.all? do |subject_id|
                             if single_subjects.key?(subject_id)
                               unless name_downcased.match(single_subjects[subject_id].name.downcase)
                                 # It's not necessarily a problem, best tell the user but still return true.
                                 puts "Possible combined-subject mismatch in COMBINED_SUBJECTS[#{rec.id}]: Does '#{name}' contain '#{single_subjects[subject_id].name}'?"
                               end
                               true
                             else
                               # Component ID isn't in SINGLE_SUBJECTS, definitely a problem
                               false
                             end
                           end
                         end)
    end
  end
end
