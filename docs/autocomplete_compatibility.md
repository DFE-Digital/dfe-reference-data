# Autocomplete Compatability

Many lists are used to drive autocompleting user interface components. In order to support this, a standardised concept of an "autocomplete compatible" list has been defined. A list which is autocomplete compatible has the information required to drive an autocomplete-based selection mechanism, and has that information in well-known fields so no additional configuration is required to use that list in an autocomplete mechanism that understands this standard.

# Specification

An autocomplete-compatible list must have:

1. A `name` field, which is a string value in every record. This should be the "best" name for the identified object, such as a legal or official name.
2. (Optionally) an `match_synonyms` field which, in every record in which it is present, is an array of strings. These should be alternative names by which the object may be known, but which can only refer to this object.
2. (Optionally) a `suggestion_synonyms` field which, in every record in which it is present, is an array of strings. These should be alternative names by which the object may possibly be known, but which might not always refer to this object.
2. (Optionally) an `hint` field which, in every record in which it is present, is a string. It should be a message to be shown to users to help them decide if this is the object they mean to select.

In addition, for any given list, the combination of `name` and values inside `match_synonyms` must not contain duplicates - there can be no string that matches more than one record in the `name` field or a `match_synonym`. Duplication within `suggestion_synonyms` is fine, but no value inside `suggestion_synonyms` can also occur in a `name` or inside a `match_synonyms`.

## Matching

A user-inputted string is compared to names from `name`, `match_synonyms` or `suggestion_synonyms` fields to see if they "match" any records. The nature of this comparison is deliberately weakly specified, as autocomplete logic may use arbitrarily clever fuzzy matches. However, it will always include case-insensitive string matching, so there is no need to list multiple names in a record that differ only in case.

See https://bat-design-history.netlify.app/register-trainee-teachers/autocomplete-improvements/ for a discussion of the development of fuzzy matching in autocompletion engines.

# Documentation

A reference data list may declare that it is autocomplete compatible with the following wording:

```
This list is [autocomplete compatible](autocomplete_compatability.md).
```

# Validation

The RSpec tests for a list can confirm it's autocomplete compatible with the following pattern:

```ruby
  describe 'qualifications' do
    it 'is a valid autocomplete-capable list' do
      DfE::ReferenceData::Qualifications::QUALIFICATIONS.validate_autocomplete_compatibility!
    end
  end

```
