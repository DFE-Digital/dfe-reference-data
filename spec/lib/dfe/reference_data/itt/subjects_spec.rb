RSpec.describe DfE::ReferenceData::ITT::SUBJECTS do
  it_should_behave_like 'a list of valid records'
  describe 'subjects' do
    let(:records) { described_class.all }
    let(:incentives) { DfE::ReferenceData::ITT::INCENTIVES.all_as_hash }
    let(:publish_categories) { DfE::ReferenceData::ITT::PUBLISH_CATEGORIES.all_as_hash }
    let(:register_categories) { DfE::ReferenceData::ITT::REGISTER_CATEGORIES.all_as_hash }
    let(:categories) { DfE::ReferenceData::ITT::CATEGORIES.all_as_hash }

    it 'has a valid incentive' do
      expect(records).to be_all do |rec|
        name = rec.name
        incentive_id = rec.incentive
        if incentive_id
          if incentives.key?(incentive_id)
            true
          else
            puts "Incentive ID mismatch in SUBJECTS[#{rec.id}] (#{name}): incentive ID #{incentive_id} not found in INCENTIVES"
            false
          end
        else
          # No incentive, this is fine
          true
        end
      end
    end

    it 'has a valid publish_category' do
      expect(records).to be_all do |rec|
        name = rec.name
        publish_category_id = rec.publish_category
        if publish_category_id
          if publish_categories.key?(publish_category_id)
            true
          else
            puts "Publish category ID mismatch in SUBJECTS[#{rec.id}] (#{name}): publish_category ID #{publish_category_id} not found in PUBLISH_CATEGORIES"
            false
          end
        else
          # No publish_category, this is OK but issue a warning
          puts "WARNING: Missing publish_category in SUBJECTS[#{rec.id}] (#{name})"
          true
        end
      end
    end

    it 'has a valid register category' do
      expect(records).to be_all do |rec|
        name = rec.name
        register_category_id = rec.register_category
        if register_category_id
          if register_categories.key?(register_category_id)
            true
          else
            puts "Register category ID mismatch in SUBJECTS[#{rec.id}] (#{name}): register category ID #{register_category_id} not found in REGISTER_CATEGORIES"
            false
          end
        else
          # No register_category, this is OK but issue a warning
          puts "WARNING: Missing register_category in SUBJECTS[#{rec.id}] (#{name})"
          true
        end
      end
    end

    it 'has a valid category' do
      expect(records).to be_all do |rec|
        name = rec.name
        category_id = rec.category
        if category_id
          if categories.key?(category_id)
            true
          else
            puts "Category ID mismatch in SUBJECTS[#{rec.id}] (#{name}): category ID #{category_id} not found in CATEGORIES"
            false
          end
        else
          # No category, this is OK but issue a warning
          puts "WARNING: Missing category in SUBJECTS[#{rec.id}] (#{name})"
          true
        end
      end
    end
  end
end

RSpec.describe DfE::ReferenceData::ITT::PRIMARY_SUBJECTS do
  it_should_behave_like 'a list of valid records'
end

RSpec.describe DfE::ReferenceData::ITT::SECONDARY_SUBJECTS do
  it_should_behave_like 'a list of valid records'
end

RSpec.describe DfE::ReferenceData::ITT::INCENTIVES do
  it_should_behave_like 'a list of valid records'
end

RSpec.describe DfE::ReferenceData::ITT::PUBLISH_CATEGORIES do
  it_should_behave_like 'a list of valid records'
end

RSpec.describe DfE::ReferenceData::ITT::REGISTER_CATEGORIES do
  it_should_behave_like 'a list of valid records'
end

RSpec.describe DfE::ReferenceData::ITT::TAD_CATEGORIES do
  it_should_behave_like 'a list of valid records'
end

RSpec.describe DfE::ReferenceData::ITT::CATEGORIES do
  it_should_behave_like 'a list of valid records'
end
