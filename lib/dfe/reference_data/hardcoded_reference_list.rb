require_relative 'record'
require_relative 'reference_list'

module DfE
  module ReferenceData
    ##
    #
    # A +HardcodedReferenceList+ is an implementation of +ReferenceList+ that uses a
    # hardcoded hash as the data source.
    class HardcodedReferenceList < ReferenceList
      ##
      # +HardcodedReferenceList+ constructor. +data+ is a hash from IDs to
      # records; the records do not need to contain an +id+ field as those are
      # provided automatically. +schema+ is as per the +ReferenceList+ constructor.
      def initialize(data, schema: nil, list_description: nil, list_docs_url: nil, field_descriptions: nil)
        @data = {}

        data.each_entry do |id, record|
          @data[id] = Record.new(record.merge({ id: id }))
        end

        super(schema: schema,
              list_description: list_description,
              list_docs_url: list_docs_url,
              field_descriptions: field_descriptions)
      end

      def all
        @data.values
      end

      def all_as_hash
        @data
      end

      def one(record_id)
        @data[record_id]
      end
    end
  end
end
