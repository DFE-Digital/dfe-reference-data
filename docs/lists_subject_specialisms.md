## Subjects

- A mapping of HECoS and legacy subject codes to Data Source, Subject Name, and current Subject specialism eligibility

### `DfE::ReferenceData::SubjectSpecialisms::SUBJECT_SPECIALISMS`

```ruby
require 'dfe/reference_data/subjects_specialisms'
```

A mapping of HECoS and legacy codes to Data source, subject name, and current subject specialism eligibility.

Owner: Teaching Record team.

Users: TRS, Register for Teacher Training, Apply for Qualified Teacher Status in England team.

Source:
DQT
[HESA HECoS Codes](https://www.hesa.ac.uk/collection/c24053/)
[HESA Subject Specialisms](https://www.hesa.ac.uk/collection/c24053/e/SBJCA)

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

Last updated: 29/05/25

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field                | Type      | Purpose                                                                             |
| -------------------- | --------- | ----------------------------------------------------------------------------------- |
| `id`                 | string    | The subject's code.                                                                 |
| `code_source`        | string    | The source of the code.                                                             |
| `name`               | string    | The human-readable name of the subject.                                             |
| `subject_specialism` | boolean   | A flag designating whether this code is currently accepted as a subject specialism. |
| `start_date`         | timestamp | The start date of this subject code's validity.                                     |
| `end_date`           | timestamp | The start date of this subject code's validity.                                     |

This list is currently in development and subject to changes.
