module DfE
  module ReferenceData
    ##
    #
    # A +JoinedReferenceList+ is a wrapper around one or more +ReferenceList+s with
    # disjoint (non-overlapping) ID ranges, which joins them all together into one
    # big one.
    class JoinedReferenceList < ReferenceList
      def initialize(lists, schema = nil)
        # Lists may also be joined referenced lists; flatten the resulting tree
        lists = flatten_lists(lists)

        schema = combine_metadata(lists, schema) if lists.length.positive?

        super(schema)
        @lists = lists
      end

      def all
        all = []
        @lists.each_entry do |list|
          all += list.all
        end
        all
      end

      def all_as_hash
        all = {}
        @lists.each_entry do |list|
          all.merge(list.all_as_hash)
        end
        all
      end

      def one(record_id)
        final_result = nil
        @lists.find do |list|
          result = list.one(record_id)
          if result.nil?
            false
          else
            final_result = result
            true
          end
        end
        final_result
      end

      def constituent_lists
        @lists
      end

      private

      def flatten_lists(lists)
        lists.reduce([]) do |lists_so_far, list|
          if list.respond_to?(:constituent_lists)
            if list.constituent_lists.nil?
              lists_so_far
            else
              lists_so_far + list.constituent_lists
            end
          else
            lists_so_far + [list]
          end
        end
      end

      def combine_schemas(lists)
        lists.reduce({}) do |schema_so_far, list|
          if list.schema.nil?
            schema_so_far
          else
            schema_so_far.merge(list.schema)
          end
        end
      end

      def combine_metadata(lists, schema)
        # Generate schema if absent
        schema = combine_schemas(lists) if schema.nil?

        schema
      end
    end
  end
end
