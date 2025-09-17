## Bank Holidays

Bank Holidays in England and Wales (taken from GOV.UK)

```ruby
require 'dfe/reference_data/bank_holidays`
```

### `DfE::ReferenceData::BankHolidays::BANK_HOLIDAYS`

Bank Holidays.

Owner: None.

Users: DFE-Digital/find-covid-19-finance-for-schools-and-providers,DFE-Digital/cross-service-dataform,DFE-Digital/bat-dataform,DFE-Digital/teacher-misconduct-prototype, DFE-Digital/git-dataform.

Source: https://www.gov.uk/bank-holidays

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

Last update: 28/2/2025

| Field | Type | Purpose |
|---|---|---|
| `id` | UUID | A unique identifier |
| `title` | string | The title of the bank holiday |
| `date` | datetime | The date of the bank holiday |
| `notes` | optional string | Notes about the bank holiday |
