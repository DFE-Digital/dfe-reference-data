require_relative '../reference_data'

require_relative 'qualifications'
require_relative 'degrees'

module DfE
  module ReferenceData
    ##
    # All reference data lists (excluding the demo ones)
    ALL_LISTS = {
      'DfE::ReferenceData::Qualifications::QUALIFICATIONS' => DfE::ReferenceData::Qualifications::QUALIFICATIONS,
      'DfE::ReferenceData::Degrees::GRADES' => DfE::ReferenceData::Degrees::GRADES,
      'DfE::ReferenceData::Degrees::INSTITUTIONS' => DfE::ReferenceData::Degrees::INSTITUTIONS,
      'DfE::ReferenceData::Degrees::SINGLE_SUBJECTS' => DfE::ReferenceData::Degrees::SINGLE_SUBJECTS,
      'DfE::ReferenceData::Degrees::COMBINED_SUBJECTS' => DfE::ReferenceData::Degrees::COMBINED_SUBJECTS,
      'DfE::ReferenceData::Degrees::SUBJECTS' => DfE::ReferenceData::Degrees::SUBJECTS,
      'DfE::ReferenceData::Degrees::TYPES' => DfE::ReferenceData::Degrees::TYPES,
      'DfE::ReferenceData::Degrees::GENERIC_TYPES' => DfE::ReferenceData::Degrees::GENERIC_TYPES,
      'DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS' => DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS
    }.freeze
  end
end
