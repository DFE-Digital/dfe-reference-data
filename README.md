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

## Available reference lists

This gem includes the following reference lists:

* [Qualifications](docs/lists_qualifications.md)
* [Degrees](docs/lists_degrees.md)
* [Demo data](docs/lists_demo.md)

## Adding new reference lists

Please see the [Data Principles](https://technical-guidance.education.gov.uk/principles/data/) for general advice on storing data.

It's not hard to add new hardcoded reference lists by instantiating the `HardcodedReferenceList` class  - just see `lib/dfe/reference_data/demo.rb` for an example to copy.

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

Currently, the "master" data is in Ruby source code, with a Ruby API surrounding it, and a command line tool to generate JSON.

However, this is easily extended. We can support other language APIs in a similar manner to the JSON generator, by writing a tool to take the master data and spitting out (for instance) C# source code literals, creating a new representation of the data that can be wrapped in a C# API library to provide an equivalent interface to the Ruby API. The release process can then be extended to produce appropriately versioned and distributed packages for other languages (please use the exact same version identifier as the Ruby gem and the tags in this repo, so the versions all "line up" trivially).

If the master data being in Ruby becomes a bottleneck (eg, because non-Ruby-confident people want to edit it), then the source data should be rewritten into a suitable format (perhaps the JSON version can become the master data), and then the Ruby and other language versions can be generated from that master data format. Users of the APIs or static products need never know that anything has changed.

# Release process

Until we sort out our RubyGems account, dependents will pull the gem from GitHub. The process is:

- Bump the version number in `lib/dfe/reference_data/version.rb`
- Tag a new version
- Push to GitHub

The recommended way to accomplish the last two steps is to use https://github.com/svenfuchs/gem-release#gem-tag.

```bash
gem tag -p # -p will push to GitHub
```

