## HESA domicile data

- HESA-specific overrides for the countries and territories list.
- HESA-specific overrides for ISO country/territory codes.
- HESA codes for UK and Channel Islands countries/territories.

### `DfE::ReferenceData::HESA::Domiciles::COUNTRIES_AND_TERRITORIES`

```ruby
require 'dfe/reference_data/hesa/domiciles'
```

HESA-specific overrides for the countries and territories list.  Delegates to `DfE::ReferenceData::CountriesAndTerritories::COUNTRIES_AND_TERRITORIES`.

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L29-L44

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is NOT [autocomplete compatible](autocomplete_compatability.md) as it
contains a `nil` value.

| Field  |    Type     |                       Purpose                       |
| ------ | ----------- | --------------------------------------------------- |
| `id`   | string      | The country or territory's ISO code                 |
| `name` | string/null | The human-readable name of the country or territory |

### `DfE::ReferenceData::HESA::Domiciles::SPECIAL_ISO_CODES`

```ruby
require 'dfe/reference_data/hesa/domiciles'
```

HESA-specific overrides for ISO country/territory codes.

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L3-L12

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is NOT [autocomplete compatible](autocomplete_compatability.md).

| Field  |    Type     |          Purpose          |
| ------ | ----------- | ------------------------- |
| `id`   | string/null | The normal ISO code       |
| `code` | string      | The special HESA ISO code |

### `DfE::ReferenceData::HESA::Domiciles::CODES_FOR_UK_AND_CI`

```ruby
require 'dfe/reference_data/hesa/domiciles'
```

HESA codes for UK and Channel Islands countries/territories.

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L14-L27

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

This list is NOT [autocomplete compatible](autocomplete_compatability.md).

| Field  |    Type     |                Purpose                |
| ------ | ----------- | ------------------------------------- |
| `id`   | string/null | Human-readable country/territory name |
| `code` | string      | HESA code                             |
