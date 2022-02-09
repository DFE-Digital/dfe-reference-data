# DfE Reference Data

## Purpose

This gem exists to provide a uniform interface to high-quality reference data lists.

It contains both generic code for handling reference data, and actual hardcoded
reference data sets, thereby allowing the reference data to be used without
additional dependencies and for simple version control of the reference data:
just pull a new release of this gem to get the latest.

Access to the data is provided via native Ruby, or generating static mappings in
JSON format that can be included directly into frontend code. A command line
tool is provided to enable the latter to be done as part of a build process.

## Usage

### Data access

```
require 'dfe_reference_data'
require 'dfe_reference_data/demo'

## Getting all the data as an array

ReferenceDataDemo::HELLO_WORLD.all
# => [{:text=>"Hello World", :id=>"en"},
#     {:text=>"Bounjour monde", :id=>"fr"},
#     {:text=>"coi rodo", :id=>"jbo"}]

## Getting all the data as a hash on the "id" field

ReferenceDataDemo::HELLO_WORLD.all_as_hash
# => {"en"=>{:text=>"Hello World", :id=>"en"},
#     "fr"=>{:text=>"Bounjour monde", :id=>"fr"},
#     "jbo"=>{:text=>"coi rodo", :id=>"jbo"}}

## Getting a particular record by its id

ReferenceDataDemo::HELLO_WORLD.one("en")
# => {:text=>"Hello World", :id=>"en"}

## Finding all records matching a filter

ReferenceDataDemo::HELLO_WORLD.some({:id => "fr"})
# => [{:text=>"Bounjour monde", :id=>"fr"}]

ReferenceDataDemo::ELEMENTS.some({:name => 'Helium'})
# =>
# [{:atomic_number=>2,
#   :name=>"Helium",
#   :atomic_mass=>4.002,
#   :number_of_neutrons=>2,
#   :number_of_protons=>2,
# ...

## Finding all records matching a filter, and grouping them into a hash according to their values for a chosen field

ReferenceDataDemo::ELEMENTS.some_by_field(:phase,{:nonmetal => true})
# =>
# {"gas"=>
#   [{:atomic_number=>1,
#     :name=>"Hydrogen",
# ...
#    {:atomic_number=>2,
#     :name=>"Helium",
# ...
# "solid"=>
#   [{:atomic_number=>6,
#     :name=>"Carbon",
# ...
# "liq"=>
#   [{:atomic_number=>35,
#     :name=>"Bromine",
# ...

```

### Tweaking the data

Sometimes you may need to apply some local modifications to a reference list. Here's how this is done:

```
require 'dfe_reference_data'
require 'dfe_reference_data/demo'

my_translations = TweakedReferenceList.new(
    ReferenceDataDemo::HELLO_WORLD,
    {
    "en" => {:text => "Hello, World!"}, # Overwrite fields in a record
    "fr" => {:alternative_text => "Allo"}, # Add fields to a record
    "jbo" => nil, # Delete a record
    "en-scouse" => {:text => "Ello yous"} # Add a new record
    })

my_translations.all
#=> [{:text=>"Hello, World!", :id=>"en"},
#    {:text=>"Bounjour monde", :id=>"fr", :alternative_text=>"Allo"},
#    {:text=>"Ello yous", :id=>"en-scouse"}]
```

### Merging lists

Some reference lists will be presented in sections, as different "subsets" will be needed in different applications. In this case, they can be assembled together into a single list for your application, like so:

```
require 'dfe_reference_data'
require 'dfe_reference_data/demo'

my_translations = JoinedReferenceList.new([ReferenceDataDemo::HELLO_WORLD,
    ReferenceDataDemo::FICTIONAL_GREETINGS])

my_translations.all
# =>
# [{:text=>"Hello World", :id=>"en"},
#  {:text=>"Bounjour monde", :id=>"fr"},
#  {:text=>"coi rodo", :id=>"jbo"},
#  {:text=>"OBEY! OBEY OR BE EXTERMINATED!", :id=>"dalek"}]
```

### Generating static JSON

If you'd like to serve static JSON files for your frontend code to use, that's easily done using the `export_reference_json` command line tool. It accepts a list of files to `require` to obtain data sets (`dfe_reference_data` is loaded automatically), and the final command line argument is a Ruby expression to evaluate; its result is converted to JSON and written to standard output. For example:

```
$ export_reference_json 'dfe_reference_data/demo' 'ReferenceDataDemo::HELLO_WORLD.all_as_hash' | jq .
{
  "en": {
    "text": "Hello World",
    "id": "en"
  },
  "fr": {
    "text": "Bounjour monde",
    "id": "fr"
  },
  "jbo": {
    "text": "coi rodo",
    "id": "jbo"
  }
}
```

If you want to do a lot of complicated local customisation (joining lists together, tweaking them, that sort of thing) you're probably better off writing a short Ruby script of your own to do it, rather than trying to cram all that into a command line. See the source in `bin/export_reference_json` to see how, it's pretty simple.

## Available reference lists

This gem includes the following reference lists:

### Demos

```
require 'dfe_reference_data/demo`
```

#### `HELLO_WORLD`

| Field | Type | Purpose |
|---|---|---|
| `id` | string | IETF language code |
| `text` | string | "Hello World" in the language specified in the `id` field |

#### `ELEMENTS`

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

## Adding new reference lists
