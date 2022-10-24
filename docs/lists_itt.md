## Initial Teacher Training (ITT)

### `DfE::ReferenceData::ITT::PRIMARY_SUBJECTS`, `DfE::ReferenceData::ITT::SECONDARY_SUBJECTS` and `DfE::ReferenceData::ITT::SUBJECTS`

```ruby
require 'dfe/reference_data/itt'
```

Initial teacher training subjects, referred to as "specialisms" in some contexts. `PRIMARY_SUBJECTS` are just the "Primary with ..." subjects for primary-level education, `SECONDARY_SUBJECTS` are the secondary-level subjects. `SUBJECTS` is the combined list of both.

Owner: None.

Users: None.

Source: https://github.com/DFE-Digital/register-trainee-teachers/blob/main/config/initializers/course_subjects.rb https://github.com/DFE-Digital/register-trainee-teachers/blob/main/app/lib/hesa/code_sets/course_subjects.rb https://github.com/DFE-Digital/register-trainee-teachers/blob/main/config/initializers/mappings/allocation_subject_to_specialism_mapping.rb

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field               | Type            | Purpose                                                                                                                                            |
|---------------------|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                | UUID            | A unique identifier.                                                                                                                               |
| `name`              | string          | The long name of the ITT subject.                                                                                                                  |
| `hecos_code`        | optional string | The HECoS code for the subject, as per HESA field [SBJCA](https://www.hesa.ac.uk/collection/c22053/e/sbjca)                                        |
| `start_date`        | optional date   | The date of the first day on which this subject is valid (`YYYYMMDD`); if missing, it is to be assumed to have been valid since the start of time. |
| `depreciation_date` | optional date   | The date of the last day on which this subject is valid valid (`YYYYMMDD`); if missing, it is to be assumed to be valid until the end of time.     |
| `category`          | UUID            | The ID of the category that this subject is a specialism of (see `CATEGORIES` below)                                                               |
| `register_category` | UUID            | The ID of the category that this subject is a specialism of, as per the current Register list (see `REGISTER_CATEGORIES` below)                    |
| `publish_category`  | string ID           | The ID of the category that this subject is a specialism of, as per the current Publish list (see `PUBLISH_CATEGORIES` below)                                                               |
| `incentive`         | string ID            | The ID of the incentive for this subject (see `INCENTIVES` below)                                                                                  |

### `DfE::ReferenceData::ITT::CATEGORIES`


```ruby
require 'dfe/reference_data/itt'
```

Initial teacher training subject categories, under a proposed new categorisation shared between Register and Find/Publish.

Owner: None.

Users: None.

Source: https://docs.google.com/spreadsheets/d/152PMbCj_bmnm8rmqVFLJAA2Hu8-9pkPjDmGyOi85768/edit#gid=2053127863&range=Q1

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. |
| `name` | string | The long name of the allocation subject. |


### `DfE::ReferenceData::ITT::REGISTER_CATEGORIES`


```ruby
require 'dfe/reference_data/itt'
```

Initial teacher training subject categories, as currently used by Register under the name "Allocation Subjects"

Owner: None.

Users: None.

Source: https://github.com/DFE-Digital/register-trainee-teachers/blob/main/config/initializers/allocation_subjects.rb

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier. |
| `name` | string | The long name of the allocation subject. |
| `publish_category` | optional string ID | Where a direct correspondence with a `PUBLISH_CATEGORY` entry exists with this record, the ID of that `PUBLISH_CATEGORY` record is in this field. |

### `DfE::ReferenceData::ITT::PUBLISH_CATEGORIES`


```ruby
require 'dfe/reference_data/itt'
```

Initial teacher training subject categories, as currently used by Publish.

Owner: None.

Users: None.

Source: https://api.publish-teacher-training-courses.service.gov.uk/api/public/v1/subjects (see also https://api.publish-teacher-training-courses.service.gov.uk/docs/api-reference.html#schema-subjectattributes)

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | string ID | A unique identifier. |
| `name` | string | The long name of the allocation subject. |
| `age_range` | symbol (`primary` or `secondary`) | The age range this category applies to |
| `tad_category` | optional string ID | Where a direct correspondence with a `TAD_CATEGORY` entry exists with this record, the ID of that `TAD_CATEGORY` record is in this field. |

### `DfE::ReferenceData::ITT::TAD_CATEGORIES`


```ruby
require 'dfe/reference_data/itt'
```

Initial teacher training subject categories, as currently used by TAD.

Owner: None.

Users: None.

Source: Spreadsheet provided by email to the author (Alaric)

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | string ID | A unique identifier. |
| `name` | string | The long name of the allocation subject. |
| `type` | symbol (`primary`, `secondary` or `modern_languages`) | The type of this TAD category |
| `phase` | symbol (`primary` or `secondary`) | The phase of this TAD category |
| `other_id` | string ID | An additional `ID` field found in the source spreadsheet, purpose unknown |
| `register_name` | string | The corresponding subject name as believed to be found in Register, according to the author of the spreadsheet |

### `DfE::ReferenceData::ITT::INCENTIVES`

```ruby
require 'dfe/reference_data/itt'
```

An incentive available for a particular ITT subject.

Owner: None.

Users: None.

Source: https://api.publish-teacher-training-courses.service.gov.uk/api/public/v1/subjects (see also https://api.publish-teacher-training-courses.service.gov.uk/docs/api-reference.html#schema-subjectattributes)

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | string ID | A unique identifier. |
| `bursary_amount` | numerical string | The available bursary (in pounds) |
| `scholarship` | numerical string | The available scholarship (in pounds) |