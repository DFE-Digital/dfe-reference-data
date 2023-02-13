# A convention for handling "special records"

## Context and problem statement

Many lists can be broken into two parts: "Normal options" (eg, for a list of things people like to eat, this would include "cake" and "bananas"), and "Special options" (eg, a generic value for "Other food", or semi-generic values like "Other savoury food" and "Other sweet food", or values indicating that there *is* a favourite food but its identity is unknown).

Some applications require just the normal options, and some also require the special ones. A few might require some of the special ones (eg, generics but not unknowns) only.

Our approach so far has been to create separate lists for these groups - eg, `FOODS` and `GENERIC_FOODS`. We put a boolean value in the generics to mark them as such, and then provide a combined list, eg `FOODS_WITH_GENERICS` so that users wanting all the options can use `FOODS_WITH_GENERICS` while those who don't can just use `FOODS`. The presence of the boolean flag means that users of `FOODS_WITH_GENERICS` can still pick out the special generic options, for instance presenting the user with a free-text field to supply more detail.

This presents a few problems where we have multiple special categories:

1. A proliferation of boolean flags to mark records in those categories.
2. A proliferation of explicit lists for all the combinations: `FOODS`, `GENERIC_FOODS`, `UNKNOWN_FOODS`, `FOODS_WITH_GENERICS`, `FOODS_WITH_UNKNOWNS`, `FOODS_WITH_GENERICS_AND_UNKNOWNS`.

This is even worse in cases like degree subjects, where the normal options are already broken into `SINGLE_SUBJECTS` and `COMBINED_SUBJECTS` with an attendant `SUBJECTS` list that combines the two. Do all the `_WITH_...` variants needs to be constructed for the three different slices of the normal options?

## Considered options

### Continue as-is

We could just keep adding more booleans and `..._WITH_...` variants as we currently do. This doesn't mean adding all variants - so far we've just added variants as needed by current services. For instance, we had `TYPES` and `TYPES_WITH_GENERICS`. Register needed generics and the new unknown "Not available" option, so we added `TYPES_WITH_GENERICS_AND_UNKNOWNS`.

This is messy, and the service-needs-led approach to adding new variants leads to a confusing inconsistent list of lists.

### Change from booleans to `kind`

Remove the booleans from special records and replace them with an optional `kind` field, taking values such as `:generic`, `:unknown`, etc. The absence of the optional field would indicate a normal record, although in cases where we have more than one kind of normal record would could use the `kind` field to distinguish them, so having a `kind` doesn't necessarily indicate that a record is special.

This would be a backwards-incompatible change, as the old booleans would be removed, but that could be done at a later date than adding `kind` to provide a grace period. The upside would be that we'd just have a single field to filter special records out. It would be easy for client code to say things like `[:generic, :unknown].contains?(record.kind)` to filter out the kinds they're interested in, and if they follow that pattern, newly added kinds wouldn't get included by accident.

### Stick to a single `SPECIAL_XXX` list and `XXX_WITH_SPECIALS` combined form

Rather than having separate lists for generics and unknowns and whatever else, and various combinations thereof, just put *all* the "special" values into a single list, and have a single list combining specials with the normal values. Services would choose whether to include specials, and then filter for the particular specials they want (using booleans or `kind` as appropriate).

## Decision outcome

I propose that we adopt the change from booleans to `kind`, in a backwards-compatible manner, like so:

1. Add a `kind` field to existing special records, leaving the current booleans in place for now.

2. Continue to have kind-specific lists of special values like `GENERIC_TYPES` and `UNKNOWN_TYPES`.

3. Encourage services to assemble the lists they want with custom `JoinedReferenceList` instances, combining the subsets they desire, and to use the `kind` field to do any context-specific filtering or triggering special behaviour that they require.

3. Add a new `ALL_TYPES` list that combines *all* the normal and special lists together. This is useful for feeding into BigQuery, and is a good target for RSpec tests to ensure that all records are schema-compliant, and is available for any software that just wants to be able to interpret any random ID they find in the wild.

4. In a future breaking release, remove all `..._WITH_GENERICS` type combined lists, and remove the boolean type flags.
