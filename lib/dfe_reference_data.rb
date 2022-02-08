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

  def get_all
    raise NotImplementedError
  end

  ##
  # Get all the records in the list, as a hash of hashes. The top-level hash
  # maps an ID to the record with that ID.

  def get_all_as_hash
    raise NotImplementedError
  end

  ##
  # Get a single record from the list, given the value of its +id+ field. The
  # record is returned as a hash mapping field name symbols to values. If there
  # is no record with that +id+, returns +nil+.
  def get_one(id)
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
  def get_some(filter)
    all = get_all
    if filter == nil
      all
    else
      all.find_all{ |x|
        filter.all? { |field, value|
          x[field] == value
        }
      }
    end
  end

  ##
  # Get all records in the list matching the specified +filter+, organised by +field+.
  #
  # See the #get_some method for details of how +filter+ works, including
  # specifying +nil+ to get all records.
  #
  # The result is returned as a hash mapping values of +field+ found in the
  # records to arrays of records with that specific value of +field+.
  #
  # Any records found that do not have a value for +field+ will be ignored.
  #
  # The returned records are represented as hashes mapping field names to
  # whatever values those fields have for that record.
  def get_some_by_field(field, filter = nil)
    records = get_some(filter)
    result = Hash.new
    records.each_entry {|record|
      if record.has_key? field
        field_value = record[field]
        if not result.has_key? field_value
          result[field_value] = []
        end
        result[field_value].push(record)
      end
    }

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
    @data = Hash.new()
    data.each_entry { |id, record|
      @data[id] = record.merge({:id => id})
    }
  end

  def get_all
    @data.values
  end

  def get_all_as_hash
    @data
  end

  def get_one(id)
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
    @base = base
    @overrides = overrides

    @overridden_all = base.get_all_as_hash.clone

    overrides.each_entry{ |id, record|
      if record == nil
        @overridden_all.delete(id)
      elsif @overridden_all.has_key? id
        old_record = @overridden_all[id]
        @overridden_all[id] = old_record.merge(record)
      else
        @overridden_all[id] = record.merge({:id => id})
      end
    }
  end

  def get_all
    @overridden_all.values
  end

  def get_all_as_hash
    @overridden_all
  end

  def get_one(id)
    if @overrides.has_key?(id)
      override = @overrides[id]
      if override == nil # Hidden record
        return nil
      else
        old_record = @base.get_one(id)
        if old_record == nil # Added record
          return override.merge({:id => id})
        else # Modified record
          return old_record.merge(override)
        end
      end
    else # Un-overridden record
      return @base.get_one(id)
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
    @lists = lists
  end

  def get_all
    all = Array.new()
    @lists.each_entry { |list|
      all = all + list.get_all
    }
    all
  end

  def get_all_as_hash
    all = Hash.new()
    @lists.each_entry { |list|
      all.merge(list.get_all_as_hash)
    }
    all
  end

  def get_one(id)
    final_result = nil
    @lists.find { |list|
      result = list.get_one(id)
      if result != nil
        final_result = result
        true
      else
        false
      end
    }
    final_result
  end
end
