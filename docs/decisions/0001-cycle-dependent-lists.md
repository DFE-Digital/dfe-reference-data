# Handle lists that change between cycles using hash fields

## Context and problem statement

Some reference data lists change between cycles.

The changes might be a combination of:

- In the available options themselves - entire records from the list being relevant to a cycle or not.
- Properties of a record - such as an external mapping code changing, because a third party changed their coding scheme.

The representation of such "changing" lists must take into account the following needs:

1. Code that needs to present the user with a choice needs to be able to easily show the choices available for the cycle in question.
2. Code that processes records need to find the appropriate properties for that record in a given cycle.
3. Code that performs analytics or other operations on records from a mixture of cycles needs to be able to easily work with options that have NOT changed between cyclesA.
   1. This may be complicated somewhat when list entries "split" or "merge"; handling these complications is context-specific so outside the scope of this decision.
     1. An option for "Science" in cycle 1 might be split into separate "Physics", "Chemistry", "Biology", "Geology", etc in cycle 2, so a query for all "Science" records would need to know to include all of those options.
     2. Meanwhile, a query for all "Physics" records would have to decide how to handle records using the "Science" code, which did not distinguish Physics from other sciences.
     3. And that's just a simple case. The meaning of an "Other" option might change purely because a more specific option was added or removed elsewhere, for instance.

## Considered options

* Store a separate reference list per cycle, with any records that don't change between cycles being duplicated.
* Store a single reference list, but use fields that contain a hash from cycle ID to appropriate cycle-specific attributes of the record - including, if ncessary, a boolean to indicate its availability in that cycle (where that isn't implicit from the presence of other cycle-specific attributes).

## Decision Outcome

Chosen option: "Store a single reference list", because it handles all the needs:

1. Code that needs to present the user with a choice can filter for records that have the required metadata for the cycle in question. A separate list per cycle would be slightly easier to use in this case, but not by much.
2. Code that looks up cycle-dependent codes to send to third parties can simply pick the appropriate external ID from the hash, given the cycle ID. This is slightly simpler than picking which cycle-dependent list to look up the ID in.
3. Code that performs cross-cycle analytics is the big winner for the single list approach, as we can have an unchanging internal ID that maps to a single record, isolated from the changing relationship of that record to particular cycles. Handling that with a list-per-cycle would be much more complicated.

In addition, the other option would involve duplication of records that have not changed between lists, which creates scope for accidental inconsistencies and all the other dangers of duplicating data.

### Example

If in cycle 1 we present users with the following options:

| Name | Code |
|:-----|:-----|
| Science     | SCI     |
| English | ENG |
| Other | OTH |

...and in cycle 2 the options are:

| Name | Code |
|:-----|:-----|
| Physics     | SCI     |
| Biology | BIO |
| Chemistry |CHE |
| English | ENG |
| Other | OTH |

We might represent that with a reference data list like so:

| ID | Name | Code By Cycle |
|:-----|:-----|:-----|
| 1 | Science | {1: SCI} |
| 2 | English | {1: ENG, 2: ENG} |
| 3 | Other | { 1: OTH, 2: OTH} |
| 4 | Physics | {2: PHY} |
| 5 | Biology | {2: BIO} |
| 6 | Chemistry | {2: CHE} |

### Additional Guidance

When faced with a change to a list for an upcoming cycle, a judgement must be made as to when to keep a record with the same ID and add some per-cycle metadata to it, or to create a new record with a new ID and perhaps the same name.

There is no one right answer to this; it depends on how the data will be used. One must consider whether the record really is comparable between cycles; this is complicated in cases like "Other" that are effectively defined in terms of the other options available (as the [set difference](https://en.wikipedia.org/wiki/Set_difference) of the [universe of discourse](https://en.wikipedia.org/wiki/Domain_of_discourse) and the union of the other options given, to be precise).

In the previous example, `Science` is split into constituent subjects; that new set of options presumably has exactly the same "coverage" as the old `Science` option did, so `English` and `Other` are unaffected. However, if we had added a new option of `Music` that would previously fallen under `Other`, it would probably have been necessary to create a new `Other` record with a new ID for cycle 2.
