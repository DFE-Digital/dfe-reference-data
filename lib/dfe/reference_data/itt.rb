require_relative 'itt/subjects'
require_relative 'itt/cycles'
require_relative 'itt/incentives'

module DfE
  module ReferenceData
    module ITT
      DATASETS = [
        PRIMARY_SUBJECTS,
        SECONDARY_SUBJECTS,
        SUBJECTS,
        PUBLISH_CATEGORIES,
        REGISTER_CATEGORIES,
        CATEGORIES,
        TAD_CATEGORIES,
        CYCLES,
        INCENTIVES
      ].freeze
    end
  end
end
