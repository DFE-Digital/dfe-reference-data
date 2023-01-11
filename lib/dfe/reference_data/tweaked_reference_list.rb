module DfE
  module ReferenceData
    ##
    #
    # A +TweakedReferenceList+ is a wrapper around a +ReferenceList+ that applies
    # some local "tweaks" - overrides to the underlying list that either add new
    # records, add new fields to existing records, overwrite existing fields in
    # existing records, or hide some records.
    class TweakedReferenceList < ReferenceList
      ##
      # +TweakedReferenceList+ constructor. +base+ must be a +ReferenceList+;
      # +overrides+ must be a hash mapping IDs to either hashes of fields or
      # +nil+. If mapped to +nil+, then the record with that ID is hidden from the
      # base list. Otherwise, the fields in the hash are merged into the
      # corresponding record from the base, or simply become the record if there is
      # no record with that ID in the base.
      #
      # The base list is not modified - this merely wraps it to create a new
      # reference list with some "tweaks" applied.

      # Disable long param list warning, as it's keyword params and they're
      # MEANT for this kind of thing.

      # rubocop:disable Metrics/ParameterLists
      def initialize(base, overrides, schema: nil, list_description: nil, list_docs_url: nil, field_descriptions: nil)
        if schema.nil?
          # Default to the schema of the base list, as tweaks will rarely add/remove fields
          schema = base.schema
        end

        super(schema: schema,
              list_description: list_description,
              list_docs_url: list_docs_url,
              field_descriptions: field_descriptions)

        @base = base
        @overrides = overrides
      end
      # rubocop:enable Metrics/ParameterLists

      def all
        all_as_hash.values
      end

      def all_as_hash
        @all_as_hash ||= @overrides.each_entry.with_object(@base.all_as_hash.clone) do |(id, override), new_all|
          if override.nil?
            new_all.delete(id)
          elsif (existing = new_all[id])
            new_all[id] = existing.merge(override)
          else
            new_all[id] = Record.new(override.merge({ id: id }))
          end
        end
      end

      def one(record_id)
        if @overrides.key?(record_id)
          override = @overrides[record_id]
          if override.nil? # Hidden record
            nil
          else
            old_record = @base.one(record_id)
            if old_record.nil? # Added record
              Record.new(override.merge({ id: record_id }))
            else # Modified record
              old_record.merge(override)
            end
          end
        else # Un-overridden record
          @base.one(record_id)
        end
      end
    end
  end
end
