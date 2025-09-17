## Demos

These lists are included for use in examples and for you to play around with some non-enormous data sets. Please don't use them in actual code.

```ruby
require 'dfe/reference_data/demo`
```

### `DfE::ReferenceData::Demo::HELLO_WORLD`

Greeting the world, in a few languages.

Owner: None.

Users: None.

Quality: Unmaintained, useless, demo data.

| Field | Type | Purpose |
|---|---|---|
| `id` | string | IETF language code |
| `text` | string | "Hello World" in the language specified in the `id` field |

### `DfE::ReferenceData::Demo::FICTIONAL_GREETINGS`

Greeting the world, in fictional cultures.

Owner: None.

Users: None.

Quality: Unmaintained, useless, demo data.

| Field | Type | Purpose |
|---|---|---|
| `id` | string | Name of culture |
| `text` | string | Traditional greeting in the culture named in the `id` field |

### `DfE::ReferenceData::Demo::ELEMENTS`

The chemical elements, with related data. Probably inaccurate. Units unknown.

Owner: None.

Users: None.

Source: Public domain CSV file I had kicking around from a previous project.

Quality: Unmaintained, source data was of questionable accuracy and quality.

Last updated: 15/12/2022

| Field | Type | Purpose |
|---|---|---|
| `id` | string | Chemical symbol |
| `atomic_number` | integer | Atomic number |
| `name` | string | Element's name |
| `atomic_mass` | float | Standard atomic mass |
| `number_of_neutrons` | integer | Neutron count (in most stable isotope) |
| `number_of_protons` | integer | Proton count |
| `number_of_electrons` | integer | Electron count (in neutral state) |
| `period` | integer | Period (of the periodic table) |
| `group` | integer | Group (of the periodic table) |
| `phase` | string (`gas`,`solid`,`liq`, or `artificial`) | Phase (at standard temperature and pressure) |
| `radioactive` | boolean | Are there no stable isotopes? |
| `natural` | boolean | Is it found in nature? |
| `metal` | boolean | Is it a metal? |
| `nonmetal` | boolean | Is it a nonmetal? |
| `metalloid`| boolean | Is it a metalloid? |
| `type` | string | Type of element |
| `atomic_radius` | float | Atomic radius |
| `electronegativity` | float | Electronegativity |
| `first_ionization` | float | First ionization energy |
| `density` | float | Density (at standard temperature and pressure) |
| `melting_point` | float | Melting point (at standard pressure) |
| `boiling_point` | float | Boiling point (at standard pressure) |
| `number_of_isotopes` | integer | Number of known isotopes |
| `discoverer` | string | Name of discoverer |
| `year` | integer | Year of discovery |
| `specific_heat` | float | Specific heat |
| `number_of_shells` | integer | Number of electron shells |
| `valence` | integer | Valency |
