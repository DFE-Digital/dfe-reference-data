# Seriously, rubocop, this is not a complicated method
# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity

def validate_autocomplete_compatible_record!(record)
  data = record.data

  # Basic validation: has name, match_synonyms, suggestion_synonyms, hint of appropriate types
  # TODO: Rewrite this into a one-off schema check when schemas are merged in
  throw "Record #{record.id} lacks a name string" unless !data[:name].nil? && data[:name].is_a?(String)
  throw "Record #{record.id} has a non-string hint" unless data[:hint].nil? || data[:hint].is_a?(String)
  ms = data[:match_synonyms]
  throw "Record #{record.id} has non-array-of-strings match synonyms" unless ms.nil? || ms.is_a?(Array) || ms.all? { |e| e.is_a?(String) }
  ss = data[:suggestion_synonyms]
  throw "Record #{record.id} has non-array-of-strings suggestion synonyms" unless ss.nil? || ss.is_a?(Array) || ss.all? { |e| e.is_a?(String) }
end

# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity

RSpec::Matchers.define :be_valid_autocomplete_compatible do
  match do |actual|
    # Keep track of names and match synonyms that have been used in previous
    # records, to ensure uniqueness
    used_names = {}

    actual.all.each do |record|
      validate_autocomplete_compatible_record!(record)

      # Unique name check
      names = Array.new(record.match_synonyms || [])
      names << record.name

      names.each do |name|
        throw "Record #{record.id} has name/match synonym #{name} which is already used by record #{used_names[name]}" if used_names[name]
        used_names[name] = record.id
      end
    end

    # Ok, I guess we're good then!
    true
  end
end

RSpec.shared_examples 'a valid autocomplete-capable list' do
  it 'is a valid autocomplete-capable list' do
    expect(described_class).to be_valid_autocomplete_compatible
  end
end
