## Degrees

Degree types, subjects, and UK awarding institutions

### `DfE::ReferenceData::Degrees::TYPES`

```ruby
require 'dfe/reference_data/degrees'
```

Types of degrees (eg, "BEng", "MA", etc.)

Owner: Apply and Register teams.

Users: Apply and Register teams.

Source: https://github.com/DFE-Digital/apply-for-teacher-training-prototype/blob/main/app/data/degree-types.js

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `priority` | integer | ? |
| `name` | string | The long name of the degree type, eg "Foundation of Arts" |
| `abbreviation` | string | The abbreviated name, eg, "FdA" |
| `hint` | string | An optional hint to be shown alongside the name to users |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this type |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this type. An answer matching a match synonym can be safely matched to this type.|
| `qualification` | string | The ID of the qualification level of this degree (see [`DfE::ReferenceData::Qualifications::QUALIFICATIONS`](lists_qualifications.md)) |
| `dttp_id` | uuid | The ID used for this qualification in DQT |
| `hesa_itt_code` | string | The HESA [DEGTYPE](https://www.hesa.ac.uk/collection/c22053/e/degtype) code for this degree type |
| `comment` | string | Any extra commend or description for the field |

### `DfE::ReferenceData::Degrees::GENERIC_TYPES`

```ruby
require 'dfe/reference_data/degrees'
```

Generic "catch-all" degree types, for approximating degree types not listed in
`TYPES` (eg, "First Degree" to cover any first degree).

Owner: Apply and Register teams.

Users: Apply and Register teams.

Source: https://github.com/DFE-Digital/apply-for-teacher-training-prototype/blob/main/app/data/degree-types.js

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `priority` | integer | ? |
| `name` | string | The long name of the degree type, eg "Foundation of Arts" |
| `abbreviation` | string | The abbreviated name, eg, "FdA" |
| `hint` | string | An optional hint to be shown alongside the name to users |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this type |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this type. An answer matching a match synonym can be safely matched to this type.|
| `qualification` | string | The ID of the qualification level of this degree (see [`DfE::ReferenceData::Qualifications::QUALIFICATIONS`](lists_qualifications.md)) |
| `dttp_id` | uuid | The ID used for this qualification in DQT |
| `hesa_itt_code` | string | The HESA [DEGTYPE](https://www.hesa.ac.uk/collection/c22053/e/degtype) code for this degree type |

### `DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS`

```ruby
require 'dfe/reference_data/degrees'
```

The union of `TYPES` and `GENERIC_TYPES`.

Owner: Apply and Register teams.

Users: Apply and Register teams.

Source: Automatically derived from joining the `TYPES` and `GENERIC_TYPES` lists.

Quality: Automatically derived from the source data, so only as correct as they are.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `priority` | integer | ? |
| `name` | string | The long name of the degree type, eg "Foundation of Arts" |
| `abbreviation` | string | The abbreviated name, eg, "FdA" |
| `hint` | string | An optional hint to be shown alongside the name to users |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this type |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this type. An answer matching a match synonym can be safely matched to this type.|
| `qualification` | string | The ID of the qualification level of this degree (see [`DfE::ReferenceData::Qualifications::QUALIFICATIONS`](lists_qualifications.md)) |
| `dttp_id` | uuid | The ID used for this qualification in DQT |
| `hesa_itt_code` | string | The HESA [DEGTYPE](https://www.hesa.ac.uk/collection/c22053/e/degtype) code for this degree type |
| `generic` | optional boolean | If present and true, indicates this is a generic option for degree types not otherwise covered |

### `DfE::ReferenceData::Degrees::UNKNOWN_TYPES`

```ruby
require 'dfe/reference_data/degrees'
```

Degree types for degrees we do not hold any more specific information about.

Owner: Register team.

Users: Register team.

Source: Manual


Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `priority` | integer | ? |
| `name` | string | The long name of the degree type, eg "Foundation of Arts" |
| `abbreviation` | string | The abbreviated name, eg, "FdA" |
| `hint` | string | An optional hint to be shown alongside the name to users |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this type |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this type. An answer matching a match synonym can be safely matched to this type.|
| `qualification` | string | The ID of the qualification level of this degree (see [`DfE::ReferenceData::Qualifications::QUALIFICATIONS`](lists_qualifications.md)) |
| `dttp_id` | uuid | The ID used for this qualification in DQT |
| `hesa_itt_code` | string | The HESA [DEGTYPE](https://www.hesa.ac.uk/collection/c22053/e/degtype) code for this degree type |
| `unknown` | boolean | If true, indicates that this indicates a degree we do not have type information about |

### `DfE::ReferenceData::Degrees::GRADES`

Grades awarded when a degree is granted.

Owner: Apply team.

Users: Apply team.

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. |
| `name` | string | The long name of this grade, eg "First-class honours" |
| `short_name` | string | A short name of this grade, eg "First" |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this institution |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this institution. An answer matching a match synonym can be safely matched to this institution. |
| `group` | enumerated symbol | The kind of degree this grade applies to. `main_postgrad`, `other` or `main_undergrad` |
| `hesa_code` | string | The HESA [DEGCLSS](https://www.hesa.ac.uk/collection/c22053/e/degclss) code for this degree grade. |

### `DfE::ReferenceData::Degrees::SINGLE_SUBJECTS`

```ruby
require 'dfe/reference_data/degrees'
```

Degree subjects

Owner: Apply team.

Users: Apply team, Register team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training-prototype/blob/main/app/data/degree-subjects.js

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `name` | string | The long name of the subject, eg "accountancy" |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this subject |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this subject. An answer matching a match synonym can be safely matched to this subject.|
| `dttp_id` | uuid | The ID used for this subject in DTTP |
| `hecos_code` | string | The HESA [DEGSBJ](https://www.hesa.ac.uk/collection/c22053/e/degsbj) code for this degree subject (from [HECoS](https://www.hesa.ac.uk/support/documentation/hecos)) |

### `DfE::ReferenceData::Degrees::COMBINED_SUBJECTS`

```ruby
require 'dfe/reference_data/degrees'
```

Common combinations of degree subjects (Eg, subjects of the form "X with Y" or "X and Y")

Owner: Apply team.

Users: Apply team, Register team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training-prototype/blob/main/app/data/degree-subjects.js

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `name` | string | The long name of the subject, eg "accountancy" |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this subject |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this subject. An answer matching a match synonym can be safely matched to this subject.|
| `subject_ids` | UUID array | The `SINGLE_SUBJECTS` IDs of the individual subjects, in the same order as they appear in the `name` |

### `DfE::ReferenceData::Degrees::SUBJECTS`

```ruby
require 'dfe/reference_data/degrees'
```

The union of `SINGLE_SUBJECTS` and `COMBINED_SUBJECTS`.

Owner: Apply team.

Users: Apply team, Register team.

Source: Automatically derived from joining the `SINGLE_SUBJECTS` and `COMBINED_SUBJECTS` lists.

Quality: Automatically derived from the source data, so only as correct as they are.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `name` | string | The long name of the subject, eg "accountancy" |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this subject |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this subject. An answer matching a match synonym can be safely matched to this subject.|
| `dttp_id` | optional uuid | The ID used for this subject in DTTP (for single subjects) |
| `hecos_code` | optional string | The HESA [DEGSBJ](https://www.hesa.ac.uk/collection/c22053/e/degsbj) code for this degree subject (from [HECoS](https://www.hesa.ac.uk/support/documentation/hecos)) (for single subjects) |
| `subject_ids` | optional UUID array | The `SINGLE_SUBJECTS` IDs of the individual parts, in order (for combined subjects) |

### `DfE::ReferenceData::Degrees::GENERIC_SUBJECTS`

```ruby
require 'dfe/reference_data/degrees'
```

Generic subject options

Owner: Register team.

Users: Register team.

Source: Manual

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `name` | string | The name of the generic category of degree subject, for example "not applicable" |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this subject |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this subject. An answer matching a match synonym can be safely matched to this subject.|
| `hecos_code` | optional string | The HESA [DEGSBJ](https://www.hesa.ac.uk/collection/c22053/e/degsbj) code for this degree subject (from [HECoS](https://www.hesa.ac.uk/support/documentation/hecos)) (for single subjects) |
| `generic` | optional boolean | Always true, to indicate that this is a generic option |

### `DfE::ReferenceData::Degrees::SUBJECTS_INCLUDING_GENERICS`

```ruby
require 'dfe/reference_data/degrees'
```

The contents of `SUBJECTS`, plus `GENERIC_SUBJECTS`.

Owner: Register team.

Users: Register team.

Source: Automatically derived from joining the `SINGLE_SUBJECTS` and `COMBINED_SUBJECTS` lists.

Quality: Automatically derived from the source data, so only as correct as they are.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `name` | string | The long name of the subject, eg "accountancy" |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this subject |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this subject. An answer matching a match synonym can be safely matched to this subject.|
| `hecos_code` | optional string | The HESA [DEGSBJ](https://www.hesa.ac.uk/collection/c22053/e/degsbj) code for this degree subject (from [HECoS](https://www.hesa.ac.uk/support/documentation/hecos)) (for single subjects) |
| `generic` | optional boolean | If present and true, indicates that this is a generic option |

### `DfE::ReferenceData::Degrees::INSTITUTIONS`

```ruby
require 'dfe/reference_data/degrees'
```

Degree-awarding (or otherwise) institutions

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training-prototype/blob/main/app/data/degree-institutions.js

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `name` | string | The full name of the institution |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this institution |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this institution. An answer matching a match synonym can be safely matched to this institution.|
| `dttp_id` | uuid | The ID used for this institution in DTTP |
| `hesa_itt_code` | string | The HESA [DEGEST](https://www.hesa.ac.uk/collection/c22053/e/degest) code for this institution |
| `ukprn` | string | The ID of this institution in the UK Register of Learning Providers |
| `closed` | optional string | If present, the year in which the institution closed or stopped awarding degrees |
| `has_never_awarded_degrees` | optional boolean | If present and true, the institution has never awarded degrees, was included in an earlier version of this list by mistake, and is kept purely to support interpretation of legacy data |
| `comment` | optional string | Editor's comments on the entry (not necessarily of interest to external users of the data) |

### `DfE::ReferenceData::Degrees::GENERIC_INSTITUTIONS`

```ruby
require 'dfe/reference_data/degrees'
```

Generic options for where we do not have a record for a specific institution.

Owner: Apply team.

Users: Apply team.

Source: Original

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `name` | string | The full name of the institution |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this institution |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this institution. An answer matching a match synonym can be safely matched to this institution.|
| `comment` | optional string | Editor's comments on the entry (not necessarily of interest to external users of the data) |
| `generic` | boolean | Always true, as this record refers to a generic option such as "Other" rather than an actual institutions |

### `DfE::ReferenceData::Degrees::INSTITUTIONS_INCLUDING_GENERICS`

```ruby
require 'dfe/reference_data/degrees'
```

Degree-awarding (or otherwise) institutions, plus generic options for when no specific institution is in the list

Owner: Apply team.

Users: Apply team.

Source: The combination of `INSTITUTIONS` and `GENERIC_INSTITUTIONS`

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| `name` | string | The full name of the institution |
| `suggestion_synonyms` | string array | A list of common alternative names that *may* be appropriate for this institution |
| `match_synonyms` | string array | A list of common alternative names that are equivalent to this institution. An answer matching a match synonym can be safely matched to this institution.|
| `dttp_id` | uuid | The ID used for this institution in DTTP |
| `hesa_itt_code` | string | The ID used for this institution in HESA |
| `ukprn` | string | The ID of this institution in the UK Register of Learning Providers |
| `closed` | optional string | If present, the year in which the institution closed or stopped awarding degrees |
| `has_never_awarded_degrees` | optional boolean | If present and true, the institution has never awarded degrees, was included in an earlier version of this list by mistake, and is kept purely to support interpretation of legacy data |
| `comment` | optional string | Editor's comments on the entry (not necessarily of interest to external users of the data) |
| `generic` | optional boolean | If present and true, this record refers to a generic option such as "Other" rather than an actual institutions |
