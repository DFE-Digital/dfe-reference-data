## Qualifications

Types of qualifications, as recognised by the UK.

```ruby
require 'dfe/reference_data/qualifications`
```

### `DfE::ReferenceData::Qualifications::QUALIFICATIONS`

Qualification types.

Owner: Apply team.

Users: Apply team.

Source: https://www.gov.uk/what-different-qualification-levels-mean/list-of-qualification-levels

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

Last updated: 10/01/23

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier |
| `name` | string | The long name of the qualification type |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this qualification type |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this type. An answer matching a match synonym can be safely matched to this type.|
| `level` | enumerated string | The level of the qualification. `entry`, `1`, `2`, `3`, `4`, `5`, `6`, or `7`. |
| `degree` | optional enumerated symbol | If the qualification type is a degree, the level of degree - `foundation`, `bachelor`, `master` or `doctor` |
