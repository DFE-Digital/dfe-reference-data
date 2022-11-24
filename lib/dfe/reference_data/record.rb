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

      def merge(other_record)
        Record.new(data.merge(other_record))
      end

      def inspect
        if data.key?(:name)
          "#<DfE::ReferenceData::Record id=#{id} name=#{name}>"
        else
          "#<DfE::ReferenceData::Record id=#{id}>"
        end
      end
    end
    # rubocop:enable Style/OpenStructUse
  end
end
