## Generating static JSON

If you'd like to serve static JSON files for your frontend code to use, that's easily done using the `export_reference_json` command line tool. The argument is a Ruby expression to evaluate; its result is converted to JSON and written to standard output. The `Demo` dataset is included by default. For example:

```shell
$ bundle exec bin/export_reference_json 'DfE::ReferenceData::Demo::HELLO_WORLD.all_as_hash' | jq .
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

You can use any of the access methods defined in the [Ruby API](ruby.md) to control the output format or to filter the result.

```shell
$ bundle exec bin/export_reference_json 'DfE::ReferenceData::Demo::ELEMENTS.some({period: 7, group: 18})' | jq .
[
  {
    "atomic_number": 118,
    "name": "Oganesson",
    "atomic_mass": 294,
    "number_of_neutrons": 176,
    "number_of_protons": 118,
    "number_of_electrons": 118,
    "period": 7,
    "group": 18,
    "phase": "artificial",
    "radioactive": true,
    "natural": false,
    "metal": false,
    "nonmetal": true,
    "metalloid": false,
    "type": "Noble Gas",
    "atomic_radius": null,
    "electronegativity": null,
    "first_ionization": null,
    "density": null,
    "melting_point": null,
    "boiling_point": null,
    "number_of_isotopes": null,
    "discoverer": null,
    "year": 2006,
    "specific_heat": null,
    "number_of_shells": 7,
    "valence": 8,
    "id": "Og"
  }
]
```

```shell
$ bundle exec bin/export_reference_json 'DfE::ReferenceData::Demo::ELEMENTS.some_by_field(:phase, {group: 1})' | jq .
{
  "gas": [
    {
      "atomic_number": 1,
      "name": "Hydrogen",
      "atomic_mass": 1.007,
      "number_of_neutrons": 0,
      "number_of_protons": 1,
      "number_of_electrons": 1,
      "period": 1,
      "group": 1,
      "phase": "gas",
      "radioactive": false,
      "natural": true,
      "metal": false,
      "nonmetal": true,
      "metalloid": false,
      "type": "Nonmetal",
      "atomic_radius": 0.79,
      "electronegativity": 2.2,
      "first_ionization": 13.5984,
      "density": 8.99e-05,
      "melting_point": 14.175,
      "boiling_point": 20.28,
      "number_of_isotopes": 3,
      "discoverer": "Cavendish",
      "year": 1766,
      "specific_heat": 14.304,
      "number_of_shells": 1,
      "valence": 1,
      "id": "H"
    }
  ],
  "solid": [
    {
      "atomic_number": 3,
      "name": "Lithium",
      "atomic_mass": 6.941,
      "number_of_neutrons": 4,
      "number_of_protons": 3,
      "number_of_electrons": 3,
      "period": 2,
      "group": 1,
      "phase": "solid",
      "radioactive": false,
      "natural": true,
      "metal": true,
      "nonmetal": false,
      "metalloid": false,
      "type": "Alkali Metal",
      "atomic_radius": 2.1,
      "electronegativity": 0.98,
      "first_ionization": 5.3917,
      "density": 0.534,
      "melting_point": 453.85,
      "boiling_point": 1615,
      "number_of_isotopes": 5,
      "discoverer": "Arfvedson",
      "year": 1817,
      "specific_heat": 3.582,
      "number_of_shells": 2,
      "valence": 1,
      "id": "Li"
    },
...
  ]
}
```

If you want to do a lot of complicated local customisation (joining lists together, tweaking them, that sort of thing) you're probably better off writing a short Ruby script of your own to do it, rather than trying to cram all that into a command line. See the source in `bin/export_reference_json` to see how, it's pretty simple.
