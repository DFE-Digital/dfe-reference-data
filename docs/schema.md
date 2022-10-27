## Reference data list schemas

An optional, but strongly encouraged, feature of a reference data list is a *schema*. This is a declaration of what fields should be in each record.

These are valuable for two reasons:

1. They make it possible to write tests that confirm the stored data meets the schema, which enables automatic detection of errors such as mis-spelling a field name or missing a required field. This gives us confidence that released data meets its requirements.
2. They make it practical to automatically export lists into forms that need an up-front schema to be declared before data can be inserted, such as [BigQuery](bigquery.md).

### Declaring a schema

When creating a `HardcodedReferenceList`, or derived forms such as a `JoinedReferenceList` or `TweakedReferenceList`, the schema can be supplied as an optional final argument to the constructor.

The schema format is a hash mapping field name symbols to the schema for that field.

#### Simple field schemas

If a field is compulsory and isn't an array, then its field schema is said to be "simple".

##### Bare types

Bare types are just represented as a symbol.

| Schema symbol | Meaning              |
|---------------|----------------------|
| `:string`       | A string, or text, in UTF-8    |
| `:symbol`       | A symbol             |
| `:boolean`      | `true` or `false`    |
| `:integer`      | An integer, from -4611686018427387904 to  4611686018427387903 inclusive |
| `:real`         | A real number, from -1.7976931348623157e+308 to 1.7976931348623157e+308, stored approximately |

##### Code fields

Rather than using `:string` for IDs or codes, it's best to use a code schema
that specifies a [regular expression
pattern](https://ruby-doc.org/core-3.1.2/Regexp.html) the value must follow,
like so:

`{kind: :code, pattern: /[REGEXP]/}'

The regexp should usually be anchored with `^` and `$` to require it to match the entire string.

For instance:

`{kind: :code, pattern: /^[0-9]{4}$/}`

#### Optional fields

Specify an optional field like so:

`{kind: :optional, schema: [SIMPLE FIELD SCHEMA]}`

For instance:

`{kind: :optional, schema: :string}`

#### Array fields

An array field schema looks like this:

`{kind: :array, element_schema: [SIMPLE FIELD SCHEMA]}`

For instance:

`{kind: :array, element_schema: :string}`

### Examples

See [the demo lists](../lib/dfe/reference_data/demo.rb) for examples of schemas in practice.
