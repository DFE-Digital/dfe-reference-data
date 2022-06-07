## Degrees

Degree types, subjects, and UK awarding institutions

### `DfE::ReferenceData::Degrees::TYPES`

```ruby
require 'dfe/reference_data/degrees'
```

Types of degrees (eg, "BEng", "MA", etc.)

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training-prototype/blob/main/app/data/degree-types.js

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| id | UUID | A unique identifier. The same as `dqt_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| priority | integer | ? |
| name | string | The long name of the degree type, eg "Foundation of Arts" |
| abbreviation | string | The abbreviated name, eg, "FdA" |
| synonyms | string array | A list of common alternative names |
| level | string | The qualification level of this degree |
| dqt_id | uuid | The ID used for this qualification in DQT |
| hesa_itt_code | string | The ID used for this qualification in HESA |

### `DfE::ReferenceData::Degrees::SUBJECTS`

```ruby
require 'dfe/reference_data/degrees'
```

Degree subjects

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training-prototype/blob/main/app/data/degree-subjects.js

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| id | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| name | string | The long name of the subject, eg "accountancy" |
| synonyms | string array | A list of common alternative names |
| dttp_id | uuid | The ID used for this subject in DTTP |
| hesa_itt_code | string | The ID used for this subject in HESA |

### `DfE::ReferenceData::Degrees::INSTITUTIONS`

```ruby
require 'dfe/reference_data/degrees'
```

Degree-awarding (or otherwise) institutions

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training-prototype/blob/main/app/data/degree-institutions.js

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| id | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| name | string | The full name of the institution |
| suggestion_synonyms | string array | A list of common alternative names that *may* be appropriate for this institution |
| match_synonyms | string array | A list of common alternative names that are *probably* appropriate for this institutions|
| dttp_id | uuid | The ID used for this institution in DTTP |
| hesa_itt_code | string | The ID used for this institution in HESA |
| ukprn | string | The ID of this institution in the UK Register of Learning Providers |
| closed | optional string | If present, the year in which the institution closed or stopped awarding degrees |
| comment | optional string | Editor's comments on the entry (not necessarily of interest to external users of the data) |
