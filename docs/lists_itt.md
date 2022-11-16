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
| `category`          | optional UUID            | The ID of the category that this subject is a specialism of (see `CATEGORIES` below)                                                               |
| `register_category` | optional UUID            | The ID of the category that this subject is a specialism of, as per the current Register list (see `REGISTER_CATEGORIES` below)                    |
| `publish_category`  | optional string ID           | The ID of the category that this subject is a specialism of, as per the current Publish list (see `PUBLISH_CATEGORIES` below)                                                               |
| `incentive`         | optional map from string cycle ID to string incentive ID            | The ID of the incentive for this subject (see `INCENTIVES` below) in the given ITT cycle (see CYCLES below)                                                                                 |

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

Initial teacher training subject categories, as currently used by TAD. The fields other than `id`, `name` and `publish_category` are of unknown utility, should probably be ignored, and unless we find out more about their original intent and find a use for them, they should probably be trimmed.

TODO: November 2023 or beyond: Review whether the `type`, `phase`, `other_id`
and `register_name` fields have turned out to be useful for anything, and remove
them if not, then remove this note.

Owner: None.

Users: None.

Source: Spreadsheet provided by email to the author (Alaric)

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | string ID | A unique identifier. |
| `name` | string | The name of the category. |
| `publish_category` | UUID | The ID of the corresponding `PUBLISH_CATEGORIES` entry, where one exists
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

### `DfE::ReferenceData::ITT::CYCLES`

Initial teacher training recruitment cycles.

Owner: None.

Users: Data Insights team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training/blob/main/app/services/cycle_timetable.rb

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field               | Type            | Purpose                                                                                                                                            |
|---------------------|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                | string            | A unique ID of the form `YYYY-YYYY`, identifying the opening and closing years of the recruitment phase of the cycle (eg, `2018-2019` for the cycle where the application deadlines are in 2019)                                                                                                                                |
| `find_opens`        | datetime | The point at which Find Postgraduate Teacher Training starts showing courses in this cycle |
| `apply_opens`       | datetime | The point at which Apply For Teacher Training starts allowing applications to courses in this cycle |
| `apply_1_deadline`  | datetime | The point at which Apply For Teacher Training stops accepting apply 1 applications to courses in this cycle |
| `apply_2_deadline`  | datetime | The point at which Apply For Teacher Training stops accepting apply 2 applications to courses in this cycle |
| `provider_decision_deadline` | datetime | The point at which unresolved applications for courses in this cycle are rejected automatically, so all provider application decisions must have been made |
| `find_closes` | datetime | The point at which Find Postgraduate Teacher Training stops showing courses in this cycle |
| `non_working_days` | map from symbol to date range | Non-working-day periods within this cycle (the symbols being names such as `christmas` and `easter` |
