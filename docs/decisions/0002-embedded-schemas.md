# Embed schemas for reference lists using a custom schema notation

## Context and problem statement

Reference data lists have a schema, which is documented as prose in the appropriate sections of the README.

It would be *nice* to have a machine-readable schema that lists can be checked against to ensure we don't make mistakes (eg, mistyping a field name in a hardcoded list).

It is *essential* to have a machine-readable schema for automatic translation of the lists into forms that require an up-front schema, such as the BigQuery integration being developed.

## Considered options

* Convert the raw data into JSON and use http://json-schema.org/
* Write a minimal schema notation of our own

## Decision outcome

Using a more general existing schema format would give us a nice-to-have validation solution, but we'd still need custom work to map it into other schemas such as BigQuery's schema model. We could only really map a subset of a JSON schema into bigquery's more limited relational structure, so we'd be restricted to a subset of JSON schema anyway.

We only really use a small set of types/structures in reference data lists, and intend to keep it that way so we can easily map them into other formats.

Therefore, I've written a minimal schema notation.

### Example

This is the schema for `Dfe::ReferenceData::Qualifications::QUALIFICATIONS`:

```ruby
{
  'id' => :string,
  'name' => :string,
  'level' => :string,
  'suggestion_synonyms' => { kind: :array, element_schema: :string },
  'match_synonyms' => { kind: :array, element_schema: :string },
   'degree' => { kind: :optional, schema: :string },
   'hint' => { kind: :optional, schema: :string }
}
```

Simple compulsory string/integer fields can be specified with a single symbol, and more complicated things like optional or repeated fields use a longer notation to express that.

The code to validate a record against this schema is simple, and it's easy to map to other schema formats like BigQuery's table schemas.
