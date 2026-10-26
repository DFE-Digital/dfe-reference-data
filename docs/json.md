## Generating static JSON

There are two ways to get the reference data as JSON: generating a single file for one specific list via the command line, or generating a full set of files for every list in the gem.

### Generating JSON for every list

Run `rake json:generate` to write every dataset listed in `DfE::ReferenceData::MODULES` out to its own JSON file, under a directory tree that mirrors its Ruby namespace. By default the files are written under `json/` in this repo, but you can override that with the `OUTPUT_DIR` environment variable:

```shell
$ bundle exec rake json:generate
JSON files written to /path/to/dfe-reference-data/json

$ OUTPUT_DIR=/tmp/reference_data bundle exec rake json:generate
JSON files written to /tmp/reference_data
```

For example, `DfE::ReferenceData::Degrees::TYPES` is written to `degrees/types.json`, and `DfE::ReferenceData::HESA::Domiciles::COUNTRIES_AND_TERRITORIES` is written to `hesa/domiciles/countries_and_territories.json`.

Each file contains the dataset's documentation metadata alongside its data, for example:

```json
{
  "description": "Widgets available in the shop",
  "usage_guidance": "Pick one widget per order",
  "docs_url": "https://example.com/docs/widgets",
  "schema": { "id": "string", "name": "string" },
  "field_descriptions": { "id": "The widget id", "name": "The widget name" },
  "data": [
    { "id": "a", "name": "Widget A" },
    { "id": "b", "name": "Widget B" }
  ]
}
```

This is what the [dotnet port of this gem](https://github.com/DFE-Digital/dfe-reference-data-dotnet) uses as its data source, rather than re-implementing the reference data in C#.

### Generating JSON for a single list

If you'd like to serve static JSON for just one list, that's easily done using the `export_reference_json` command line tool. The argument is a Ruby expression to evaluate; its result is converted to JSON and written to standard output. The `Demo` dataset is included by default. For example:

```shell
$ bundle exec export_reference_json 'DfE::ReferenceData::Demo::HELLO_WORLD.all_as_hash' | jq .
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
