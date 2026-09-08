## International Qualifications

### `DfE::ReferenceData::InternationalQualifications::INTERNATIONAL_QUALIFICATIONS`

```ruby
require 'dfe/reference_data/international_qualifications'
```

Table showing key non-UK qualifications and their equivalence to UK GCSE and degree-level qualifications, highlighting which qualifications are recognised as equivalent to GCSEs.

Each record is one qualification in one country (for example the Chinese
*gaokao*, or a French *licence*). It carries the UK ENIC comparability
information for that qualification — a comparability band, an equivalent
Regulated Qualifications Framework (RQF) level, the type of UK qualification it
is broadly equivalent to, and any free-text note — together with the set of
grades the qualification can be awarded and the subset of those grades that meet
the GCSE grade 4 / grade C equivalence bar.

Related qualifications are tied together by `qualification_group`: several
`qualification_name`s in the same country can share a group (for example every
degree-level award shares `:degree`), so the group can be used to look up a
family of qualifications without matching on the exact name.

`enic_band`, `rqf_level`, `enic_notes` and `equivalence_type` are constant for
all of a qualification's grades, so they are stored once per record as strings
and are omitted when the source has no value. `grades` and
`gcse_equivalent_grades` are string arrays; `gcse_equivalent_grades` is always a
subset of `grades` and is empty when no grade meets the bar or GCSE equivalence
does not apply (for example degree-level qualifications).

Owner: Data Insights Team

Source: Compiled manually from UK ENIC (Ecctis) comparability information. The
checked-in list is generated from
`lib/dfe/reference_data/raw_data/international_qualifications.csv` by
`DfE::ReferenceData::Generators::InternationalQualifications`; ids are assigned
once and kept stable by `international_qualifications_scripts/add_uuids.rb`.

| Field                    | Type            | Purpose                                                                                                                                                                                     |
|--------------------------|-----------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                     | UUID            | A unique identifier for this qualification record (one per country and qualification combination)                                                                                             |
| `country`                | string          | The country in which the qualification is awarded, lower case. `n/a` for country-agnostic qualifications such as the International Baccalaureate                                                |
| `country_code`           | string          | The lower-case ISO 3166-1 alpha-2 code for the country (for example `cn`), or `n/a` for country-agnostic qualifications                                                                        |
| `qualification_name`     | string          | The name of the qualification as awarded in that country, including any local-language title (for example `gaokao (national college entrance exam)`)                                           |
| `qualification_group`    | symbol          | A symbol grouping related qualifications together (for example `:degree`, `:gaokao`, `:high_school_diploma`). Several qualification names may share a group                                     |
| `enic_band`              | optional string | The UK ENIC comparability band (for example `band 6`). A range (`band 6–7`) or dated note (`band 5 (from 2026) / band 3 (pre-2026)`) is given where ENIC provides one. Absent when ENIC has not banded the qualification |
| `rqf_level`              | optional string | The comparable Regulated Qualifications Framework level, tokenised with underscores (for example `level_3`, `level_3–4`). Absent when no RQF level applies                                      |
| `enic_notes`             | optional string | A short free-text note from ENIC giving context for the comparison (for example `university entry`, `programme-dependent`). Absent when there is no note                                        |
| `equivalence_type`       | optional string | The type of UK qualification this one is broadly equivalent to (for example `a_level`, `degree`, `gcse`, `vocational_level_3`). Absent when no equivalence type has been assigned              |
| `grades`                 | string array    | Every grade that can be awarded for this qualification, in the source country's own terms (for example `good`, `pass`, `a1`, or numeric marks). Order is not significant                       |
| `gcse_equivalent_grades` | string array    | The subset of `grades` whose ENIC GCSE-equivalence assessment is "met". Empty when no grade meets the bar, or where GCSE equivalence does not apply (for example degree-level qualifications)  |

#### Example records

```ruby
'9450f8ea-cc70-4af1-92df-f848f03aa4ff' =>
{ country: 'china',
  country_code: 'cn',
  qualification_name: 'gaokao (national college entrance exam)',
  qualification_group: :gaokao,
  enic_band: 'band 6',
  rqf_level: 'level_3',
  enic_notes: 'university entry',
  equivalence_type: 'a_level',
  grades: ['good', 'top tier', 'borderline', 'high', 'pass', 'fail'],
  gcse_equivalent_grades: ['good', 'top tier', 'high', 'pass'] },

# A degree-level record: no ENIC note, and GCSE equivalence does not apply, so
# `gcse_equivalent_grades` is omitted (empty).
'10139d58-e2ab-418a-bfcc-f5057612cfa4' =>
{ country: 'china',
  country_code: 'cn',
  qualification_name: 'benke (bachelor\'s degree)',
  qualification_group: :degree,
  enic_band: 'band 10',
  rqf_level: 'level_6',
  equivalence_type: 'degree',
  grades: ['pass', 'youxiu (excellent)', 'good'] }
```

#### Regenerating the list

The `LIST` constant is built from
`lib/dfe/reference_data/raw_data/international_qualifications.csv` by
`DfE::ReferenceData::Generators::InternationalQualifications`. After editing the
CSV, run:

```sh
bundle exec rake generate_international_qualifications
```

This prints the regenerated `LIST` hash literal to standard output. It is not
written anywhere automatically — redirect it to a file of your choice and then
replace the `LIST = { … }.freeze` literal in
`lib/dfe/reference_data/international_qualifications.rb` with its contents:

```sh
bundle exec rake generate_international_qualifications > /tmp/international_qualifications_list.rb
```

The generator can also be called directly, for example against a smaller CSV:

```ruby
require 'dfe/reference_data'

DfE::ReferenceData::Generators::InternationalQualifications.generate
# => { "<uuid>" => { country: "china", ... }, ... }

DfE::ReferenceData::Generators::InternationalQualifications.generate_ruby_literal('path/to/other.csv')
# => "{\n  '<uuid>' =>\n  { country: 'china', ... } }.freeze"
```
