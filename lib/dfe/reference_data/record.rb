require 'ostruct'
require 'active_support'
require 'active_support/core_ext'

module DfE
  module ReferenceData
    # rubocop:disable Style/OpenStructUse
    class Record < OpenStruct
      attr_reader :data

      delegate :[], :[]=, :merge, :key?, :values, :keys, to: :data

      def initialize(data)
        @data = data

        super
      end

      def ==(other)
        data == if other.is_a?(Hash)
                  other
                else
                  other.data
                end
      end

      def as_json(*)
        data
      end

      def to_json(*args)
        as_json.to_json(*args)
      end
    end
    # rubocop:enable Style/OpenStructUse
  end
end
