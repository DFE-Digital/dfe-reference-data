## Equality and Diversity

### `DfE::ReferenceData::EqualityAndDiversity::DISABILITIES_AND_HEALTH_CONDITIONS`

```ruby
require 'dfe/reference_data/equality_and_diversity'
```

Disabilities and health conditions

These items are intended to be referenced from a multiple-value field. The opt-out option is exclusive; if used, no other values can be used. The absence of any options in the multiple-value field is to be interpreted as the user having no disabilities or health conditions affecting daily life.

Owner: Register team.

Users: None.

Source: https://github.com/DFE-Digital/apply-for-teacher-training/blob/main/config/locales/candidate_interface/equality_and_diversity.yml and https://github.com/DFE-Digital/apply-for-teacher-training/blob/main/config/initializers/hesa_disabilities.rb

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field       | Type                                         | Purpose                                                                                                                                                        |
|-------------|----------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`        | UUID                                         | A unique identifier for this disability option                                                                                                                 |
| `name`      | string                                       | The long name of the disability option.                                                                                                                        |
| `hint`      | optional string                              | An optional hint to be shown alongside the name to users                                                                                                       |
| `generic`   | optional boolean                             | If present and true, indicates that this is a generic "other" option and, if selected, the user should be prompted for free text to specify any further detail |
| `opt_out`   | optional boolean                             | If present and true, indicates that the user has opted out of answering the question. This value is exclusive and cannot be combined with any other option     |
| `hesa_code` | map from string cycle ID to string HESA code | The HESA code for this disability option in the given ITT cycle                                                                                                |
