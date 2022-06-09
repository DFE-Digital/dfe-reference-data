# DfE Reference Data

## Purpose

This gem exists to provide a uniform interface to high-quality reference data lists.

It contains both generic code for handling reference data, and actual hardcoded
reference data sets, thereby allowing the reference data to be used without
additional dependencies and for simple version control of the reference data:
just pull a new release of this gem to get the latest.

However, the hardcoded reference data hashes are hidden behind an abstract
interface rather than just exposed as hash constants, so that the implementation
may change if required in future - for instance, for data that needs to change
more rapidly than a PR -> release new version -> update dependencies cycle
permits, we might switch to referencing a database, without needing to change
the code that uses the interface.

Access to the data is provided via native Ruby, or generating static mappings in
JSON format that can be included directly into frontend code. A command line
tool is provided to enable the latter to be done as part of a build process.

## Usage

### Data access

```ruby
require 'dfe/reference_data'
require 'dfe/reference_data/demo'

## Getting all the data as an array

DfE::ReferenceData::Demo::HELLO_WORLD.all
# => [{:text=>"Hello World", :id=>"en"},
#     {:text=>"Bounjour monde", :id=>"fr"},
#     {:text=>"coi rodo", :id=>"jbo"}]

## Getting all the data as a hash on the "id" field

DfE::ReferenceData::Demo::HELLO_WORLD.all_as_hash
# => {"en"=>{:text=>"Hello World", :id=>"en"},
#     "fr"=>{:text=>"Bounjour monde", :id=>"fr"},
#     "jbo"=>{:text=>"coi rodo", :id=>"jbo"}}

## Getting a particular record by its id

DfE::ReferenceData::Demo::HELLO_WORLD.one("en")
# => {:text=>"Hello World", :id=>"en"}

## Finding all records matching a filter

DfE::ReferenceData::Demo::HELLO_WORLD.some({:id => "fr"})
# => [{:text=>"Bounjour monde", :id=>"fr"}]

DfE::ReferenceData::Demo::ELEMENTS.some({:name => 'Helium'})
# =>
# [{:atomic_number=>2,
#   :name=>"Helium",
#   :atomic_mass=>4.002,
#   :number_of_neutrons=>2,
#   :number_of_protons=>2,
# ...

## Finding all records matching a filter, and grouping them into a hash according to their values for a chosen field

DfE::ReferenceData::Demo::ELEMENTS.some_by_field(:phase,{:nonmetal => true})
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

```ruby
require 'dfe/reference_data'
require 'dfe/reference_data/demo'

my_translations = DfE::ReferenceData::TweakedReferenceList.new(
    DfE::ReferenceData::Demo::HELLO_WORLD,
    {
    "en" => {:text => "Hello, World!"}, # Overwrite fields in a record
    "fr" => {:alternative_text => "Allo"}, # Add fields to a record
    "jbo" => nil, # Delete a record; nobody speaks Lojban anyway
    "en-scouse" => {:text => "Ello yous"} # Add a new record
    })

my_translations.all
#=> [{:text=>"Hello, World!", :id=>"en"},
#    {:text=>"Bounjour monde", :id=>"fr", :alternative_text=>"Allo"},
#    {:text=>"Ello yous", :id=>"en-scouse"}]
```

### Merging lists

Some reference lists will be presented in sections, as different "subsets" will be needed in different applications. In this case, they can be assembled together into a single list for your application, like so:

```ruby
require 'dfe/reference_data'
require 'dfe/reference_data/demo'

DfE::ReferenceData::Demo::HELLO_WORLD.all
# => [{:text=>"Hello World", :id=>"en"},
#     {:text=>"Bounjour monde", :id=>"fr"},
#     {:text=>"coi rodo", :id=>"jbo"}]

DfE::ReferenceData::Demo::FICTIONAL_GREETINGS.all
# => [{:text=>"OBEY! OBEY OR BE EXTERMINATED!", :id=>"dalek"}]

my_translations = DfE::ReferenceData::JoinedReferenceList.new(
   [DfE::ReferenceData::Demo::HELLO_WORLD,
    DfE::ReferenceData::Demo::FICTIONAL_GREETINGS])

my_translations.all
# =>
# [{:text=>"Hello World", :id=>"en"},
#  {:text=>"Bounjour monde", :id=>"fr"},
#  {:text=>"coi rodo", :id=>"jbo"},
#  {:text=>"OBEY! OBEY OR BE EXTERMINATED!", :id=>"dalek"}]
```

### Generating static JSON

If you'd like to serve static JSON files for your frontend code to use, that's easily done using the `export_reference_json` command line tool. The argument is a Ruby expression to evaluate; its result is converted to JSON and written to standard output. The `Demo` dataset is included by default. For example:

```shell
$ bundle exec export_reference_json 'DfE::ReferenceData::Demo::HELLO_WORLD.all_as_hash' | jq .
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

These lists are included for use in examples and for you to play around with some non-enormous data sets. Please don't use them in actual code.

```ruby
require 'dfe/reference_data/demo`
```

#### `DfE::ReferenceData::Demo::HELLO_WORLD`

Greeting the world, in a few languages.

Owner: None.

Users: None.

| Field | Type | Purpose |
|---|---|---|
| `id` | string | IETF language code |
| `text` | string | "Hello World" in the language specified in the `id` field |

#### `DfE::ReferenceData::Demo::FICTIONAL_GREETINGS`

Greeting the world, in fictional cultures.

Owner: None.

Users: None.

| Field | Type | Purpose |
|---|---|---|
| `id` | string | Name of culture |
| `text` | string | Traditional greeting in the culture named in the `id` field |

#### `DfE::ReferenceData::Demo::ELEMENTS`

The chemical elements, with related data. Probably inaccurate. Units unknown.

Owner: None.

Users: None.

Source: Public domain CSV file I had kicking around from a previous project.

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

### Degrees

#### `DfE::ReferenceData::Degrees::TYPES`

```ruby
require 'dfe/reference_data/degrees/types'
```

Types of degrees (eg, "BEng", "MA", etc.)

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training-prototype/blob/main/app/data/degree-types.js

| Field | Type | Purpose |
|---|---|---|
| id | UUID | A unique identifier. The same as `dqt_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| priority | integer | ? |
| name | string | The long name of the degree type, eg "Foundation of Arts" |
| abbreviation | string | The abbreviated name, eg, "FdA" |
| synonyms | string array | A list of common alternative names |
| level | string | The qualification level of this degree |
| dqt_id | uuid | The ID used for this qualification in DQT |
| hesa_itt_code | string | The ID used for this qualification in HESA |

#### `DfE::ReferenceData::Degrees::SUBJECTS`

```ruby
require 'dfe/reference_data/degrees/subjects'
```

Degree subjects

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training-prototype/blob/main/app/data/degree-subjects.js

| Field | Type | Purpose |
|---|---|---|
| id | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| name | string | The long name of the subject, eg "accountancy" |
| synonyms | string array | A list of common alternative names |
| dttp_id | uuid | The ID used for this subject in DTTP |
| hesa_itt_code | string | The ID used for this subject in HESA |

#### `DfE::ReferenceData::Degrees::INSTITUTIONS`

```ruby
require 'dfe/reference_data/degrees/institutions'
```

Degree-awarding (or otherwise) institutions

Owner: Apply team.

Users: Apply team.

Source: https://github.com/DFE-Digital/apply-for-teacher-training-prototype/blob/main/app/data/degree-institutions.js

| Field | Type | Purpose |
|---|---|---|
| id | UUID | A unique identifier. The same as `dttp_id` if that field is non-`nil`, otherwise a new UUID was minted at import time. |
| name | string | The full name of the institution |
| suggestion_synonyms | string array | A list of common alternative names |
| match_synonyms | string array | A list of common alternative names (?? what's the distinction ??) |
| dttp_id | uuid | The ID used for this institution in DTTP |
| hesa_itt_code | string | The ID used for this institution in HESA |
| ukprn | string | The ID of this institution in the UK Register of Learning Providers |


## Adding new reference lists

Please see the [Data Principles](https://technical-guidance.education.gov.uk/principles/data/) for general advice on storing data.

It's not hard to add new hardcoded reference lists by instantiating the `HardcodedReferenceList` class  - just see `lib/dfe/reference_data/demo.rb` for an example to copy.

You can also add your own subclasses of `ReferenceList`; see the source for `HardcodedReferenceList` in `lib/dfe/reference_data/hardcoded_refence_list.rb` for an example of what methods you need to re-implement.

New reference lists should be included in this gem, in subdirectories of `lib` like `lib/demo` is, and declare a Ruby module to keep the namespace clean. This means that reference data is version controlled with this gem, and easily available without any external dependencies.

In order to keep the latency/effort of updates low, I propose the following workflow:

1. If you want to add a new reference list, please first talk to other people who might be interested or have the same data, in order to avoid duplication of effort and to co-ordinate sharing the list going forward.
2. Decide who the *owner* of this list will be - the team or teams responsible for keeping it up to date; the closest to the "source" of the data we have. Document this, along with the structure of the reference list, in this file as shown above. If the data comes from an external source, document that too.
3. The owner of a list may update it at will, without needing pull-request review from anyone.
4. If you want to update/extend a list you don't "own", please first talk to the owner to co-ordinate your changes, then create a pull request for them to approve.
5. In the event of any change, make sure your commit message includes any deadlines for this data being published for production use, and tell the Data Infrastructure Team so they can schedule a new release of the gem in a suitable timeframe.

However, sometimes, storing lists in this gem will be impractical:

1. For data that are too large or numerous to bundle into *every* service, it might be worth storing it in a separate gem, included only into the services that need it. It will still be version-controlled and almost as easy to access, but there's now two dependencies to keep track of.

2. For data that need to be updated in something closer to real time, releasing a new version of a gem might be too unwieldy a mechanism to deploy changes. Please contact the Data Infrastructure Team to discuss this - we have some ideas for solutions to this, but don't want to run off implementing them until we have some concrete instances of the problem to look at. (Spoiler: Maybe some kind of central repository (BigQuery?) that can be updated in near-real-time, combined with a `ReferenceList` subclass that manages a local cache of an external list in a service's PostgreSQL database for fast lookups?).

### What kind of data are suitable for treating as reference lists?

Reference list data must be:

1. Relatively slow-changing; not something that, if changed, people would expect everything to be immediately aware of the change. Think "The list of degree-awarding bodies" rather than "The status of my job application".
2. Not personal or sensitive data. Reference lists are made widely available to DfE services and, potentially, the general public. It should be information that's in the public domain, converted into a digital form for ease of reference.
3. Useful. Don't shove it in this gem just because you have it lying around (the "demo" lists aside, of course). Reference lists need to be something one or more services actually wants to use.
4. Canonical. If your reference list overlaps another reference list, talk to the owners of that list to see if you can find a better structure for both of your lists that avoids this duplication, so there is one canonical source for any given datum (rather than copies that can get out of synch). *YES*, this means that code using the lists might need to do a little more work to assemble things from multiple lists; but that's not a big deal compared to the work required to keep redundant data in synch (or the work required to fix things when it gets out of synch).

# Release process

Until we sort out our RubyGems account, dependents will pull the gem from GitHub. The process is:

- Bump the version number in `lib/dfe/reference_data/version.rb`
- Tag a new version
- Push to GitHub

The recommended way to accomplish the last two steps is to use https://github.com/svenfuchs/gem-release#gem-tag.

```bash
gem tag -p # -p will push to GitHub
```

