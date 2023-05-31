## Common Aggregation Hierarchy

"The Common Aggregation Hierarchy (CAH) provides a standardised hierarchical aggregation (grouping) of subject codes and terms (developed based upon the HECoS codes and terms) suitable for the majority of uses."

See https://www.hesa.ac.uk/support/documentation/hecos/cah

```ruby
require 'dfe/reference_data/cah`
```

### `DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L1`

Top-level CAH categories.

Owner: Data Insights.

Users: Data Insights.

Source: https://www.hesa.ac.uk/support/documentation/hecos/cah - taken at version 1.3.4

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | ID string | A unique identifier |
| `name` | string | The name of the level 1 category |
| `l2_children` | ID string array | The IDs of this category's level 2 children |

### `DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L2`

Mid-level CAH categories.

Owner: Data Insights.

Users: Data Insights.

Source: https://www.hesa.ac.uk/support/documentation/hecos/cah - taken at version 1.3.4

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | ID string | A unique identifier |
| `name` | string | The name of the level 2 category |
| `l1` | ID string | The ID of this category's level 1 parent |
| `l3_children` | ID string array | The IDs of this category's level 3 children |

### `DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L3`

Bottom-level CAH categories.

Owner: Data Insights.

Users: Data Insights.

Source: https://www.hesa.ac.uk/support/documentation/hecos/cah - taken at version 1.3.4

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | ID string | A unique identifier |
| `name` | string | The name of the level 3 category |
| `l1` | ID string | The ID of this category's level 1 grandparent |
| `l2` | ID string | The ID of this category's level 2 parent |

### `DfE::ReferenceData::CommonAggregationHierarchy::HECOS_CAH_SUBJECT_MAPPINGS`

Mapping from HECoS subject codes to level 3 CAH IDs.

Owner: Data Insights.

Users: Data Insights.

Source: https://www.hesa.ac.uk/support/documentation/hecos/cah - taken at version 1.3.4

Quality: Manually updated on an ad-hoc basis. Please submit a pull request if inaccuracies or omissions are found.

| Field | Type | Purpose |
|---|---|---|
| `id` | ID string | A HESA [DEGSBJ](https://www.hesa.ac.uk/collection/c22053/e/degsbj) code for this degree subject (from [HECoS](https://www.hesa.ac.uk/support/documentation/hecos)) |
| `cah_l3_id` | string | The CAH level 3 ID corresponding to this HECoS subject |
