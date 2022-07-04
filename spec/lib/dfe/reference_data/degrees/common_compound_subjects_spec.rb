RSpec.describe DfE::ReferenceData::Degrees::COMBINED_SUBJECTS do
  describe 'component subject IDs are correct' do
    let(:records) { described_class.all }
    let(:single_subjects) { DfE::ReferenceData::Degrees::SINGLE_SUBJECTS.all_as_hash }

    it 'returns the values for each attribute' do
      expect(records).to(be_all do |rec|
                           name = rec.name
                           name_downcased = name.downcase
                           rec.components.all? do |component_id|
                             if single_subjects.key?(component_id)
                               component_name = single_subjects[component_id].name.downcase

                               # This does nothing if the component doesn't end
                               # in " studies", but if it does "Film studies" is
                               # accepted as part of "Film and media studies"
                               # etc
                               component_name.delete_suffix!(' studies')

                               unless name_downcased.match(component_name)
                                 # It's not necessarily a problem, best tell the user but still return true.
                                 puts "Possible combined-subject mismatch in COMBINED_SUBJECTS[#{rec.id}]: Does '#{name}' contain '#{single_subjects[component_id].name}'?"
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
