## Subjects

- A mapping of HECoS and legacy subject codes to Data Source, Subject Name, and current Subject specialism eligibility

### `DfE::ReferenceData::CountriesAndTerritories::SUBJECTS`

```ruby
require 'dfe/reference_data/subjects'
```

A mapping of HECoS and legacy codes to Data source, subject name, and current subject specialism eligibility.

Owner: Teaching Record team.

Users: TRS, Register for ITT, Apply for QTS team.

Source:
DQT
[HESA HECoS Codes](https://www.hesa.ac.uk/collection/c24053/)
[HESA Subject Specialisms](https://www.hesa.ac.uk/collection/c24053/e/SBJCA)

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field          | Type    | Purpose                                                                                            |
| -------------- | ------- | -------------------------------------------------------------------------------------------------- |
| `Subject_Code` | string  | The subject's code.                                                                                |
| `Code_Source`  | string  | The source of the code.                                                                            |
| `Name`         | string  | The human-readable name of the subject                                                             |
| `Active`       | boolean | A flag designating whether this code is currently accepted as a subject specialism by the TRS API. |

This list is currently in development and subject to changes.
