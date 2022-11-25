## Countries and territories

- A mapping of ISO country/territory codes to country/territory names.
- Postcode prefixes for the UK and Channel Islands grouped by country/territory.

### `DfE::ReferenceData::CountriesAndTerritories::COUNTRIES_AND_TERRITORIES`

```ruby
require 'dfe/reference_data/countries_and_territories'
```

A mapping of ISO country/territory codes to country/territory names.

Owner: Apply team.

Users: Apply team.

Source:
https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/config/initializers/countries_and_territories.rb
https://github.com/alphagov/govuk-country-and-territory-autocomplete/blob/5214c44/dist/location-autocomplete-canonical-list.json

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is [autocomplete compatible](autocomplete_compatability.md).

| Field  |  Type  |                       Purpose                       |
| ------ | ------ | --------------------------------------------------- |
| `id`   | string | The country or territory's ISO code                 |
| `name` | string | The human-readable name of the country or territory |

### `DfE::ReferenceData::CountriesAndTerritories::UK_AND_CI_POSTCODE_PREFIX_COUNTRIES`

```ruby
require 'dfe/reference_data/countries_and_territories'
```

Postcode prefixes for the UK and Channel Islands grouped by country/territory.

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L47-L59

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is NOT [autocomplete compatible](autocomplete_compatability.md).

|   Field    |     Type     |                  Purpose                   |
| ---------- | ------------ | ------------------------------------------ |
| `id`       | string       | The human readable country/territory name  |
| `prefixes` | string array | A list of postcode prefixes (letters only) |
