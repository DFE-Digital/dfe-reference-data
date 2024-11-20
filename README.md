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

In future, bindings to other languages or static file formats can easily be
added.

## Usage

* [Ruby API](docs/ruby.md)
* [Static JSON generation](docs/json.md)
* [BigQuery](docs/bigquery.md)

## Available reference lists

This gem includes the following reference lists:

* [Common Aggregation Hierarchy](docs/lists_cah.md)
* [Countries and Territories](docs/lists_countries_and_territories.md)
* [Degrees](docs/lists_degrees.md)
* [Equality and Diversity](docs/lists_equality_and_diversity.md)
* [Initial Teacher Training](docs/lists_itt.md)
* [Qualifications](docs/lists_qualifications.md)

And for documentation purposes:

* [Demo data](docs/lists_demo.md)

## Versions

Whenever we make a change that might require review from users of the data - changing existing IDs, changing data structure, or changing the API for instance - we increase the major version number. Changes that add new records, or add new fields only need a minor version number change. Corrections to content other than IDs gets to be a patch release.

Rather than forcing everyone to change to pick up new data after a major version change, we keep the previous major version updated on a release branch.

Current versions:

| Version | Status     | git branch   |
|---------|------------|--------------|
| 2.*     | Current    | `main`       |

## Submitting changes

Please feel free to submit corrections, additions, suggestions, or entire new lists (but see the next section if you're adding a new list).

1. Come and talk in Slack (`#twd_reference_data`) to make sure we're all singing from the same sheet.
2. Put them in a pull request against the `main` branch
3. Ask for review from people from the teams listed as users and owners of that list in the docs.
4. If everyone's happy, merge the PR.
5. Update `CHANGELOG.md` (you can just commit that to the `main` branch) to list your PR as part of the next release.
6. Cherry-pick your branch (it's fine to squash the commits into one) onto any active previous release branches.

## Adding new reference lists

Please see the [Data Principles](https://technical-guidance.education.gov.uk/principles/data/) for general advice on storing data.

It's not hard to add new hardcoded reference lists by instantiating the `HardcodedReferenceList` class  - just see `lib/dfe/reference_data/demo.rb` for an example to copy, and take a look at the [schema specification](docs/schema.md) for how to add a schema.

You can also add your own subclasses of `ReferenceList`; see the source for `HardcodedReferenceList` in `lib/dfe/reference_data/hardcoded_refence_list.rb` for an example of what methods you need to re-implement.

New reference lists should be included in this gem, in subdirectories of `lib` like `lib/demo` is, and declare a Ruby module to keep the namespace clean. This means that reference data is version controlled with this gem, and easily available without any external dependencies.

In order to keep the latency/effort of updates low, I propose the following workflow:

1. If you want to add a new reference list, please first talk to other people who might be interested or have the same data, in order to avoid duplication of effort and to co-ordinate sharing the list going forward.
2. Decide who the *owner* of this list will be - the team or teams responsible for keeping it up to date; the closest to the "source" of the data we have. Document this, along with the structure of the reference list, following the pattern demonstrated above. If the data comes from an external source, document that fact. Document what you know about the quality of the list, and how likely it is to be updated when the source data changes.
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

It does not need to be:

1. Perfect. If it's the best we have, then it's great to have it in here so it can be shared and improvements can be shared. If it's not the best we have, then hopefully discussing putting it in here will make better data come out of the shadows and be put in instead. Just be careful to manage the expectations of the users of the list by documenting the quality of the data!

## Adding new output formats

Currently, the "master" data is in Ruby source code, with a Ruby API surrounding it.

There is a command line tool to generate JSON, and another to upload the lists into BigQuery tables. Github automation runs that on every new release.

However, this is easily extended. We can support other language APIs in a similar manner to the JSON generator, by writing a tool to take the master data and spitting out (for instance) C# source code literals, creating a new representation of the data that can be wrapped in a C# API library to provide an equivalent interface to the Ruby API. The release process can then be extended to produce appropriately versioned and distributed packages for other languages (please use the exact same version identifier as the Ruby gem and the tags in this repo, so the versions all "line up" trivially).

If the master data being in Ruby becomes a bottleneck (eg, because non-Ruby-confident people want to edit it), then the source data should be rewritten into a suitable format (perhaps the JSON version can become the master data), and then the Ruby and other language versions can be generated from that master data format. Users of the APIs or static products need never know that anything has changed.

# Release process

Until we sort out our RubyGems account, dependents will pull the gem from GitHub. The process is:

- Run `rake prepare_release[minor|major|patch|pre|<specific version number>]` (note those are literal square brackets, eg `prepare_release[1.0.0]`) to bump the version number in `lib/dfe/reference_data/version.rb`
- Check the `CHANGELOG.md`, follows the existing pattern
- Add any upgrade notes for breaking changes to the bottom of this file
- Run `rake tag_and_push_release` to prepare and tag a release commit and push it to github
- A release will be generated with a SQLite artifact at https://github.com/DFE-Digital/dfe-reference-data/releases

# History

* There is a [log of architectural decisions](docs/decisions).

* The [changelog](CHANGELOG.md) contains details of every change.

## Upgrade Notes

When moving to a new breaking release (the first part of the version number changes), you might need to make changes to your code that uses the lists. This section explains all.

### v2.x -> v3.x

#### Adding fields into the institutions hash

Two new fields have been added into the institutions hash: `institution_groups: { kind: :array, element_schema: :string } and postcode: { kind: :optional, schema: :string }`. These changes might not be backwards compatible and you may need to make updates to your code.

### v1.x -> v2.x

#### Zero-padded HESA codes

The `hesa_code` field for `DfE::ReferenceData::Degrees::GRADES`, and `hesa_itt_code` fields for `DfE::ReferenceData::Degrees::INSTITUTIONS`, `DfE::ReferenceData::Degrees::TYPES` and  `DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS`, are zero-padded to fixed widths in the canonical source data - so have been extended to match that in the reference data lists.

If your service is already zero-padding these fields to send them on to other systems that expect the canonical form, this change will hopefully just make that redundant. However, if you perform other processing using these fields you may need to make some changes to your code.

#### Change to constructor parameters

With the addition of inline documentation for lists, which has required adding a bunch of optional keyword parameters to the constructors of `HardcodedReferenceList`, `TweakedReferenceList`, and `JoinedReferenceList` (not to mention `ReferenceList` itself), the optional schema parameter has been made a named parameter for consistency with the others. If you create instances of those classes in your code with a schema parameter, you'll need to add `schema: ` in front of the schema to make Ruby accept the code.

### v0.x -> v1.x

#### Uniform synonym fields

All lists with synonyms in now use `match_synonyms` and `suggestion_synonyms` fields, instead of sometimes using a more general `synonyms` field. This makes them consistent in how they work - if the user enters a string in a record’s `match_synonyms` then we can assume the user wants that record. If the user enters a string in one or more records’ `suggestion_synonyms` then the user should be presented with all the matching records and asked to pick one (or confirm if it's right if only one matched).

Code looking for a `synonyms` field won’t find one any more, and should instead use the union of `match_synonyms` and `suggestion_synonyms` for use in autocompletes.

#### Degree subjects are now split into Single and Combined subjects

The `DfE::ReferenceData::Degrees::SUBJECTS` has slightly changed structure. It’s now made by joining `DfE::ReferenceData::Degrees::SINGLE_SUBJECTS` - which are the single degree subjects - and `DfE::ReferenceData::Degrees::COMBINED_SUBJECTS` which are a non-exhaustive list of common combined subjects.

`DfE::ReferenceData::Degrees::COMBINED_SUBJECTS` have a `subject_ids` field which is an array of the IDs of the component subjects (as found in `DfE::ReferenceData::Degrees::SINGLE_SUBJECTS`) and doesn’t have a `hecos_code` or `dttp_id`, unlike `DfE::ReferenceData::Degrees::SINGLE_SUBJECTS`.

This means that records from `DfE::ReferenceData::Degrees::SUBJECTS` may follow either structure, depending on whether they’re a combined subject or not. You can test for a `SUBJECTS` record being a combined subject by the presence of the `subject_ids` field.

Note that the `COMBINED_SUBJECTS` records are merely common combinations, not an exhaustive list - where services cannot accept arbitrary combinations of subjects from the `SINGLE_SUBJECTS` list and can only accept a single subject, they should use the `SUBJECTS` list in the hope that many common combinations will be covered by `COMBINED_SUBJECTS` and not lead to the user entering free text because their option wasn't listed.

Where a combined subject has been chosen, you may choose to split it into its component subjects; this can easily be done by consulting the `subject_ids` field in the combined subject record, the contents of which will always be `SINGLE_SUBJECTS` ids.

#### HESA -> HECOS in Degree Subjects

In the `DfE::ReferenceData::Degrees::SUBJECTS` list, the `hesa_itt_code` field has been renamed to `hecos_code`; the original name was misleading.

#### dqt -> dttp_id in Degree types

In the `DfE::ReferenceData::Degrees::TYPES` lists, the `dqt_id` field has been renamed to `dttp_id`; the original name was incorrect.
