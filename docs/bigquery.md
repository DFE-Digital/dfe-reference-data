## BigQuery synchronisation

The following lists are, on each release, automatically written into BigQuery under `cross-teacher-services.dfe_reference_data`:

| List                                                                            | BigQuery base table name                |
|----------------------------------------------------------------------------------|------------------------------------------|
| `DfE::ReferenceData::Qualifications::QUALIFICATIONS`                            | `qualifications`                         |
| `DfE::ReferenceData::Degrees::GRADES`                                            | `degree_grades`                          |
| `DfE::ReferenceData::Degrees::INSTITUTIONS`                                      | `degree_institutions`                    |
| `DfE::ReferenceData::Degrees::SUBJECTS_INCLUDING_GENERICS`                       | `degree_subjects`                        |
| `DfE::ReferenceData::Degrees::ALL_TYPES`                                         | `degree_types`                           |
| `DfE::ReferenceData::ITT::SUBJECTS`                                              | `itt_subjects`                           |
| `DfE::ReferenceData::ITT::INCENTIVES`                                            | `itt_incentives`                         |
| `DfE::ReferenceData::ITT::CATEGORIES`                                            | `itt_categories`                         |
| `DfE::ReferenceData::ITT::PUBLISH_CATEGORIES`                                    | `itt_publish_categories`                 |
| `DfE::ReferenceData::ITT::REGISTER_CATEGORIES`                                   | `itt_register_categories`                |
| `DfE::ReferenceData::ITT::TAD_CATEGORIES`                                        | `itt_tad_categories`                     |
| `DfE::ReferenceData::ITT::CYCLES`                                                | `itt_cycles`                             |
| `DfE::ReferenceData::EqualityAndDiversity::DISABILITIES_AND_HEALTH_CONDITIONS`   | `ead_disabilities_and_health_conditions` |
| `DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L1`             | `cah_categories_l1`                      |
| `DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L2`             | `cah_categories_l2`                      |
| `DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L3`             | `cah_categories_l3`                      |
| `DfE::ReferenceData::CommonAggregationHierarchy::HECOS_CAH_SUBJECT_MAPPINGS`    | `hecos_cah_subject_mappings`             |
| `DfE::ReferenceData::BankHolidays::BANK_HOLIDAYS`                                | `bank_holidays`                          |
| `DfE::ReferenceData::InternationalQualifications::INTERNATIONAL_QUALIFICATIONS` | `international_qualifications`           |
| `DfE::ReferenceData::HesaProviderCampus::HESA_PROVIDER_CAMPUSES`                | `hesa_provider_campuses`                 |

Edit `BIGQUERY_TABLES` in the Rakefile to change this list.

The table name is made by taking the base table name from the table above, and
appending `_latest`. This ensures that the data is always pushed to the same table, providing a consistent and up-to-date reference.

### Internals

The Rakefile target `update_bigquery_tables` is responsible for doing this. To
run it locally, you need a set of BigQuery API credentials stored in the file
`dfe-reference-data_bigquery_api_key.json` alongside (not within) your checkout
of this repo, or in the environment variable `BIGQUERY_CREDENTIALS`.

If you run it yourself, it will write into the `dfe_reference_data_dev` dataset
instead of `dfe_reference_data` - unless you override this by setting the
`BIGQUERY_DATASET` environment variable.

The BigQuery project can be overridden from `cross-teacher-services` by setting
`BIGQUERY_PROJECT`.

### Testing

If you have a `dfe-reference-data_bigquery_api_key.json` file or the
`BIGQUERY_CREDENTIALS` environment variable set when running `rake spec`, then a
test of the BigQuery importer will be run. This will create a randomly-named
table in the `cross-teacher-services.dfe_reference_data_dev` dataset and,
hopefully, delete it afterwards. The project and dataset used for the test can
be overridden with the `BIGQUERY_QA_PROJECT` and `BIGQUERY_QA_DATASET`
environment variables, respectively.
