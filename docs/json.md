## Generating static JSON

If you'd like to serve static JSON files for your frontend code to use, that's easily done using the `export_reference_json` command line tool. The argument is a Ruby expression to evaluate; its result is converted to JSON and written to standard output. The `Demo` dataset is included by default. For example:

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
