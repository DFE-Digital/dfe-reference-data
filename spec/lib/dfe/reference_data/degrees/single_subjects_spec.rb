RSpec.describe DfE::ReferenceData::Degrees::SINGLE_SUBJECTS do
  describe 'single subjects' do
    let(:single_subjects) { DfE::ReferenceData::Degrees::SINGLE_SUBJECTS.all }

    it 'has a 6 digit HECoS code for each one or a null code' do
      single_subjects.each do |subject|
        expect(subject.hecos_code).to match(/\A\d{6}\z/).or be_nil
      end
    end

    it 'has a unique name for each subject' do
      single_subjects.each do |subject|
        expect(subject.name).not_to be_nil
        expect(subject.name).not_to be_blank
      end

      subjects_with_count = single_subjects.group_by(&:name)
                                           .map { |subject_name, group| { name: subject_name, count: group.size } }

      subjects_with_count.each do |subject|
        expect(subject[:count]).to eql(1), "#{subject[:name]} is listed #{subject[:count]} times, should only be listed once"
      end
    end

    it 'is a valid autocomplete-capable list' do
      DfE::ReferenceData::Degrees::SINGLE_SUBJECTS.validate_autocomplete_compatibility!
    end
  end
end
