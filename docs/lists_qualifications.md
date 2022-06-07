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

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier |
| `name` | string | The long name of the qualification type |
| `synonyms` | list of string | Any other names that might refer to this qualification type |
| `level` | enumerated string | The level of the qualification. `entry`, `1`, `2`, `3`, `4`, `5`, `6`, or `7`. |
| `degree` | optional enumerated symbol | If the qualification type is a degree, the level of degree - `foundation`, `bachelor`, `master` or `doctor` |

