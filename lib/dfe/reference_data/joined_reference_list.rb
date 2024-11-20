module DfE
  module ReferenceData
    ##
    #
    # A +JoinedReferenceList+ is a wrapper around one or more +ReferenceList+s with
    # disjoint (non-overlapping) ID ranges, which joins them all together into one
    # big one.

    # rubocop:disable Metrics/ParameterLists
    class JoinedReferenceList < ReferenceList
      def initialize(lists, schema: nil, list_description: nil, list_usage_guidance: nil, list_docs_url: nil, field_descriptions: nil)
        # Lists may also be joined referenced lists; flatten the resulting tree
        lists = flatten_lists(lists)

        schema, list_description, list_usage_guidance, field_descriptions = combine_metadata(lists, schema, list_description, list_usage_guidance, field_descriptions) if lists.length.positive?

        @lists = lists

        super(schema:,
              list_description:,
              list_usage_guidance:,
              list_docs_url:,
              field_descriptions:)
      end
      # rubocop:enable Metrics/ParameterLists

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

      # TODO: This needs to be a little smarter: If a field is compulsory in
      # some input lists but not compulsory or not present in others, it needs
      # to be made optional in the resulting list.
      def combine_schemas(lists)
        lists.reduce({}) do |schema_so_far, list|
          schema_so_far.merge(list.schema)
        end
      end

      def combine_field_descriptions(lists)
        lists.reduce({}) do |field_descriptions_so_far, list|
          field_descriptions_so_far.merge(list.field_descriptions)
        end
      end

      def combine_metadata(lists, schema, list_description, list_usage_guidance, field_descriptions)
        # Generate schema if absent
        schema = combine_schemas(lists) if schema.nil?

        # Generate list description if absent
        list_description = "Union of the following lists: #{lists.map(&:list_description).join(', ')}" if list_description.nil?

        # Generate list usage if absent
        list_usage_guidance = "Please note this guidance from the constituent lists: #{lists.map(&:list_usage_guidance).join(', ')}" if list_usage_guidance.nil?

        # Generate field descriptions if absent
        field_descriptions = combine_field_descriptions(lists) if field_descriptions.nil?

        [schema, list_description, list_usage_guidance, field_descriptions]
      end
    end
  end
end
