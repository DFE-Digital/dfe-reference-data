## Bank Holidays

Bank Holidays in England and Wales (taken from GOV.UK)

```ruby
require 'dfe/reference_data/bank_holidays`
```

### `DfE::ReferenceData::BankHolidays::BANK_HOLIDAYS`

Bank Holidays.

Owner: None.

Users: Data Insights (cross teacher services), Becoming a Teacher, Teacher Misconduct and Get into Teaching teams.

Source: https://www.gov.uk/bank-holidays

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier |
| `title` | string | The title of the bank holiday |
| `date` | datetime | The date of the bank holiday |
| `notes` | optional string | Notes about the bank holiday |
