## Initial Teacher Training (ITT)

### `DfE::ReferenceData::ITT::CYCLES`

```ruby
require 'dfe/reference_data/itt'
```

Initial teacher training recruitment cycles.

Owner: None.

Users: Data Insights team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training/blob/main/app/services/cycle_timetable.rb

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field               | Type            | Purpose                                                                                                                                            |
|---------------------|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                | integer            | The closing year of the recruitment phase of the cycle (eg, 2019 for the cycle where the application deadlines are in 2019)                                                                                                                                |
| `find_opens`        | datetime | The point at which Find Postgraduate Teacher Training starts showing courses in this cycle |
| `apply_opens`       | datetime | The point at which Apply For Teacher Training starts allowing applications to courses in this cycle |
| `apply_1_deadline`  | datetime | The point at which Apply For Teacher Training stops accepting apply 1 applications to courses in this cycle |
| `apply_2_deadline`  | datetime | The point at which Apply For Teacher Training stops accepting apply 2 applications to courses in this cycle |
| `provider_decision_deadline` | datetime | The point at which unresolved applications for courses in this cycle are rejected automatically, so all provider application decisions must have been made |
| `find_closes` | datetime | The point at which Find Postgraduate Teacher Training stops showing courses in this cycle |
| `non_working_days` | map from symbol to date range | Non-working-day periods within this cycle (the symbols being names such as `christmas` and `easter` |
