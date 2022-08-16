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

DfE::ReferenceData::Demo::HELLO_WORLD.all.as_hash
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

The tweaked list will inherit the [schema](schema.rb) of the original list by default, but if you add new fields you should declare the new schema to make that clear, with new fields added to only some of the records being marked as optional:

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
    },
    {
    id: :string,
    text: :string,
    alternative_text: {kind: :optional, schema: :string}
    })
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

Similarly to tweaked reference lists, the schema of the resulting list will be the schema of the first original list by default; if the additional lists add any fields they should be declared as optional fields in the new schema, and if any fields from the first list aren't present in all the records in all the others, they need to be re-declared as optional too. This is unnecessary in this case, but here's an example of what it would look like nonetheless:

```ruby
my_translations = DfE::ReferenceData::JoinedReferenceList.new(
   [DfE::ReferenceData::Demo::HELLO_WORLD,
    DfE::ReferenceData::Demo::FICTIONAL_GREETINGS],
    {
    id: :string,
    text: :string
    })
```
