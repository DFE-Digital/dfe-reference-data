# Handle lists that change between cycles using hash fields

## Context and Problem Statement

Some reference data lists change between cycles. The case that drove this decision, in particular, is [HESA changing the list of ethnicities](https://github.com/DFE-Digital/apply-for-teacher-training/blob/348-eoc-update-the-service-with-new-hesa-codes/config/initializers/hesa_ethnicities.rb#L29) (and the codes used to refer to them) for the 2022-2023 recruitment cycle.

The representation of such "changing" lists must take into account the following needs:

1. Code that needs to present the user with a choice needs to be able to easily show the choices available for the cycle in question. For instance, `Any other White background` is a valid choice in the 2022-2023 cycle, but not previously.
2. Code that sends information to external third parties needs to be able to identify the correct external ID codes for the relevant cycle. For instance, `Arab` is represented by HESA code `50` in 2021-2022, but by `180` in 2022-2023.
3. Code that performs analytics or other operations on records from a mixture of cycles needs to be able to easily work with options that have NOT changed between cycles; for instance, people could specify an Arabic ethnicity in 2021-2022 or 2022-2023, and code that does not need to deal with the change in HESA codes should be able to use a consistent internal ID for that ethnicity without needing to worry about issues pertaining only to interacting with HESA.
   1. This may be complicated somewhat when list entries "split" or "merge"; people choosing the new `Any other White background` option in 2022-2023 would presumably have chosen a generic `White` ethnicity or one of the `White and ...` mixed ones in previous cycles. Systems caring about these distinctions, for instance for analytical purposes, cannot avoid being aware of this kind of change in structure.

## Considered Options

* Store a separate reference list per cycle, as the existing code [here](https://github.com/DFE-Digital/apply-for-teacher-training/blob/348-eoc-update-the-service-with-new-hesa-codes/config/initializers/hesa_ethnicities.rb#L29) effectively does.
* Store a single reference list, but use fields that contain a hash from cycle ID to appropriate cycle-specific attributes of the record - including, if ncessary, a boolean to indicate its validity in that cycle.

## Decision Outcome

Chosen option: "Store a single reference list", because it handles all the needs:

1. Code that needs to present the user with a choice can filter for records that have the required metadata for the cycle in question. In the example of HESA ethnicities, the code can check for a HESA ethnicity code being available for the current cycle to decide whether to give the user that option. A separate list per cycle would be slightly easier to use in this case, but not by much.
2. Code that looks up cycle-dependent codes to send to third parties can simply pick the appropriate external ID from the hash, given the cycle ID. This is slightly simpler than picking which cycle-dependent list to look up the ID in.
3. Code that performs cross-cycle analytics is the big winner for the single list approach, as we can have an unchanging internal ID that maps to a single record, isolated from the changing relationship of that record to particular cycles. Handling that with a list-per-cycle would be much more complicated.
