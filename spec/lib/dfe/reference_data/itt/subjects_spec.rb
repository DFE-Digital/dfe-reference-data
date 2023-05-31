RSpec.describe DfE::ReferenceData::ITT::SUBJECTS do
  it_should_behave_like 'a list of valid records'
  describe 'subjects' do
    let(:records) { described_class.all }
    let(:incentives) { DfE::ReferenceData::ITT::INCENTIVES.all_as_hash }
    let(:publish_categories) { DfE::ReferenceData::ITT::PUBLISH_CATEGORIES.all_as_hash }
    let(:register_categories) { DfE::ReferenceData::ITT::REGISTER_CATEGORIES.all_as_hash }
    let(:categories) { DfE::ReferenceData::ITT::CATEGORIES.all_as_hash }
    let(:cycles) { DfE::ReferenceData::ITT::CYCLES.all_as_hash }

    it 'has a valid incentive' do
      expect(records).to be_all do |rec|
        name = rec.name
        problems_found = false
        rec.incentive&.each_entry do |cycle_id, incentive_id|
          unless cycles.key?(cycle_id)
            puts "Incentive ID mismatch in SUBJECTS[#{rec.id}] (#{name}): cycle ID #{incentive_id} not found in CYCLES"
            problems_found = true
          end

          unless incentives.key?(incentive_id)
            puts "Incentive ID mismatch in SUBJECTS[#{rec.id}] (#{name}): incentive ID #{incentive_id} not found in INCENTIVES"
            problems_found = true
          end

          # Uncomment this to get a handy reference to cross-check the validity of incentive mappings by eye
          # puts "#{name}: #{cycle_id} => #{incentives[incentive_id].name}"
        end

        !problems_found
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

  let(:records) { described_class.all }
  let(:l1) { DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L1.all_as_hash }
  let(:l2) { DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L2.all_as_hash }
  let(:l3) { DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L3.all_as_hash }

  it 'has a valid cah_mappings_allow list' do
    expect(records).to be_all do |rec|
      name = rec.name
      associated_allow_list = rec.cah_associated_mappings_allow
      associated_block_list = rec.cah_associated_mappings_block
      direct_allow_list = rec.cah_direct_mappings_allow
      direct_block_list = rec.cah_direct_mappings_block

      associated_allow_list_good = associated_allow_list.all? do |cah|
        good = (l1.include?(cah) or l2.include?(cah) or l3.include?(cah))
        puts "ERROR: TAD Category '#{name}' has a cah_associated_mappings_allow entry '#{cah}' which is not found in any of DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L[1,2,3]" unless good
        good
      end

      associated_block_list_good = associated_block_list.all? do |cah|
        good = (l1.include?(cah) or l2.include?(cah) or l3.include?(cah))
        puts "ERROR: TAD Category '#{name}' has a cah_associated_mappings_block entry '#{cah}' which is not found in any of DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L[1,2,3]" unless good
        good
      end

      direct_allow_list_good = direct_allow_list.all? do |cah|
        good = (l1.include?(cah) or l2.include?(cah) or l3.include?(cah))
        puts "ERROR: TAD Category '#{name}' has a cah_direct_mappings_allow entry '#{cah}' which is not found in any of DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L[1,2,3]" unless good
        good
      end

      direct_block_list_good = direct_block_list.all? do |cah|
        good = (l1.include?(cah) or l2.include?(cah) or l3.include?(cah))
        puts "ERROR: TAD Category '#{name}' has a cah_direct_mappings_block entry '#{cah}' which is not found in any of DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L[1,2,3]" unless good
        good
      end

      associated_allow_list_good and associated_block_list_good and direct_allow_list_good and direct_block_list_good
    end
  end
end

RSpec.describe DfE::ReferenceData::ITT::CATEGORIES do
  it_should_behave_like 'a list of valid records'
end
