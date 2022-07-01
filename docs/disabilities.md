## Disabilities

```ruby
require 'dfe/reference_data/disabilities'
```

Owner: Apply team.

Users: Apply team.

Source: https://www.hesa.ac.uk/collection/c22053/e/disable

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier.|
| `name` | string | The name/description of the disability |
| `match_synonyms` | string array | A list of common alternative names |
| `hesa_itt_code` | string | The ID used for this disability in HESA |
