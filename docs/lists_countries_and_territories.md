## Countries and territories

- A mapping of ISO country/territory codes to country/territory names and nationalities.
- Postcode prefixes for the UK and Channel Islands grouped by country/territory.

### `DfE::ReferenceData::CountriesAndTerritories::COUNTRIES_AND_TERRITORIES`

```ruby
require 'dfe/reference_data/countries_and_territories'
```

A mapping of ISO country/territory codes to country/territory names.

Owner: Teaching Record team.

Users: Teaching Record System, Register Trainee Teachers, Apply for Teacher Training, Apply for Qualified Teacher Status in England team.

Source:
[UK Country Codes](https://www.gov.uk/government/publications/open-standards-for-government/country-codes)
[Geographical Countries](https://www.gov.uk/government/publications/geographical-names-and-information)

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field           | Type   | Purpose                                                                                                                        |
| --------------- | ------ | ------------------------------------------------------------------------------------------------------------------------------ |
| `id`            | string | The country or territory's ISO code.                                                                                           |
| `name`          | string | The human-readable name of the country or territory.                                                                           |
| `official_name` | string | The human-readable full ‘official name’. Used when the formal version of a country’s name is needed.                           |
| `citizen_names` | string | The human-readable citizen names. They are not the legal names for the citizen, they do not relate to the citizen’s ethnicity. |

### `DfE::ReferenceData::CountriesAndTerritories::UK_AND_CI_POSTCODE_PREFIX_COUNTRIES`

```ruby
require 'dfe/reference_data/countries_and_territories'
```

Postcode prefixes for the UK and Channel Islands grouped by country/territory.

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L47-L59

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

Last updated: 02/04/2025

This list is NOT [autocomplete compatible](autocomplete_compatability.md).

| Field      | Type         | Purpose                                    |
| ---------- | ------------ | ------------------------------------------ |
| `id`       | string       | The human readable country/territory name  |
| `prefixes` | string array | A list of postcode prefixes (letters only) |
