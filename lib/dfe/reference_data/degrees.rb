require_relative 'degrees/types'
require_relative 'degrees/grades'
require_relative 'degrees/institutions'
require_relative 'degrees/subjects'

module DfE
  module ReferenceData
    module Degrees
      DATASETS = [
        TYPES,
        GENERIC_TYPES,
        UNKNOWN_TYPES,
        TYPES_INCLUDING_GENERICS,
        GRADES,
        INSTITUTIONS,
        GENERIC_INSTITUTIONS,
        INSTITUTIONS_INCLUDING_GENERICS,
        SINGLE_SUBJECTS,
        COMBINED_SUBJECTS,
        SUBJECTS,
        GENERIC_SUBJECTS,
        SUBJECTS_INCLUDING_GENERICS
      ].freeze
    end
  end
end
