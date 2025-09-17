## Equality and Diversity

### `DfE::ReferenceData::EqualityAndDiversity::DISABILITIES_AND_HEALTH_CONDITIONS`

```ruby
require 'dfe/reference_data/equality_and_diversity'
```

Disabilities and health conditions

These items are intended to be referenced from a multiple-value field. The opt-out option is exclusive; if used, no other values can be used. The absence of any options in the multiple-value field is to be interpreted as the user having no disabilities or health conditions affecting daily life.

Owner: Apply and Register teams.

Users: None.

Source: https://github.com/DFE-Digital/apply-for-teacher-training/blob/main/config/locales/candidate_interface/equality_and_diversity.yml and https://github.com/DFE-Digital/apply-for-teacher-training/blob/main/config/initializers/hesa_disabilities.rb

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

Last updated: 19/1/23

| Field       | Type            | Purpose                                                                                                                                                                                                                                                                                                                                |
|-------------|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`        | UUID            | A unique identifier for this disability/health condition option                                                                                                                                                                                                                                                                        |
| `name`      | string          | The long name of the option.                                                                                                                                                                                                                                                                                                           |
| `hint`      | optional string | An optional hint to be shown alongside the name to users                                                                                                                                                                                                                                                                               |
| `kind`      | optional symbol | If present, indicates that this is a special kind of option. Valid values are :generic (a generic "other" option, and, if selected, the user should be prompted for free text to specify any further detail), :prefer_not_to_say (user opted out of answering the question) and :none (user has no disabilities or health conditions). |
| `hesa_code` | string          | The HESA code for this disability/health condition                                                                                                                                                                                                                                                       |
