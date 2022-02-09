# frozen_string_literal: true

##
#
# A +ReferenceList+ is the core interface to a reference list (the clue's in the
# name, right?); this class is abstract, defining various utility methods that
# subclasses are likely to be able to re-use the implementations of.
class ReferenceList
  # Abstract methods, override these please

  ##
  # Get all the records in the list, as an array of hashes. Each hash maps field
  # name symbols to whatever values that field has in that record; every record
  # must have a field called +id+ that is a unique primary key for that list -
  # eg, no other record has the same +id+.
  def all
    raise NotImplementedError
  end

  ##
  # Get all the records in the list, as a hash of hashes. The top-level hash
  # maps an ID to the record with that ID.
  def all_as_hash
    raise NotImplementedError
  end

  ##
  # Get a single record from the list, given the value of its +id+ field. The
  # record is returned as a hash mapping field name symbols to values. If there
  # is no record with that +id+, returns +nil+.
  def one(id)
    raise NotImplementedError
  end

  # Utility methods, don't override these unless you have better implementations

  ##
  # Get all the records in the list matching the specified +filter+.
  #
  # The +filter+ is a hash mapping field names to values; records that "match"
  # the filter have those values for those fields. However, if +filter+ is
  # +nil+, all records are returned.
  #
  # The records are returned as an array of hashes, one per record, mapping
  # field name symbols to whatever values that field has in that record.
  def some(filter)
    all_records = all
    if filter.nil?
      all_records
    else
      all_records.find_all do |x|
        filter.all? do |field, value|
          x[field] == value
        end
      end
    end
  end

  ##
  # Get all records in the list matching the specified +filter+, organised by +field+.
  #
  # See the #some method for details of how +filter+ works, including
  # specifying +nil+ to get all records.
  #
  # The result is returned as a hash mapping values of +field+ found in the
  # records to arrays of records with that specific value of +field+.
  #
  # Any records found that do not have a value for +field+ will be ignored.
  #
  # The returned records are represented as hashes mapping field names to
  # whatever values those fields have for that record.
  #
  # As a future extension, we could support passing in a list of fields to
  # create a multi-level hash grouping records by a combination of fields, eg
  # +some_by_field([:a,:b])+ produces a hash with each value of +a+ as keys, and
  # values containing hashes mapping each value of +b+ found in records with
  # that particular value for +a+, to actual records with those values for +a+
  # and +b+. Like an SQL GROUP BY with multiple column names.
  def some_by_field(field, filter = nil)
    records = some(filter)
    result = {}
    records.each_entry do |record|
      next unless record.key? field

      field_value = record[field]
      result[field_value] = [] unless result.key? field_value
      result[field_value].push(record)
    end

    result
  end
end

##
#
# A +HardcodedReferenceList+ is an implementation of +ReferenceList+ that uses a
# hardcoded hash as the data source.
class HardcodedReferenceList < ReferenceList
  ##
  # +HardcodedReferenceList+ constructor. +data+ is a hash from IDs to records;
  # the records do not need to contain an +id+ field as those are provided
  # automatically.
  def initialize(data)
    super
    @data = {}
    data.each_entry do |id, record|
      @data[id] = record.merge({ id: id })
    end
  end

  def all
    @data.values
  end

  def all_as_hash
    @data
  end

  def one(id)
    @data[id]
  end
end

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
  # reference list with some "tweaks" applied.+
  def initialize(base, overrides)
    super
    @base = base
    @overrides = overrides

    @overridden_all = base.all_as_hash.clone

    overrides.each_entry do |id, record|
      if record.nil?
        @overridden_all.delete(id)
      elsif @overridden_all.key? id
        old_record = @overridden_all[id]
        @overridden_all[id] = old_record.merge(record)
      else
        @overridden_all[id] = record.merge({ id: id })
      end
    end
  end

  def all
    @overridden_all.values
  end

  def all_as_hash
    @overridden_all
  end

  def one(id)
    if @overrides.key?(id)
      override = @overrides[id]
      if override.nil? # Hidden record
        nil
      else
        old_record = @base.one(id)
        if old_record.nil? # Added record
          override.merge({ id: id })
        else # Modified record
          old_record.merge(override)
        end
      end
    else # Un-overridden record
      @base.one(id)
    end
  end
end

##
#
# A +JoinedReferenceList+ is a wrapper around one or more +ReferenceList+s with
# disjoint (non-overlapping) ID ranges, which joins them all together into one
# big one.
class JoinedReferenceList < ReferenceList
  def initialize(lists)
    super
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

  def one(id)
    final_result = nil
    @lists.find do |list|
      result = list.one(id)
      if !result.nil?
        final_result = result
        true
      else
        false
      end
    end
    final_result
  end
end
