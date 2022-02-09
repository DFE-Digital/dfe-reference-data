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

```ruby
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

```ruby
require 'dfe_reference_data'
require 'dfe_reference_data/demo'

my_translations = TweakedReferenceList.new(
    ReferenceDataDemo::HELLO_WORLD,
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
require 'dfe_reference_data'
require 'dfe_reference_data/demo'

ReferenceDataDemo::HELLO_WORLD.all
# => [{:text=>"Hello World", :id=>"en"},
#     {:text=>"Bounjour monde", :id=>"fr"},
#     {:text=>"coi rodo", :id=>"jbo"}]

ReferenceDataDemo::FICTIONAL_GREETINGS.all
# => [{:text=>"OBEY! OBEY OR BE EXTERMINATED!", :id=>"dalek"}]

my_translations = JoinedReferenceList.new(
   [ReferenceDataDemo::HELLO_WORLD,
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

```shell
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

These lists are included for use in examples and for you to play around with some non-enormous data sets. Please don't use them in actual code.

```ruby
require 'dfe_reference_data/demo`
```

#### `ReferenceDataDemo::HELLO_WORLD`

Greeting the world, in a few languages.

| Field | Type | Purpose |
|---|---|---|
| `id` | string | IETF language code |
| `text` | string | "Hello World" in the language specified in the `id` field |

#### `ReferenceDataDemo::ELEMENTS`

The chemical elements, with related data.

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

Please see the Data Principles for general advice on storing data. (FIXME: Include link when they're published).

It's not hard to add new hardcoded reference lists by instantiating the `HardcodedReferenceList` class  - just see `lib/dfe_reference_data/demo.rb` for an example to copy.

You can also add your own subclasses of `ReferenceList`; see the source for `HardcodedReferenceList` in `lib/dfe_reference_data.rb` for an example of what methods you need to re-implement.

New reference lists should be included in this gem, in subdirectories of `lib` like `lib/demo` is, and declare a Ruby module to keep the namespace clean. This means that reference data is version controlled with this gem, and easily available without any external dependencies.

In order to keep the latency/effort of updates low, I propose the following workflow:

1. If you want to add a new reference list, please first talk to other people who might be interested or have the same data, in order to avoid duplication of effort and to co-ordinate sharing the list going forward.
2. Decide who the *owner* of this list will be - the team or teams responsible for keeping it up to date; the closest to the "source" of the data we have. Document this in a comment in the source code.
3. The owner of a list may update it at will, without needing pull-request review from anyone.
4. If you want to update/extend a list you don't "own", please first talk to the owner to co-ordinate your changes, then create a pull request for them to approve.
5. In the event of any change, make sure your commit message includes any deadlines for this data being published for production use, and tell the Data Infrastructure Team so they can schedule a new release of the gem in a suitable timeframe.

However, sometimes, storing lists in this gem will be impractical:

1. For data that are too large or numerous to bundle into *every* service, it might be worth storing it in a separate gem, included only into the services that need it. It will still be version-controlled and almost as easy to access, but there's now two dependencies to keep track of.

2. For data that need to be updated in something closer to real time, releasing a new version of a gem might be too unwieldy a mechanism to deploy changes. Please contact the Data Infrastructure Team to discuss this - we have some ideas for solutions to this, but don't want to run off implementing them until we have some concrete instances of the problem to look at. (Spoiler: Maybe some kind of central repository (BigQuery?) that can be updated in near-real-time, combined with a +ReferenceList+ subclass that manages a local cache of an external list in a service's PostgreSQL database for fast lookups?).

### What kind of data are suitable for treating as reference lists?

Reference list data must be:

1. Relatively slow-changing; not something that, if changed, people would expect everything to be immediately aware of the change. Think "The list of degree-awarding bodies" rather than "The status of my job application".
2. Not personal or sensitive data. Reference lists are made widely available to DfE services and, potentially, the general public. It should be information that's in the public domain, converted into a digital form for ease of reference.
3. Useful. Don't shove it in this gem just because you have it lying around (the "demo" lists aside, of course). Reference lists need to be something one or more services actually wants to use.
4. Canonical. If your reference list overlaps another reference list, talk to the owners of that list to see if you can find a better structure for both of your lists that avoids this duplication, so there is one canonical source for any given datum (rather than copies that can get out of synch). *YES*, this means that code using the lists might need to do a little more work to assemble things from multiple lists; but that's not a big deal compared to the work required to keep redundant data in synch (or the work required to fix things when it gets out of synch).
