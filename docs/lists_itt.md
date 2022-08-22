## Initial Teacher Training (ITT)

### `DfE::ReferenceData::ITT::SUBJECTS`

```ruby
require 'dfe/reference_data/itt'
```

Initial teacher training subjects

Owner: None.

Users: None.

Source: https://github.com/DFE-Digital/register-trainee-teachers/blob/main/config/initializers/course_subjects.rb https://github.com/DFE-Digital/register-trainee-teachers/blob/main/app/lib/hesa/code_sets/course_subjects.rb https://github.com/DFE-Digital/register-trainee-teachers/blob/main/config/initializers/mappings/allocation_subject_to_specialism_mapping.rb

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. |
| `name` | string | The long name of the ITT subject. |
| `hecos_code` | optional string | The HECoS code for the subject, as per HESA field [SBJCA](https://www.hesa.ac.uk/collection/c22053/e/sbjca) |
| `start_date` | optional date | The date of the first day on which this subject is valid (`YYYYMMDD`); if missing, it is to be assumed to have been valid since the start of time. |
| `depreciation_date` | optional date | The date of the last day on which this subject is valid valid (`YYYYMMDD`); if missing, it is to be assumed to be valid until the end of time. |
| `allocation_subject` | UUID | The ID of the allocation subject that this subject is a specialism of (see `ALLOCATION_SUBJECTS` below) |

### `DfE::ReferenceData::ITT::ALLOCATION_SUBJECTS`


```ruby
require 'dfe/reference_data/itt'
```

Initial teacher training allocation subjects

Owner: None.

Users: None.

Source: https://github.com/DFE-Digital/register-trainee-teachers/blob/main/config/initializers/allocation_subjects.rb

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. |
| `name` | string | The long name of the allocation subject. |
