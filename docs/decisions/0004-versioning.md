# Versioning

## Context and problem statement

Teams using the reference data datasets need to be able to rely on a specific version of the datasets. Up to now,
there were situations where the datasets were updated without notice and it was leading to the applications displaying 
data that might not be expected.

## Solution

Solution is to add a version namespace (V2, V3, etc.). Version `V1` is ommited.
For example, updates to the countries list were introduced in version `V2`: `DfE::ReferenceData::V2::CountriesAndTerritories`.