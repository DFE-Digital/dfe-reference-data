module DfE
  module ReferenceData
    module HesaProviderCampus
      SCHEMA = {
        id: :string,
        provider_name: :string,
        ukprn: { kind: :code, pattern: /^[0-9]+$/ },
        instid: { kind: :code, pattern: /^[0-9]+$/ },
        name: :string,
        country: { kind: :optional, schema: :string },
        postcode: { kind: :optional, schema: :string }
      }.freeze

      FIELD_DESCRIPTIONS = {
        id: 'A unique identifier for this campus record',
        provider_name: 'The name of the HE provider that operates this campus',
        ukprn: 'The UK Register of Learning Providers (UKPRN) number for the provider',
        instid: "The provider's HESA institution id. A UKPRN usually has a single instid, but a small number of providers (for example the Open University) have several, one per national variant",
        name: 'The name of the campus',
        country: 'The country in which the campus is located. Absent for a small number of overseas/unspecified campuses',
        postcode: 'The postcode of the campus. Absent for a small number of overseas/unspecified campuses'
      }.freeze

      DATA = {
        "6b01d685-84e6-564a-8d5d-981cb26927dd" => {
          provider_name: "AA School of Architecture",
          ukprn: "10008071",
          instid: "0323",
          name: "Hooke Park",
          country: "England",
          postcode: "DT8 3PH"
        },
        "e8d054ae-ab48-5123-a143-531c9e4e7179" => {
          provider_name: "AA School of Architecture",
          ukprn: "10008071",
          instid: "0323",
          name: "Main campus",
          country: "England",
          postcode: "WC1B 3ES"
        },
        "e69dbf0a-a94b-5946-9d3e-adfeceea57dd" => {
          provider_name: "Abertay University",
          ukprn: "10007849",
          instid: "0095",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "DD1 1HG"
        },
        "8fad33e1-9e54-5489-8ec7-9995e48649f5" => {
          provider_name: "Aberystwyth University",
          ukprn: "10007856",
          instid: "0177",
          name: "Canolfan Iaith Ceredigion",
          country: "Wales",
          postcode: "SA48 8AF"
        },
        "e5a78196-12ac-5d37-bf8b-e621534139db" => {
          provider_name: "Aberystwyth University",
          ukprn: "10007856",
          instid: "0177",
          name: "Canolfan Iaith Clwyd",
          country: "Wales",
          postcode: "SA44 6AE"
        },
        "49d273aa-943e-55a7-9064-ef11f3f1c145" => {
          provider_name: "Aberystwyth University",
          ukprn: "10007856",
          instid: "0177",
          name: "Coleg Harlech",
          country: "Wales",
          postcode: "LL46 2PU"
        },
        "f3e76f05-eefd-5ee2-84c9-d71d91e04fcc" => {
          provider_name: "Aberystwyth University",
          ukprn: "10007856",
          instid: "0177",
          name: "Coleg Meirion Dwyfor",
          country: "Wales",
          postcode: "LL40 2SW"
        },
        "78c1b9ef-9f79-5ed0-a6ff-b7a3524ea9b0" => {
          provider_name: "Aberystwyth University",
          ukprn: "10007856",
          instid: "0177",
          name: "Entire HEP",
          country: "Wales",
          postcode: "SY23 3BY"
        },
        "2ddf7931-38ca-5118-a3d5-6cbed50dfc3d" => {
          provider_name: "ABI College Limited",
          ukprn: "10019746",
          instid: "0231",
          name: "Main campus",
          country: "England",
          postcode: "RG1 4SJ"
        },
        "6c9cd3fc-b1a0-5b33-b117-e5e47f710374" => {
          provider_name: "Abingdon and Witney College",
          ukprn: "10000055",
          instid: "1183",
          name: "Main campus",
          country: "England",
          postcode: "OX14 1GG"
        },
        "e949a840-a13c-5249-9b12-2dea9ee0325f" => {
          provider_name: "Academy of Live and Recorded Arts",
          ukprn: "10000248",
          instid: "0269",
          name: "ALRA North",
          country: "England",
          postcode: "WN3 4BF"
        },
        "84bc540d-17ac-5384-8931-601725fff75d" => {
          provider_name: "Academy of Live and Recorded Arts",
          ukprn: "10000248",
          instid: "0269",
          name: "ALRA South",
          country: "England",
          postcode: "SW18 3SX"
        },
        "498f65a5-8f2a-5ce1-8b5f-c2bd4ab3d62f" => {
          provider_name: "Academy of Live and Recorded Arts",
          ukprn: "10000248",
          instid: "0269",
          name: "Main campus",
          country: "England",
          postcode: "SW18 3SX"
        },
        "89379370-3dbd-58c2-9a6d-a80cb4a5d529" => {
          provider_name: "Academy of Live Technology Ltd",
          ukprn: "10036456",
          instid: "0426",
          name: "Entire HEP",
          country: "England",
          postcode: "WF9 3AP"
        },
        "4efbc997-19c4-56cc-9130-1cfeb7f5bed9" => {
          provider_name: "Access to Music Limited",
          ukprn: "10000080",
          instid: "0268",
          name: "Main campus",
          country: "England",
          postcode: "B9 4AR"
        },
        "f96971dc-941d-5a3f-97e1-58467ae39a59" => {
          provider_name: "Accrington and Rossendale College",
          ukprn: "10000093",
          instid: "1182",
          name: "Main campus",
          country: "England",
          postcode: "BB5 2AW"
        },
        "63c053da-893b-56b5-b838-2e6ab62ec9d7" => {
          provider_name: "ACM Guildford Limited",
          ukprn: "10067853",
          instid: "0357",
          name: "Birmingham Campus",
          country: "England",
          postcode: "B3 1AG"
        },
        "090fff78-9524-5059-94ed-72af37a094f3" => {
          provider_name: "ACM Guildford Limited",
          ukprn: "10067853",
          instid: "0357",
          name: "London Campus",
          country: "England",
          postcode: "SW4 0BG"
        },
        "53c5890c-055b-5b0c-a5d8-1fd9b794bc48" => {
          provider_name: "ACM Guildford Limited",
          ukprn: "10067853",
          instid: "0357",
          name: "Main campus",
          country: "England",
          postcode: "GU1 4SB"
        },
        "6b9d2cc3-66b1-539f-b291-25dfd8819240" => {
          provider_name: "ACMET London College",
          ukprn: "10092025",
          instid: "0465",
          name: "Main campus",
          country: "England",
          postcode: "TW8 9DN"
        },
        "58f1b393-3259-5089-baae-1c0a12ab2bc9" => {
          provider_name: "Activate Learning",
          ukprn: "10004927",
          instid: "1181",
          name: "Main campus",
          country: "England",
          postcode: "OX1 1SA"
        },
        "2ac35094-903b-56b3-9f71-f291ea7679f8" => {
          provider_name: "All Nations Christian College Limited",
          ukprn: "10000216",
          instid: "0285",
          name: "Entire HEP",
          country: "England",
          postcode: "SG12 8LX"
        },
        "c59b0491-0e7d-5727-af7b-e34465ae62ca" => {
          provider_name: "Amity University [IN] London",
          ukprn: "10032036",
          instid: "0353",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1E 7HX"
        },
        "2f23c35b-8b18-5e4a-bd25-c902b71eddb8" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Cambridge",
          country: "England",
          postcode: "CB1 1PT"
        },
        "83c7c63b-a4ce-5835-9f95-2cd900aa4527" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Cambridge campus",
          country: "England",
          postcode: "CB1 1PT"
        },
        "0bc9bc7e-5e74-59d9-98cc-a9da739dc028" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Harlow",
          country: "England",
          postcode: "CM20 3LH"
        },
        "e4f98d89-44f5-5916-85de-1076dcdc854c" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "London",
          country: "England",
          postcode: "EC1N 6SA"
        },
        "1216d7f8-39df-586f-b8b7-363661332ee2" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Main campus",
          country: "England",
          postcode: "CM1 1SQ"
        },
        "cdd77865-3e99-588e-8ff5-de19454b67dc" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Peterborough",
          country: "England",
          postcode: "PE1 4DZ"
        },
        "68d3b6de-f5e3-5d34-befc-3a021daee158" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Peterborough Guild House",
          country: "England",
          postcode: "PE2 9PW"
        },
        "906e4715-d88b-5610-843e-cc56edd3cb72" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "West Anglia",
          country: "England",
          postcode: "PE30 2QW"
        },
        "97beec2d-db3f-51e4-9be3-1a9170cb2b85" => {
          provider_name: "Anglo Skills College",
          ukprn: "10030497",
          instid: "0456",
          name: "Main campus",
          country: "England",
          postcode: "NG1 6DG"
        },
        "03f3002f-3367-565e-8879-57eb95809f6a" => {
          provider_name: "Apex College",
          ukprn: "10041898",
          instid: "0329",
          name: "Entire HEP",
          country: "England",
          postcode: "SE17 1JE"
        },
        "cc17ba0c-56e0-5872-892d-c806340b871d" => {
          provider_name: "Applied Business Academy Limited",
          ukprn: "10062759",
          instid: "0432",
          name: "Entire HEP",
          country: "England",
          postcode: "E14 9RH"
        },
        "3ff61c3a-639d-5a8b-88cb-35312b970480" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Berlin",
          country: "Germany"
        },
        "688d2a2f-cc4a-5da8-8bea-b58f90c901c8" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Birmingham",
          country: "England",
          postcode: "B5 4UA"
        },
        "30ace3f8-fc07-5e9d-956f-d41e93c7c064" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Ealing",
          country: "England",
          postcode: "W5 5SA"
        },
        "94a74f64-85a3-5818-9874-e86f803b34d1" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Holborn",
          country: "England",
          postcode: "EC1N 2LX"
        },
        "2e7f7b35-814c-550c-a66f-ce2bf8354090" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Islamabad",
          country: "Pakistan"
        },
        "227a87ca-6f5e-5566-8528-40608fc8bc3d" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Lahore",
          country: "Pakistan"
        },
        "eccfe75f-0887-5563-8464-611f342dc912" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Leeds",
          country: "England",
          postcode: "LS1 5HD"
        },
        "cb0a165c-1aef-5d0a-8b39-95e8c933bc7a" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Main campus",
          country: "England",
          postcode: "CV3 4FJ"
        },
        "d1bc8687-0483-5d5c-aeb9-a83f100997da" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Manchester",
          country: "England",
          postcode: "M1 4LF"
        },
        "7d42055b-2e3e-5b45-a89e-882963c8bb5b" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Tower Hill",
          country: "England",
          postcode: "EC3N 4DX"
        },
        "6553451a-206e-5870-b1b9-81f3cb8e1376" => {
          provider_name: "Arts Educational Schools",
          ukprn: "10000381",
          instid: "0244",
          name: "Entire HEP",
          country: "England",
          postcode: "W4 1LY"
        },
        "acedb52b-a4aa-52f9-a69f-92e64aff23ec" => {
          provider_name: "Arts University Plymouth",
          ukprn: "10005127",
          instid: "0230",
          name: "Entire HEP",
          country: "England",
          postcode: "PL4 8AT"
        },
        "cfa85c29-5986-524e-893f-cc6ed821d785" => {
          provider_name: "Ashton Sixth Form College",
          ukprn: "10000409",
          instid: "1180",
          name: "Main campus",
          country: "England",
          postcode: "OL6 9RL"
        },
        "9f13cc08-3909-55d5-9daa-8e116c7730db" => {
          provider_name: "Askham Bryan College",
          ukprn: "10000415",
          instid: "1179",
          name: "Main campus",
          country: "England",
          postcode: "YO23 3FR"
        },
        "5d636691-e0a3-550f-b701-cbc0dcfb80f9" => {
          provider_name: "Aston University",
          ukprn: "10007759",
          instid: "0108",
          name: "Entire HEP",
          country: "England",
          postcode: "B4 7ET"
        },
        "31c52299-8886-5dfc-85de-d8f11f340b9c" => {
          provider_name: "Aylesbury College",
          ukprn: "10000473",
          instid: "1178",
          name: "Main campus",
          country: "England",
          postcode: "HP21 8PD"
        },
        "b10f6c28-3dee-5734-9f4e-14bc25339c16" => {
          provider_name: "Ballet West",
          ukprn: "10042364",
          instid: "0324",
          name: "Main campus",
          country: "Scotland",
          postcode: "PA35 1HP"
        },
        "4eae076b-f8a5-5941-ab27-c1a5bccea0ec" => {
          provider_name: "Bangor University",
          ukprn: "10007857",
          instid: "0178",
          name: "CSUFT",
          country: "China"
        },
        "ceabb117-ac40-5d81-894e-c19936dd8943" => {
          provider_name: "Bangor University",
          ukprn: "10007857",
          instid: "0178",
          name: "London Centre",
          country: "England",
          postcode: "EC2A 2EW"
        },
        "e1c7fb12-8ee2-586c-9878-b05b1f1556c5" => {
          provider_name: "Bangor University",
          ukprn: "10007857",
          instid: "0178",
          name: "Main campus",
          country: "Wales",
          postcode: "LL57 2DG"
        },
        "5177acd7-a202-5754-a2d2-e32e5390d1b4" => {
          provider_name: "Bangor University",
          ukprn: "10007857",
          instid: "0178",
          name: "Wrexham",
          country: "Wales",
          postcode: "LL13 7YP"
        },
        "519712a7-a8c7-5071-ad71-59628f0990c5" => {
          provider_name: "Barking and Dagenham College",
          ukprn: "10000528",
          instid: "1177",
          name: "Main campus",
          country: "England",
          postcode: "RM7 0XU"
        },
        "461b19f8-639c-50de-b53d-957c2d9b15c5" => {
          provider_name: "Barnet & Southgate College",
          ukprn: "10000533",
          instid: "1174",
          name: "Main campus",
          country: "England",
          postcode: "EN5 4AZ"
        },
        "9a7cf463-e5ef-57ab-ba56-c199dc008376" => {
          provider_name: "Barnfield College",
          ukprn: "10000534",
          instid: "1176",
          name: "Main campus",
          country: "England",
          postcode: "LU2 7BF"
        },
        "dfeff19f-6639-5b24-b887-572ca1fe9894" => {
          provider_name: "Barnsley College",
          ukprn: "10000536",
          instid: "1175",
          name: "Main campus",
          country: "England",
          postcode: "S70 2AX"
        },
        "480739db-657e-54e5-9201-8ff1c68412af" => {
          provider_name: "Basingstoke College of Technology",
          ukprn: "10000560",
          instid: "1173",
          name: "Main campus",
          country: "England",
          postcode: "RG21 8TN"
        },
        "6b7c07e4-6483-524a-baa6-1510a1b52a67" => {
          provider_name: "Bath College",
          ukprn: "10001465",
          instid: "1172",
          name: "Main campus",
          country: "England",
          postcode: "BA1 1UP"
        },
        "94e1b017-3df8-5e29-9055-74d26393f29e" => {
          provider_name: "Bath Spa University",
          ukprn: "10000571",
          instid: "0048",
          name: "BSULONDON",
          country: "England",
          postcode: "N1 6HQ"
        },
        "4c18d95c-7a9d-58d6-be17-bdbec2893984" => {
          provider_name: "Bath Spa University",
          ukprn: "10000571",
          instid: "0048",
          name: "Main campus",
          country: "England",
          postcode: "BA2 9BN"
        },
        "92da3667-64ea-55f4-aa34-0b004d26180b" => {
          provider_name: "BCNO Limited",
          ukprn: "10000911",
          instid: "0400",
          name: "European School of Osteopathy",
          country: "England",
          postcode: "ME14 3DZ"
        },
        "38d40621-a9af-5e51-bdd5-12aab37ba476" => {
          provider_name: "BCNO Limited",
          ukprn: "10000911",
          instid: "0400",
          name: "Main campus",
          country: "England",
          postcode: "NW3 5RR"
        },
        "c7053728-fb9e-5bd9-aa0f-75c913530405" => {
          provider_name: "Bedford College",
          ukprn: "10000610",
          instid: "1171",
          name: "Main campus",
          country: "England",
          postcode: "MK42 9AH"
        },
        "623e4395-84ee-51be-a1ca-7b66882e2c7e" => {
          provider_name: "Belfast Metropolitan College",
          ukprn: "10020680",
          instid: "0345",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT3 9FQ"
        },
        "66439252-1a48-5d5b-bcee-95630550f7b5" => {
          provider_name: "Bell College",
          ukprn: "10007809",
          instid: "0198",
          name: "Crichton Campus, Dumfries",
          country: "Scotland",
          postcode: "DG1 4ZN"
        },
        "91fb7a9b-70ac-5476-bed4-3df67a38d721" => {
          provider_name: "Bell College",
          ukprn: "10007809",
          instid: "0198",
          name: "Main campus",
          country: "Scotland",
          postcode: "ML3 0JB"
        },
        "2d3095e2-7372-5159-9272-ba11c4422b57" => {
          provider_name: "Bexhill College",
          ukprn: "10000670",
          instid: "1188",
          name: "Main campus",
          country: "England",
          postcode: "TN40 2JG"
        },
        "03a4704d-9773-5517-a9a2-bfaa562a686d" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Berlin",
          country: "Germany"
        },
        "b0eeaf08-e9ee-5c63-8768-7a89d2339a32" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Birmingham",
          country: "England",
          postcode: "B5 5SR"
        },
        "41f07e52-a64b-5522-a8aa-f9c53b7ea0b9" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Brighton",
          country: "England",
          postcode: "BN3 1EL"
        },
        "7fdaf412-f12f-5c21-8b3d-3b994a0e6605" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Bristol",
          country: "England",
          postcode: "BS2 8JN"
        },
        "5a4f1da7-3f66-57c0-9cbd-d24c6b021df9" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Dublin",
          country: "Ireland"
        },
        "408ad01f-2331-5d55-8fa9-b5588ae6e232" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Hamburg",
          country: "Germany"
        },
        "b5eb00f2-8e75-5e30-ab7b-4430c4c36d26" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM London",
          country: "England",
          postcode: "SW6 1EN"
        },
        "46d62883-f2e8-52b4-9dde-4181c86e7ff7" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Manchester",
          country: "England",
          postcode: "M1 5NN"
        },
        "3c90f130-27b6-52b6-ad5f-2d6e939090e4" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "ICT Brighton",
          country: "England",
          postcode: "BN1 4GW"
        },
        "1dcd40ed-5054-5bc7-b914-52525cf17e31" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "ICT Manchester",
          country: "England",
          postcode: "M1 5QA"
        },
        "75cb118e-c179-5d2e-9365-fa40827513c2" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "Main campus",
          country: "England",
          postcode: "BN3 1EL"
        },
        "c055aaca-a2e5-5790-9e15-af2b06a5b2df" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "Performers College Birmingham",
          country: "England",
          postcode: "B5 5SR"
        },
        "1bc985c5-7ce3-5dc8-9877-3de576f390c5" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "Performers College Essex",
          country: "England",
          postcode: "SS17 8JS"
        },
        "e8062ffe-88ac-57fa-b05e-249a6ea61538" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "Performers College Rayleigh",
          country: "England",
          postcode: "SS6 7UY"
        },
        "7262343f-a34f-5cf7-b8a8-59ac6d601b9c" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "SFS Birmingham",
          country: "England",
          postcode: "B5 5SS"
        },
        "b031a272-dfb0-5775-b73d-6cec4d903c1e" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "SFS Brighton",
          country: "England",
          postcode: "BN1 1NH"
        },
        "8779f764-83fe-5f34-9271-f8e5f485183a" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "SFS Manchester",
          country: "England",
          postcode: "M3 3AN"
        },
        "fb5a5391-e605-5d53-b1e5-1e79530c081f" => {
          provider_name: "Bird College",
          ukprn: "10002011",
          instid: "0453",
          name: "Main campus",
          country: "England",
          postcode: "DA14 4ED"
        },
        "eafba8b3-afab-5b66-8b83-bdf2e94c2a40" => {
          provider_name: "Birkbeck College",
          ukprn: "10007760",
          instid: "0127",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1E 7HX"
        },
        "d5b85c2b-382f-5bb7-9a2d-bc0e7a3a60f6" => {
          provider_name: "Birmingham Christian College",
          ukprn: "10007810",
          instid: "0455",
          name: "Main campus",
          country: "England",
          postcode: "B29 6AJ"
        },
        "54bbe54c-7f5a-57c0-9ea4-21ae24f8be1b" => {
          provider_name: "Birmingham City University",
          ukprn: "10007140",
          instid: "0052",
          name: "Birmingham City University UAE Ras Al Khaimah Camp",
          country: "United Arab Emirates"
        },
        "24d34dea-19df-5452-b8ee-c9db9f19e706" => {
          provider_name: "Birmingham City University",
          ukprn: "10007140",
          instid: "0052",
          name: "City South Campus",
          country: "England",
          postcode: "B15 3TN"
        },
        "e50360c7-ec1f-5846-ba0e-20703cfb0119" => {
          provider_name: "Birmingham City University",
          ukprn: "10007140",
          instid: "0052",
          name: "Main campus",
          country: "England",
          postcode: "B4 7AP"
        },
        "4c8e510f-0e17-51e1-984b-8c69113ba49a" => {
          provider_name: "Birmingham City University",
          ukprn: "10007140",
          instid: "0052",
          name: "School of Art",
          country: "England",
          postcode: "B3 3BX"
        },
        "c9914062-5109-5bb1-ab3f-d4947e84ca63" => {
          provider_name: "Birmingham City University",
          ukprn: "10007140",
          instid: "0052",
          name: "School of Jewellery",
          country: "England",
          postcode: "B1 3PA"
        },
        "b4e410ac-6ddc-5fbf-98df-dce03d7716f8" => {
          provider_name: "Birmingham Metropolitan College",
          ukprn: "10006442",
          instid: "1169",
          name: "Main campus",
          country: "England",
          postcode: "B4 7PS"
        },
        "7f2c1762-c276-54b3-b245-c3b836bbb56a" => {
          provider_name: "Birmingham Newman University",
          ukprn: "10007832",
          instid: "0028",
          name: "Entire HEP",
          country: "England",
          postcode: "B32 3NT"
        },
        "9b10734f-4e47-5245-ba0a-95f5681c3a1e" => {
          provider_name: "Bishop Auckland College",
          ukprn: "10000720",
          instid: "1168",
          name: "Main campus",
          country: "England",
          postcode: "DL14 6JZ"
        },
        "92c44d13-f382-51e3-8a07-17da93f92932" => {
          provider_name: "Bishop Burton College",
          ukprn: "10000721",
          instid: "1167",
          name: "Main campus",
          country: "England",
          postcode: "HU17 8QG"
        },
        "df42f0bf-c960-5653-a111-f39d9a302bb2" => {
          provider_name: "Blackburn College",
          ukprn: "10000747",
          instid: "1166",
          name: "Main campus",
          country: "England",
          postcode: "BB2 1LH"
        },
        "5ae271f1-7d57-55a4-b4b5-aaff86510013" => {
          provider_name: "Blackpool and the Fylde College",
          ukprn: "10000754",
          instid: "1165",
          name: "Main campus",
          country: "England",
          postcode: "FY2 0HB"
        },
        "943431a5-3b76-507f-a628-0db5a7b09ce3" => {
          provider_name: "Bloomsbury Institute",
          ukprn: "10004061",
          instid: "0238",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1B 3RA"
        },
        "b4a36f79-2472-53d1-a430-240aa6978c14" => {
          provider_name: "BMC (Brooksby Melton College)",
          ukprn: "10000952",
          instid: "1154",
          name: "Main campus",
          country: "England",
          postcode: "LE13 0HJ"
        },
        "603d7453-3f0c-57b7-98e6-ceb7250e66ca" => {
          provider_name: "Bolton College",
          ukprn: "10000794",
          instid: "1164",
          name: "Main campus",
          country: "England",
          postcode: "BL3 5BG"
        },
        "7094e777-6ccb-5033-9722-22bae792938a" => {
          provider_name: "Boston College",
          ukprn: "10000812",
          instid: "1163",
          name: "Main campus",
          country: "England",
          postcode: "PE21 6JF"
        },
        "7245261e-b91a-5979-9df7-06a7fd583110" => {
          provider_name: "Bournemouth University",
          ukprn: "10000824",
          instid: "0050",
          name: "Entire HEP",
          country: "England",
          postcode: "BH12 5BB"
        },
        "1d00a739-6087-5854-9779-301b6d8a53d1" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Abingdon",
          country: "England",
          postcode: "OX14 1BZ"
        },
        "e5c482ac-1392-50ea-9fb1-2ce38efd10e4" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Basingstoke and North Hampshire Hospital",
          country: "England",
          postcode: "RG24 9NA"
        },
        "49741f02-468e-562c-af1c-a8da48764bb3" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Birmingham",
          country: "England",
          postcode: "B4 6BN"
        },
        "6f9422cb-1c62-56ec-839e-3a5f3e32b748" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "BPP University - London Waterloo",
          country: "England",
          postcode: "SE1 9NN"
        },
        "b6c6d5ac-647e-5606-9845-8861eb78b43d" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Bristol",
          country: "England",
          postcode: "BS1 4QY"
        },
        "461e4741-93c0-5a11-bcae-aa8144854e9a" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Cambridge",
          country: "England",
          postcode: "CB2 3NA"
        },
        "615d2066-91fe-5a1f-a729-ce0b7ac0336c" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Fitzwilliam House",
          country: "England",
          postcode: "EC3A 8BF"
        },
        "95e04ed9-23f6-5682-82f5-72b4c4f6de29" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Kettering General Hospital NHS Foundation Trust",
          country: "England",
          postcode: "NN16 8UZ"
        },
        "91f0f0f0-7853-501c-9b7e-d01cc6472452" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Leeds",
          country: "England",
          postcode: "LS1 4HR"
        },
        "b07e2036-15f3-5fa6-8a3f-24aa5945c508" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "London King's Cross",
          country: "England",
          postcode: "N1 9JY"
        },
        "4fb79ec7-0753-588e-a40c-7cb5858603ee" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "London Portsoken Street",
          country: "England",
          postcode: "E1 8BT"
        },
        "bf94b4a5-84c4-5cf6-af6d-553e67175b69" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Main campus",
          country: "England",
          postcode: "EC2M 5PD"
        },
        "bedb5bf4-8d5b-5c24-88cd-dbb2652b549d" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Manchester St James",
          country: "England",
          postcode: "M1 6FQ"
        },
        "468dd5f6-ca10-509a-ab09-2101358ddeac" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Red Lion Street",
          country: "England",
          postcode: "WC1R 4NY"
        },
        "1a11189c-ea83-577e-b26f-a447d19b9f1f" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Rotherham Doncaster and South Humber NHS Foundatio",
          country: "England",
          postcode: "DN4 8QN"
        },
        "09102591-00fd-5913-b74b-83cbcc99e2a2" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Shepherd's Bush",
          country: "England",
          postcode: "W12 8AW"
        },
        "3014d3ea-b424-5d83-9f8c-b69edc0b3767" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Southampton",
          country: "England",
          postcode: "SO14 0TB"
        },
        "80adc964-13ae-5306-988c-f785dde2de28" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "University Hospital Southampton NHS Foundation Tru",
          country: "England",
          postcode: "SO16 6YD"
        },
        "f58832a4-7036-54eb-8621-c2311a5f5823" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Waterloo",
          country: "England",
          postcode: "SE1 9NN"
        },
        "9d053773-9b5b-5e3d-8d4c-aabb8af9ce75" => {
          provider_name: "Bracknell and Wokingham College",
          ukprn: "10000833",
          instid: "1192",
          name: "Bracknell and Wokingham College",
          country: "England",
          postcode: "RG12 1DJ"
        },
        "cc951e2d-8c46-52d7-821a-4b2ad42d02ab" => {
          provider_name: "Bradford College",
          ukprn: "10000840",
          instid: "1161",
          name: "Main campus",
          country: "England",
          postcode: "BD7 1AY"
        },
        "049ae4e6-6573-5fb2-b099-0f6ef4ca54cf" => {
          provider_name: "Bridgwater and Taunton College",
          ukprn: "10000878",
          instid: "1158",
          name: "Main campus",
          country: "England",
          postcode: "TA1 5AX"
        },
        "baf2ccbb-19a7-5f86-827c-b9da6e9435b6" => {
          provider_name: "Brighton and Sussex Medical School",
          ukprn: "99999999",
          instid: "7006",
          name: "Main campus",
          country: "England",
          postcode: "BN1 9PX"
        },
        "bcb01bdc-efc8-5bf2-b5f7-fd66994f731c" => {
          provider_name: "Bristol Baptist College",
          ukprn: "10000894",
          instid: "0287",
          name: "Entire HEP",
          country: "England",
          postcode: "BS8 3NJ"
        },
        "2a47e1e7-ad21-5222-9a5a-58f5fb4dd526" => {
          provider_name: "Brit College",
          ukprn: "10028216",
          instid: "0280",
          name: "Entire HEP",
          country: "England",
          postcode: "E14 7HS"
        },
        "93586c92-f164-5c79-871d-9a3cff5a6d7f" => {
          provider_name: "British Academy of Jewellery Limited",
          ukprn: "10038772",
          instid: "0427",
          name: "Leicester",
          country: "England",
          postcode: "LE1 1WB"
        },
        "60988815-dcfd-52fe-ba6a-0132f0ebf8c0" => {
          provider_name: "British Academy of Jewellery Limited",
          ukprn: "10038772",
          instid: "0427",
          name: "Main campus",
          country: "England",
          postcode: "EC1A 2AT"
        },
        "4f7d95a5-48db-54a9-b6c9-5e30d715d59e" => {
          provider_name: "Brockenhurst College",
          ukprn: "10000944",
          instid: "1157",
          name: "Main campus",
          country: "England",
          postcode: "SO42 7ZE"
        },
        "0cb47d60-7191-5680-adb2-be77e899836b" => {
          provider_name: "Bromley College of Further and Higher Education",
          ukprn: "10000948",
          instid: "1155",
          name: "Main campus",
          country: "England",
          postcode: "BR2 8HE"
        },
        "e5624b13-d54b-5d38-9775-968e0696daf6" => {
          provider_name: "Brooklands College",
          ukprn: "10000950",
          instid: "1156",
          name: "Main campus",
          country: "England",
          postcode: "KT13 8TT"
        },
        "f1210144-b761-5d63-9e49-a44893962b64" => {
          provider_name: "Brunel University London",
          ukprn: "10000961",
          instid: "0113",
          name: "Entire HEP",
          country: "England",
          postcode: "UB8 3PH"
        },
        "6725f919-3fcc-5697-b409-aad51b5e1b47" => {
          provider_name: "Buckinghamshire New University",
          ukprn: "10000975",
          instid: "0009",
          name: "Main campus",
          country: "England",
          postcode: "HP11 2JZ"
        },
        "097e31b6-599b-5761-b5d8-29f82b99e584" => {
          provider_name: "Buckinghamshire New University",
          ukprn: "10000975",
          instid: "0009",
          name: "Uxbridge campus",
          country: "England",
          postcode: "UB8 1NA"
        },
        "937b2cfe-9ed5-53de-a2a7-ee2518ca4607" => {
          provider_name: "Burnley College",
          ukprn: "10001000",
          instid: "1152",
          name: "Main campus",
          country: "England",
          postcode: "BB12 0AN"
        },
        "26fc1bf6-55e7-5aed-ade9-986704f2d262" => {
          provider_name: "Burton and South Derbyshire College",
          ukprn: "10001004",
          instid: "1153",
          name: "Main campus",
          country: "England",
          postcode: "DE14 3RL"
        },
        "95cafa62-7427-50d7-9a77-9a74d6b3de41" => {
          provider_name: "Bury College",
          ukprn: "10001005",
          instid: "1151",
          name: "Main campus",
          country: "England",
          postcode: "BL9 0BG"
        },
        "5dbc989f-0834-5827-853a-6dfe47c97b02" => {
          provider_name: "Calderdale College",
          ukprn: "10001093",
          instid: "1150",
          name: "Main campus",
          country: "England",
          postcode: "HX1 3UZ"
        },
        "6d1e7c0c-0134-533c-bf4a-77ac848d7994" => {
          provider_name: "Cambridge Arts and Sciences Limited",
          ukprn: "10010308",
          instid: "0332",
          name: "Entire HEP",
          country: "England",
          postcode: "CB5 8AD"
        },
        "1ecef4dd-b996-5daa-a355-da9762feb041" => {
          provider_name: "Cambridge Regional College",
          ukprn: "10001116",
          instid: "1149",
          name: "Main campus",
          country: "England",
          postcode: "CB4 2QT"
        },
        "f224da85-fe58-599a-8fc9-a7a144b070f8" => {
          provider_name: "Canterbury Christ Church University",
          ukprn: "10001143",
          instid: "0012",
          name: "Broadstairs campus",
          country: "England",
          postcode: "CT10 2WA"
        },
        "81ea42f3-a5d8-593f-b121-7654b97ec986" => {
          provider_name: "Canterbury Christ Church University",
          ukprn: "10001143",
          instid: "0012",
          name: "Folkestone campus",
          country: "England",
          postcode: "CT20 1JG"
        },
        "3574a6d6-dc15-5901-898c-d7c0cb3100fa" => {
          provider_name: "Canterbury Christ Church University",
          ukprn: "10001143",
          instid: "0012",
          name: "Main campus",
          country: "England",
          postcode: "CT1 1QU"
        },
        "a973fbf9-4a21-5f1d-9128-a4bc8f7bb51a" => {
          provider_name: "Canterbury Christ Church University",
          ukprn: "10001143",
          instid: "0012",
          name: "Medway campus",
          country: "England",
          postcode: "ME4 4AW"
        },
        "e190182d-d458-5a49-b03d-c139e42fdf02" => {
          provider_name: "Canterbury Christ Church University",
          ukprn: "10001143",
          instid: "0012",
          name: "Salomons campus",
          country: "England",
          postcode: "TN3 0TG"
        },
        "7e2274a7-47b1-5bb8-bc40-aae2083f1e2f" => {
          provider_name: "Canterbury College",
          ukprn: "10001144",
          instid: "1148",
          name: "Main campus",
          country: "England",
          postcode: "CT1 3AJ"
        },
        "e2bcf0f0-537b-570f-8f71-cc01137ea9b7" => {
          provider_name: "Cardiff and Vale College",
          ukprn: "10034450",
          instid: "1199",
          name: "Main campus",
          country: "Wales",
          postcode: "CF10 5FE"
        },
        "abc35416-a5c5-5280-9a16-8196d0e3badc" => {
          provider_name: "Cardiff Metropolitan University",
          ukprn: "10007854",
          instid: "0089",
          name: "Entire HEP",
          country: "Wales",
          postcode: "CF5 2YB"
        },
        "0cbc64b6-8ac7-59cb-b99a-2cf2445ae985" => {
          provider_name: "Cardiff University",
          ukprn: "10007814",
          instid: "0179",
          name: "Main campus",
          country: "Wales",
          postcode: "CF10 3AT"
        },
        "23b0a989-465e-5fbc-b498-ef2450d22f1f" => {
          provider_name: "Cardiff University",
          ukprn: "10007814",
          instid: "0179",
          name: "National Software Academy",
          country: "Wales",
          postcode: "NP20 4AX"
        },
        "68c53fa0-3f28-5157-9b33-a07b731532b5" => {
          provider_name: "Cardinal Newman Catholic Sixth Form College",
          ukprn: "10001165",
          instid: "1147",
          name: "Main campus",
          country: "England",
          postcode: "PR1 4HD"
        },
        "b7ca4b05-d44f-58da-b059-03809b646139" => {
          provider_name: "Caspian School of Academics",
          ukprn: "10086359",
          instid: "0454",
          name: "Main campus",
          country: "England",
          postcode: "IG1 1BA"
        },
        "e6f0b5a3-ca24-5695-8728-e54e714ed0df" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Aston",
          country: "England",
          postcode: "B4 7ET"
        },
        "78d31c92-91af-52d3-ab33-851cca4f981a" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Birkbeck",
          country: "England",
          postcode: "WC1E 7HX"
        },
        "480ddefe-669c-5b8f-a13a-25b803a95b48" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Coventry",
          country: "England",
          postcode: "CV1 5FB"
        },
        "23ff7c47-fee9-5a92-980e-e9487d5382e7" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Hull",
          country: "England",
          postcode: "HU6 7RX"
        },
        "3cbc5ccd-a0eb-5a3e-894a-dbc7cca1ee9d" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "LSBU",
          country: "England",
          postcode: "SE1 6FE"
        },
        "d31e1e6f-7646-550d-bdea-d8f0414d0b94" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Reading",
          country: "England",
          postcode: "RG1 5AQ"
        },
        "3e8fa8ab-6f07-5805-b68b-9c95a1eb9008" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Southampton",
          country: "England",
          postcode: "SO15 2AT"
        },
        "b6ced920-d23d-5bda-8cdb-6f5094b5ccf6" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Sunderland",
          country: "England",
          postcode: "SR6 0DD"
        },
        "05168394-2363-50b5-ad5a-cbbf7fafa491" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "UK North",
          country: "England",
          postcode: "PR1 2XQ"
        },
        "cacd2052-468c-54af-a00a-9d17ef680c15" => {
          provider_name: "Central Bedfordshire College",
          ukprn: "10002061",
          instid: "1146",
          name: "Main campus",
          country: "England",
          postcode: "LU5 4HG"
        },
        "1b641380-cd6b-5efd-8abd-365a29bca081" => {
          provider_name: "Central Film School",
          ukprn: "10024024",
          instid: "0409",
          name: "Central Film School",
          country: "England",
          postcode: "SW9 9PH"
        },
        "e4329c5a-2e36-51cb-9715-9a5f66be8c74" => {
          provider_name: "Central School of Ballet",
          ukprn: "10001264",
          instid: "0446",
          name: "Main campus",
          country: "England",
          postcode: "SE1 8DJ"
        },
        "fa373220-1f27-5ed2-a978-41eb1b45844d" => {
          provider_name: "Centre for Alternative Technology",
          ukprn: "10021550",
          instid: "1196",
          name: "Main campus",
          country: "Wales",
          postcode: "SY20 9AZ"
        },
        "6433774e-15bf-5337-b45e-1acd45edc325" => {
          provider_name: "Cheshire College South and West",
          ukprn: "10005972",
          instid: "1142",
          name: "Main campus",
          country: "England",
          postcode: "CW2 8AB"
        },
        "ec572bb6-0b14-5c84-9dce-39d61e76d069" => {
          provider_name: "Chesterfield College",
          ukprn: "10001378",
          instid: "1144",
          name: "Main campus",
          country: "England",
          postcode: "S41 7NG"
        },
        "6a874d62-8582-534b-b814-69da5af6fa48" => {
          provider_name: "Chichester College Group",
          ukprn: "10007817",
          instid: "1143",
          name: "Main campus",
          country: "England",
          postcode: "PO19 1SB"
        },
        "115c4d92-3946-5878-a756-2c483a8a1c9b" => {
          provider_name: "Chicken Shed Theatre Company",
          ukprn: "10001386",
          instid: "0284",
          name: "Entire HEP",
          country: "England",
          postcode: "N14 4PE"
        },
        "b89b62fd-9230-596e-b2e2-3aba3069ba6a" => {
          provider_name: "Christ the Redeemer College",
          ukprn: "10026921",
          instid: "0342",
          name: "Entire HEP",
          country: "England",
          postcode: "HA2 7LX"
        },
        "6f477222-e186-5ebb-a0b8-e2bbb01041cf" => {
          provider_name: "Christie's Education Limited",
          ukprn: "10001419",
          instid: "0291",
          name: "Entire HEP",
          country: "England",
          postcode: "W1B 1NB"
        },
        "79bb7ff2-a0ea-5c11-83eb-42e55a9f6209" => {
          provider_name: "Cirencester College",
          ukprn: "10001446",
          instid: "1141",
          name: "Main campus",
          country: "England",
          postcode: "GL7 1XA"
        },
        "a73be3a7-96d4-5d87-b98b-07abb8d95488" => {
          provider_name: "City and Guilds of London Art School",
          ukprn: "10039082",
          instid: "0292",
          name: "Entire HEP",
          country: "England",
          postcode: "SE11 4DJ"
        },
        "429ad2a1-b484-5541-acc7-b02770ec25f3" => {
          provider_name: "City College Norwich",
          ukprn: "10004772",
          instid: "1072",
          name: "Main campus",
          country: "England",
          postcode: "NR2 2LJ"
        },
        "cc72493f-7199-58c4-86eb-b6443bd0c617" => {
          provider_name: "City College Plymouth",
          ukprn: "10005128",
          instid: "1063",
          name: "Main campus",
          country: "England",
          postcode: "PL1 5QG"
        },
        "42df20a6-49ce-551c-8ad2-a2fd11326b7f" => {
          provider_name: "City of Bristol College",
          ukprn: "10001467",
          instid: "1159",
          name: "Main campus",
          country: "England",
          postcode: "BS1 5UA"
        },
        "d32d7358-f0dd-5288-a0f9-89d922f02121" => {
          provider_name: "City of London College",
          ukprn: "10018361",
          instid: "0234",
          name: "Main campus",
          country: "England",
          postcode: "E1 7PL"
        },
        "bfeeee58-131f-5c37-8494-9b0709dc327a" => {
          provider_name: "City of Portsmouth College",
          ukprn: "10007945",
          instid: "1103",
          name: "Main campus",
          country: "England",
          postcode: "PO6 2SA"
        },
        "a085e71f-ccef-5d73-a0a7-fd3434b09752" => {
          provider_name: "City of Sunderland College",
          ukprn: "10001475",
          instid: "1029",
          name: "Main campus",
          country: "England",
          postcode: "SR3 4AH"
        },
        "15a38abd-288c-57a4-834f-4deb6e06fb74" => {
          provider_name: "City of Wolverhampton College",
          ukprn: "10007578",
          instid: "1005",
          name: "Main campus",
          country: "England",
          postcode: "WV6 0DU"
        },
        "1b0df6a6-d39c-52af-a1d4-b0b0531e02d0" => {
          provider_name: "City St George's, University of London",
          ukprn: "10001478",
          instid: "0115",
          name: "Entire HEP",
          country: "England",
          postcode: "EC1V 0HB"
        },
        "63af334e-a953-5318-8b88-3f14408ed41b" => {
          provider_name: "Cliff College",
          ukprn: "10007912",
          instid: "0293",
          name: "Entire HEP",
          country: "England",
          postcode: "S32 3XG"
        },
        "0e2ff8ea-3e26-5ae9-877a-cc3f62f724e0" => {
          provider_name: "Colchester Institute",
          ukprn: "10001535",
          instid: "1140",
          name: "Main campus",
          country: "England",
          postcode: "CO3 3LL"
        },
        "541ae611-00a1-5f4b-8075-45788c125f57" => {
          provider_name: "Coleg Cambria",
          ukprn: "10041295",
          instid: "1201",
          name: "Main campus",
          country: "Wales",
          postcode: "LL12 7AB"
        },
        "82ad3d1f-01bc-59c5-bada-392c88b8b9c7" => {
          provider_name: "Coleg Gwent",
          ukprn: "10008912",
          instid: "1200",
          name: "Main campus",
          country: "Wales",
          postcode: "NP15 1XJ"
        },
        "28e33dab-1ff4-5337-ac50-4d618fcfe458" => {
          provider_name: "Collective Acting Studio",
          ukprn: "10091065",
          instid: "0462",
          name: "Main campus",
          country: "England",
          postcode: "N7 7EE"
        },
        "394f74e1-4ec5-5a58-a399-a524af08bd2f" => {
          provider_name: "College of Legal Practice Limited",
          ukprn: "10082828",
          instid: "0436",
          name: "Entire HEP",
          country: "England",
          postcode: "LS1 5AB"
        },
        "62e53918-604e-5252-93ef-0412174a3f26" => {
          provider_name: "College of Medicine and Dentistry",
          ukprn: "10083397",
          instid: "0460",
          name: "Main campus",
          country: "England",
          postcode: "B4 6BN"
        },
        "78eb2cd7-ccc2-5422-8580-8632b45c001b" => {
          provider_name: "Commonwealth College of Excellence",
          ukprn: "10020038",
          instid: "0451",
          name: "Main campus",
          country: "England",
          postcode: "EC1V 2NX"
        },
        "05e7e251-a27e-5e01-99b6-07d8623605d3" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Bristol Old Vic Theatre School",
          country: "England",
          postcode: "BS8 2XF"
        },
        "f7b456f4-0642-50cd-ac45-a55383c3fe35" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Central School of Ballet",
          country: "England",
          postcode: "SE1 8DJ"
        },
        "928993c5-36f4-5443-8467-63c31d0094c7" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Conservatoire Central Office",
          country: "England",
          postcode: "W1F 8FL"
        },
        "ba261e78-be2d-5ed2-b7ba-c49ea5c085f2" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "LCDS",
          country: "England",
          postcode: "WC1H 9PY"
        },
        "a670b15c-1d5b-52cc-afaf-d831d7f5f0b1" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "London Academy of Music and Dramatic Art",
          country: "England",
          postcode: "W14 9DA"
        },
        "3c7d0fd1-82d2-5b6d-8411-c28881c777f5" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "London Contemporary Dance School",
          country: "England",
          postcode: "WC1H 9AT"
        },
        "60e082bc-0157-59c4-84bf-4fcc880739b3" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "National Centre for Circus Arts",
          country: "England",
          postcode: "N1 6HD"
        },
        "34f40be9-e886-5516-881e-efe1146146c2" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Northern School of Contemporary Dance",
          country: "England",
          postcode: "LS7 4BH"
        },
        "940ac68b-c25b-50b8-a85a-72c68a2e09fb" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Rambert School of Ballet and Contemporary Dance",
          country: "England",
          postcode: "TW1 1QN"
        },
        "142fa512-1e60-59d2-84de-4a6c6a993f01" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Royal Academy of Dramatic Art",
          country: "England",
          postcode: "WC1E 6ED"
        },
        "3cd7a87c-abb6-5243-b3ee-f5ac20339b82" => {
          provider_name: "Corndel College London",
          ukprn: "10089288",
          instid: "0463",
          name: "Main campus",
          country: "England",
          postcode: "EC1V 9AZ"
        },
        "34397cc4-6cef-5787-9c7b-06c3e2aa5001" => {
          provider_name: "Cornwall College",
          ukprn: "10001696",
          instid: "1136",
          name: "Main campus",
          country: "England",
          postcode: "PL25 4DJ"
        },
        "e8f9afbd-4e9a-50e4-a52a-dbb4411c56ae" => {
          provider_name: "Court Theatre Training Company Ltd",
          ukprn: "10034324",
          instid: "0326",
          name: "Main campus",
          country: "England",
          postcode: "N1 6EU"
        },
        "5fc91252-30f7-5359-806a-bd999a8d14f0" => {
          provider_name: "Court Theatre Training Company Ltd",
          ukprn: "10034324",
          instid: "0326",
          name: "Pitfield Street",
          country: "England",
          postcode: "N1 6EU"
        },
        "4cbe8ca9-4d27-5980-a12c-120025b05bb2" => {
          provider_name: "Courtauld Institute of Art",
          ukprn: "10007761",
          instid: "0201",
          name: "Entire HEP",
          country: "England",
          postcode: "WC2R 0RN"
        },
        "adb1c68f-6cd5-5df5-ae00-1a5e157afe23" => {
          provider_name: "Coventry College",
          ukprn: "10003010",
          instid: "1138",
          name: "Main campus",
          country: "England",
          postcode: "CV2 1ED"
        },
        "70397275-f6ff-550d-b15f-21f4bdab86b7" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "Coventry University London Campus",
          country: "England",
          postcode: "E1 7JF"
        },
        "daaffc04-3f47-54f4-9c02-cce987aa424c" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "Coventry University Wroclaw",
          country: "Poland"
        },
        "05cfcfa1-9484-552a-8732-a07de1ded7b1" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "CU London (Dagenham)",
          country: "England",
          postcode: "RM10 7BN"
        },
        "bd64f87f-3abc-5e03-a94b-2a8ef546d1f4" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "CU London (Greenwich)",
          country: "England",
          postcode: "SE10 0ER"
        },
        "6d53bfe2-87b5-5df4-a284-99eb139c6534" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "CU Scarborough",
          country: "England",
          postcode: "YO11 2JW"
        },
        "609a8569-bb81-5b96-99af-5c8bbb173061" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "Main campus",
          country: "England",
          postcode: "CV1 5FB"
        },
        "4abe09e9-11e1-56d7-a298-9f1f207a5663" => {
          provider_name: "Cranfield University",
          ukprn: "10007822",
          instid: "0002",
          name: "India",
          country: "India"
        },
        "69b19c84-a9eb-542e-845f-bd1f8ab95552" => {
          provider_name: "Cranfield University",
          ukprn: "10007822",
          instid: "0002",
          name: "Main campus",
          country: "England",
          postcode: "MK43 0AL"
        },
        "ca715226-2777-5bd4-8793-91afc8d7ec3a" => {
          provider_name: "Cranfield University",
          ukprn: "10007822",
          instid: "0002",
          name: "Milton Keynes",
          country: "England",
          postcode: "MK9 1LT"
        },
        "ed975314-8abb-5e36-9da6-8451f3ca68d2" => {
          provider_name: "Cranfield University",
          ukprn: "10007822",
          instid: "0002",
          name: "Shrivenham",
          country: "England",
          postcode: "SN6 8LA"
        },
        "4ac2e7ba-9fbc-5fd1-b931-d441e25f72e3" => {
          provider_name: "Cranfield University",
          ukprn: "10007822",
          instid: "0002",
          name: "Silsoe",
          country: "England",
          postcode: "MK45 4DT"
        },
        "67bcdbd6-46cd-569a-9e8c-9c5ee8f7f765" => {
          provider_name: "Craven College",
          ukprn: "10001743",
          instid: "1137",
          name: "Main campus",
          country: "England",
          postcode: "BD23 1US"
        },
        "9660e3af-7143-5a82-b220-2b47d8ea3400" => {
          provider_name: "Croydon College",
          ukprn: "10001778",
          instid: "1135",
          name: "Main campus",
          country: "England",
          postcode: "CR9 1DX"
        },
        "4d50f7b7-085f-52e7-a66e-c6faa0f248ff" => {
          provider_name: "Cumbria Institute of the Arts",
          ukprn: "10001802",
          instid: "0192",
          name: "Entire institution",
          country: "England",
          postcode: "CA3 9AY"
        },
        "adfe9bb5-1552-5ab3-b451-2df73e487980" => {
          provider_name: "Dartington College of Arts",
          ukprn: "10001856",
          instid: "0015",
          name: "Entire institution",
          country: "England",
          postcode: "TQ9 6EJ"
        },
        "4d4a2a39-6da8-5011-bdf9-9123fff8211d" => {
          provider_name: "Dartington Hall Trust (The)",
          ukprn: "10026767",
          instid: "0420",
          name: "Dartington Arts School",
          country: "England",
          postcode: "TQ9 6EL"
        },
        "dc1f9990-c004-5cc3-991f-5bec8b7c6164" => {
          provider_name: "Dartington Hall Trust (The)",
          ukprn: "10026767",
          instid: "0420",
          name: "Schumacher College",
          country: "England",
          postcode: "TQ9 6EA"
        },
        "535ea106-f646-5e12-982d-c4cd39c45377" => {
          provider_name: "David Game College Ltd",
          ukprn: "10015688",
          instid: "0419",
          name: "Entire HEP",
          country: "England",
          postcode: "EC3N 2ET"
        },
        "2ab52f38-a66d-5b09-80e5-7eb876906637" => {
          provider_name: "DCG",
          ukprn: "10001919",
          instid: "1134",
          name: "Main campus",
          country: "England",
          postcode: "DE24 8JE"
        },
        "8d5325d1-cd78-5a81-99cf-3512d458e4af" => {
          provider_name: "De Montfort University",
          ukprn: "10001883",
          instid: "0068",
          name: "Bedford campus",
          country: "England",
          postcode: "MK40 2BZ"
        },
        "9e3afd7c-5190-5e7d-a712-e1fe927dfa90" => {
          provider_name: "De Montfort University",
          ukprn: "10001883",
          instid: "0068",
          name: "Entire HEP",
          country: "England",
          postcode: "LE1 9BH"
        },
        "3606c4f8-354e-5ec5-8a87-8b60e32794d9" => {
          provider_name: "DN Colleges Group",
          ukprn: "10004695",
          instid: "1133",
          name: "Main campus",
          country: "England",
          postcode: "DN1 2RF"
        },
        "9d70c3ff-c7ec-5b72-914a-b60541402906" => {
          provider_name: "Dudley College of Technology",
          ukprn: "10007924",
          instid: "1132",
          name: "Main campus",
          country: "England",
          postcode: "DY1 4AS"
        },
        "8ee7c80b-cc6f-514d-bf8f-8b47229d2e9e" => {
          provider_name: "Dyson Technical Training Limited",
          ukprn: "10067355",
          instid: "0415",
          name: "Entire HEP",
          country: "England",
          postcode: "SN16 0RP"
        },
        "4c4638e0-7cc7-55a5-b4a5-2c7a6ed0ef5a" => {
          provider_name: "Ealing, Hammersmith & West London College",
          ukprn: "10002094",
          instid: "1115",
          name: "Main campus",
          country: "England",
          postcode: "W14 9BL"
        },
        "f51cf209-0069-587e-9d9b-921eaabb1840" => {
          provider_name: "East End Computing and Business College Limited",
          ukprn: "10002113",
          instid: "0253",
          name: "Main campus",
          country: "England",
          postcode: "E1 1PX"
        },
        "823babe2-acf4-5fd5-9ce8-aecbefd3f11c" => {
          provider_name: "East Riding College",
          ukprn: "10002126",
          instid: "1129",
          name: "Main campus",
          country: "England",
          postcode: "HU17 0GH"
        },
        "d8d09160-0321-55b2-8747-581883eab1ff" => {
          provider_name: "East Surrey College",
          ukprn: "10002130",
          instid: "1128",
          name: "Main campus",
          country: "England",
          postcode: "RH1 2JX"
        },
        "272b71b4-80b5-5d53-87b0-2a0847c8a965" => {
          provider_name: "East Sussex College Group",
          ukprn: "10002923",
          instid: "1127",
          name: "Main campus",
          country: "England",
          postcode: "BN21 2UF"
        },
        "7843637a-0c54-5620-a10c-7549932e6633" => {
          provider_name: "Eastleigh College",
          ukprn: "10002143",
          instid: "1130",
          name: "Main campus",
          country: "England",
          postcode: "SO50 5FS"
        },
        "f04da92c-1fa3-5c7f-aaec-d5601afc3935" => {
          provider_name: "Easton and Otley College",
          ukprn: "10037344",
          instid: "1194",
          name: "Main campus",
          country: "England",
          postcode: "NR9 5DX"
        },
        "6b7812dd-9a3f-5298-adb9-28d17e3e489c" => {
          provider_name: "Edge Hill University",
          ukprn: "10007823",
          instid: "0016",
          name: "Entire HEP",
          country: "England",
          postcode: "L39 4QP"
        },
        "3cc93209-0349-5329-a796-c160c3ffa4d9" => {
          provider_name: "Edinburgh College of Art",
          ukprn: "10007824",
          instid: "0096",
          name: "Entire institution",
          country: "Scotland",
          postcode: "EH3 9DF"
        },
        "64ec6492-75fc-59c3-9134-a2f853349f63" => {
          provider_name: "Edinburgh Napier University",
          ukprn: "10007772",
          instid: "0107",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "EH14 1DJ"
        },
        "b2a03b48-cef0-568c-90ce-ae742a6abccb" => {
          provider_name: "EKC GROUP",
          ukprn: "10006570",
          instid: "1187",
          name: "Main campus",
          country: "England",
          postcode: "CT10 1PN"
        },
        "df8d68db-5b3d-5672-8228-7e69701dfbad" => {
          provider_name: "EM Normandie UK Ltd",
          ukprn: "10082026",
          instid: "0468",
          name: "Main campus",
          country: "England",
          postcode: "OX1 1SA"
        },
        "cb04b6f6-3be2-51b2-9e49-6560e002975a" => {
          provider_name: "Emmanuel Theological College",
          ukprn: "10032295",
          instid: "0473",
          name: "Main campus",
          country: "England",
          postcode: "WA4 4GE"
        },
        "4864fc43-3668-5af7-b524-10780e4d0d94" => {
          provider_name: "Empire College London Limited",
          ukprn: "10022047",
          instid: "0252",
          name: "Entire HEP",
          country: "England",
          postcode: "IG1 1BA"
        },
        "d60b757b-1f9a-57f5-9403-d58cce287edf" => {
          provider_name: "Engineering College of Technology Limited",
          ukprn: "10089771",
          instid: "0461",
          name: "Main campus",
          country: "England",
          postcode: "KT4 7AT"
        },
        "ac2819d5-9971-5f55-9513-4136ebeed9fe" => {
          provider_name: "Escape Studios",
          ukprn: "10042570",
          instid: "0262",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1V 7BH"
        },
        "23185b79-fde1-54c3-8bb9-c4db87d9f123" => {
          provider_name: "ESCP Europe Business School",
          ukprn: "10002313",
          instid: "0410",
          name: "Entire HEP",
          country: "England",
          postcode: "NW3 7BG"
        },
        "95853ea4-c027-5fec-86f7-db43ab7cd9b4" => {
          provider_name: "EThames Graduate School Limited",
          ukprn: "10008229",
          instid: "0235",
          name: "Main campus",
          country: "England",
          postcode: "IG2 6NQ"
        },
        "c7728004-d195-5afc-a3f2-1c53b91018b0" => {
          provider_name: "European School of Osteopathy",
          ukprn: "10002344",
          instid: "7009",
          name: "Entire HEP",
          country: "England",
          postcode: "ME14 3DZ"
        },
        "5e1af80d-5602-5355-8bf1-4f517f2c5f1c" => {
          provider_name: "Exeter College",
          ukprn: "10002370",
          instid: "1126",
          name: "Main campus",
          country: "England",
          postcode: "EX4 4JS"
        },
        "e7b7e6f6-14da-5544-b1a6-6636c949f5fd" => {
          provider_name: "Fairfield School of Business Ltd",
          ukprn: "10033187",
          instid: "0254",
          name: "Main campus",
          country: "England",
          postcode: "CR0 1NX"
        },
        "f636df24-3ffb-5d94-8940-224daeed8074" => {
          provider_name: "Falmouth University",
          ukprn: "10008640",
          instid: "0017",
          name: "Dartington Campus",
          country: "England",
          postcode: "TQ9 6EJ"
        },
        "b9c231e4-2050-557f-b1c7-7f18cc0aad71" => {
          provider_name: "Falmouth University",
          ukprn: "10008640",
          instid: "0017",
          name: "Main campus",
          country: "England",
          postcode: "TR11 4RH"
        },
        "4b1149d0-a486-5241-b3b3-dcf53a821e75" => {
          provider_name: "Falmouth University",
          ukprn: "10008640",
          instid: "0017",
          name: "Penryn",
          country: "England",
          postcode: "TR10 9FE"
        },
        "01fd3040-abf1-5796-8632-07464ee26475" => {
          provider_name: "Farnborough College of Technology",
          ukprn: "10002412",
          instid: "1124",
          name: "Main campus",
          country: "England",
          postcode: "GU14 6SB"
        },
        "de6a7f81-c21f-55b3-afe7-65e1afdf09a2" => {
          provider_name: "ForMission Ltd",
          ukprn: "10038763",
          instid: "0248",
          name: "Main campus",
          country: "England",
          postcode: "B30 1HH"
        },
        "fc70b563-e159-5cc8-a518-16653a2ba901" => {
          provider_name: "Furness College",
          ukprn: "10002599",
          instid: "1123",
          name: "Main campus",
          country: "England",
          postcode: "LA14 2PJ"
        },
        "56c4ca85-5375-5977-a31d-cc9d2ffb0038" => {
          provider_name: "Futureworks",
          ukprn: "10022087",
          instid: "0281",
          name: "Entire HEP",
          country: "England",
          postcode: "M3 5FS"
        },
        "ab6b22d6-818f-5dae-8b0b-b8f2e548040a" => {
          provider_name: "Gateshead College",
          ukprn: "10002638",
          instid: "1122",
          name: "Main campus",
          country: "England",
          postcode: "NE8 3BE"
        },
        "77c8f963-6f4f-59a7-85e7-12abcea0db4c" => {
          provider_name: "Glasgow Caledonian University",
          ukprn: "10007762",
          instid: "0106",
          name: "London Campus",
          country: "England",
          postcode: "E1 6PX"
        },
        "d32837aa-c4d8-5ca1-857f-90b708daf038" => {
          provider_name: "Glasgow Caledonian University",
          ukprn: "10007762",
          instid: "0106",
          name: "Main campus",
          country: "Scotland",
          postcode: "G4 0BA"
        },
        "2ed01728-84be-5726-b95a-d64ad987a764" => {
          provider_name: "Glasgow School of Art",
          ukprn: "10002681",
          instid: "0097",
          name: "FORRES",
          country: "Scotland",
          postcode: "IV36 2SH"
        },
        "f2fd854a-36b4-5eb1-b358-94584ae2f0ee" => {
          provider_name: "Glasgow School of Art",
          ukprn: "10002681",
          instid: "0097",
          name: "Main campus",
          country: "Scotland",
          postcode: "G3 6RQ"
        },
        "fce87b5c-0540-5abc-9910-0696c3c7397c" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Birmingham - Fazeley St",
          country: "England",
          postcode: "B5 5SE"
        },
        "f8e83012-07ef-5351-9252-4c330644cd5b" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Global Education House",
          country: "England",
          postcode: "E15 2JA"
        },
        "882f28e7-8133-5acb-b2ad-7dc89f8171fe" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Leeds",
          country: "England",
          postcode: "LS1 3DL"
        },
        "2ad81c54-60a6-5bc2-83d7-d4e74fca51e1" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "London - Greenford Road",
          country: "England",
          postcode: "UB6 0HE"
        },
        "bd8d1fc7-0e80-5dae-94de-e07e99e789d9" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "London - Republic",
          country: "England",
          postcode: "E14 2BE"
        },
        "8399819e-7b31-5a86-ba5c-68957c495df2" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Main campus",
          country: "England",
          postcode: "E3 2SE"
        },
        "d1496243-fc6a-58ea-8b2f-8c27da283689" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Manchester",
          country: "England",
          postcode: "M12 6JH"
        },
        "057670cc-d9ab-5ccd-8dfa-f5dc3acc902b" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Stratford - Cam Road",
          country: "England",
          postcode: "E15 2SN"
        },
        "529e6362-0fec-50a7-9bb7-8f3d3f675df2" => {
          provider_name: "Gloucestershire College",
          ukprn: "10002696",
          instid: "1121",
          name: "Main campus",
          country: "England",
          postcode: "GL51 7SJ"
        },
        "fca2dfbf-f81c-5d9f-9376-a89327c66d5a" => {
          provider_name: "Goldsmiths College",
          ukprn: "10002718",
          instid: "0131",
          name: "Entire HEP",
          country: "England",
          postcode: "SE14 6NW"
        },
        "9b6338ea-c133-535c-9843-0a8fe617fc29" => {
          provider_name: "Gower College Swansea",
          ukprn: "10030408",
          instid: "0336",
          name: "Entire HEP",
          country: "Wales",
          postcode: "SA2 9EB"
        },
        "28c65f16-71ae-5bb6-a38d-fb4f28169980" => {
          provider_name: "Grafton College",
          ukprn: "10002735",
          instid: "0245",
          name: "Main campus",
          country: "England",
          postcode: "W1D 2HY"
        },
        "30769f36-c531-559b-adee-316285d3f5fc" => {
          provider_name: "Grantham College",
          ukprn: "10002743",
          instid: "1120",
          name: "Main campus",
          country: "England",
          postcode: "NG31 9AP"
        },
        "742f84c0-67fc-5841-971e-5870713eb93e" => {
          provider_name: "Greater Brighton Metropolitan College",
          ukprn: "10004736",
          instid: "1160",
          name: "Main campus",
          country: "England",
          postcode: "BN1 4FA"
        },
        "d84c8204-234c-5f6d-8a4d-480101b315f7" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Abergele",
          country: "Wales",
          postcode: "LL22 7HT"
        },
        "ad5bd059-54c0-5c5b-98a1-e8ea258a778a" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Bangor",
          country: "Wales",
          postcode: "LL57 2TP"
        },
        "02acd7c2-ce4a-5dcc-8085-8ca4a3851d7c" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Denbigh",
          country: "Wales",
          postcode: "LL16 3SY"
        },
        "3a7efee6-4562-5412-ae2e-bdb1aea38443" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Dolgellau",
          country: "Wales",
          postcode: "LL40 2SW"
        },
        "3660d159-4b49-548a-a96c-957b252e856f" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Glynllifon",
          country: "Wales",
          postcode: "LL54 5DU"
        },
        "4f501ae2-9cb1-558d-bdaa-0d4271640c35" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Llangefni",
          country: "Wales",
          postcode: "LL77 7HY"
        },
        "0cb35685-b280-58d5-9ef5-4a2d731a12ce" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Main campus",
          country: "Wales",
          postcode: "LL28 4HZ"
        },
        "48ca7557-57a4-5cab-b5bf-5cb8d6ffe1cd" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Parc Menai",
          country: "Wales",
          postcode: "LL57 4BN"
        },
        "c45e64a8-0c0e-581d-8c2d-b312c3101a57" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Pwllheli",
          country: "Wales",
          postcode: "LL53 5EB"
        },
        "6baa31d6-9265-5147-a3f0-caed7e0f34ed" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Rhyl",
          country: "Wales",
          postcode: "LL18 2HG"
        },
        "62327e71-c75e-5fbc-9d8c-136c289cd1f1" => {
          provider_name: "Grŵp NPTC Group",
          ukprn: "10009614",
          instid: "0335",
          name: "Afan Campus",
          country: "Wales",
          postcode: "SA13 2AL"
        },
        "61f5d9ae-02eb-5c50-9133-ea2c88997dd0" => {
          provider_name: "Grŵp NPTC Group",
          ukprn: "10009614",
          instid: "0335",
          name: "Brecon Beacons Campus",
          country: "Wales",
          postcode: "LD3 9SR"
        },
        "9dee1101-2479-5754-94c3-045c9e04a59c" => {
          provider_name: "Grŵp NPTC Group",
          ukprn: "10009614",
          instid: "0335",
          name: "Llandarcy",
          country: "Wales",
          postcode: "SA10 6JD"
        },
        "b21f4319-b259-565d-9045-63ac78186d90" => {
          provider_name: "Grŵp NPTC Group",
          ukprn: "10009614",
          instid: "0335",
          name: "Main campus",
          country: "Wales",
          postcode: "SA10 7RF"
        },
        "c47b60c8-b30a-5e42-8fc4-de143facf469" => {
          provider_name: "Grŵp NPTC Group",
          ukprn: "10009614",
          instid: "0335",
          name: "Newtown Campus",
          country: "Wales",
          postcode: "SY16 4HU"
        },
        "abc631bf-555c-54ca-8ac2-98135bec2f27" => {
          provider_name: "GSM London",
          ukprn: "10007937",
          instid: "0215",
          name: "Greenford Campus",
          country: "England",
          postcode: "UB6 0HE"
        },
        "71b5e0f5-cbe8-5d5c-8b22-4c9bedde07e9" => {
          provider_name: "GSM London",
          ukprn: "10007937",
          instid: "0215",
          name: "Main campus",
          country: "England",
          postcode: "SE1 4LG"
        },
        "04131b4f-279c-5291-b606-b338710ee870" => {
          provider_name: "Guildford College of Further and Higher Education",
          ukprn: "10002815",
          instid: "1118",
          name: "Main campus",
          country: "England",
          postcode: "GU1 1EZ"
        },
        "b7cd28ed-d923-5d3e-bb40-105f73f8887f" => {
          provider_name: "Guildhall School of Music and Drama",
          ukprn: "10007825",
          instid: "0208",
          name: "Entire HEP",
          country: "England",
          postcode: "EC2Y 8DT"
        },
        "52ccf4ac-f254-5d16-9361-cecb21715f24" => {
          provider_name: "Hadlow College",
          ukprn: "10002843",
          instid: "1117",
          name: "Main campus",
          country: "England",
          postcode: "TN11 0AL"
        },
        "d54e7b71-72a1-50fe-b91a-e4767b5648a8" => {
          provider_name: "Halesowen College",
          ukprn: "10002852",
          instid: "1116",
          name: "Main campus",
          country: "England",
          postcode: "B63 3NA"
        },
        "eee24115-a2ad-52a0-8002-0511712e3494" => {
          provider_name: "Harlow College",
          ukprn: "10002899",
          instid: "1114",
          name: "Main campus",
          country: "England",
          postcode: "CM20 3EZ"
        },
        "4361c5fd-6547-5ba2-9346-a50e7e568495" => {
          provider_name: "Harper Adams University",
          ukprn: "10040812",
          instid: "0018",
          name: "Entire HEP",
          country: "England",
          postcode: "TF10 8NB"
        },
        "cd735671-18c0-53cd-82b6-15df5a7da2fd" => {
          provider_name: "Harper and Keele Veterinary School",
          ukprn: "90000451",
          instid: "0411",
          name: "Main campus",
          country: "England",
          postcode: "TF10 8NB"
        },
        "d40ab41a-f7ce-5ad8-9b30-5885af61b8f3" => {
          provider_name: "Harrow, Richmond & Uxbridge College (HRUC)",
          ukprn: "10007193",
          instid: "1110",
          name: "Main campus",
          country: "England",
          postcode: "UB8 1NQ"
        },
        "3379586a-85e3-56ef-95ff-3e65cc5d454b" => {
          provider_name: "Hartpury College",
          ukprn: "10002919",
          instid: "1113",
          name: "Main campus",
          country: "England",
          postcode: "GL19 3BE"
        },
        "57bd366c-a1b0-5330-be56-7a0cba42bf67" => {
          provider_name: "Hartpury College of Further Education",
          ukprn: "10080810",
          instid: "1184",
          name: "Main campus",
          country: "England",
          postcode: "GL19 3BE"
        },
        "6589b62f-5871-521b-9ca0-b42216874af1" => {
          provider_name: "Hartpury University",
          ukprn: "10080811",
          instid: "0352",
          name: "Entire HEP",
          country: "England",
          postcode: "GL19 3BE"
        },
        "2509afae-eeed-5064-98d8-25895326989f" => {
          provider_name: "Havant and South Downs College",
          ukprn: "10005979",
          instid: "1112",
          name: "Main campus",
          country: "England",
          postcode: "PO7 8AA"
        },
        "ee452d5b-f1e7-5d49-871c-00d059b6f939" => {
          provider_name: "Havering College of Further and Higher Education",
          ukprn: "10002935",
          instid: "1111",
          name: "Main campus",
          country: "England",
          postcode: "RM11 2LL"
        },
        "6a975762-340e-5d25-9693-ae36ab18ea26" => {
          provider_name: "Health Sciences University",
          ukprn: "10000163",
          instid: "0213",
          name: "Entire HEP",
          country: "England",
          postcode: "BH5 2DF"
        },
        "c1781205-d419-53e9-8b59-100059289791" => {
          provider_name: "Heart of Worcestershire College",
          ukprn: "10007977",
          instid: "1004",
          name: "Main campus",
          country: "England",
          postcode: "WR1 2JF"
        },
        "7db923fc-be31-5201-815f-d35c21352dac" => {
          provider_name: "Heart of Yorkshire Education Group",
          ukprn: "10007289",
          instid: "1019",
          name: "Main campus",
          country: "England",
          postcode: "WF1 2DH"
        },
        "265af842-7aa7-50f4-a0c3-20a8d05b5121" => {
          provider_name: "Hereford College of Arts",
          ukprn: "10003022",
          instid: "1108",
          name: "Main campus",
          country: "England",
          postcode: "HR1 1LT"
        },
        "49aaa44e-6442-5dca-84d2-599d7eefce16" => {
          provider_name: "Herefordshire, Ludlow and North Shropshire College",
          ukprn: "10003023",
          instid: "1109",
          name: "Main campus",
          country: "England",
          postcode: "HR1 1LS"
        },
        "c90bd781-c5af-5449-8f99-cde2624fb441" => {
          provider_name: "Heriot-Watt University",
          ukprn: "10007764",
          instid: "0171",
          name: "Dubai campus",
          country: "United Arab Emirates"
        },
        "ed89facc-f88d-57d9-b21c-e31a2042b86d" => {
          provider_name: "Heriot-Watt University",
          ukprn: "10007764",
          instid: "0171",
          name: "Main campus",
          country: "Scotland",
          postcode: "EH14 4AS"
        },
        "b6a3f546-585d-5284-9b97-6b6653513b48" => {
          provider_name: "Heriot-Watt University",
          ukprn: "10007764",
          instid: "0171",
          name: "Malaysia campus",
          country: "Malaysia"
        },
        "af8d9c66-2085-5ea7-b907-60a67fd281c7" => {
          provider_name: "Heriot-Watt University",
          ukprn: "10007764",
          instid: "0171",
          name: "Orkney campus",
          country: "Scotland",
          postcode: "KW16 3AN"
        },
        "62e4eb3d-09df-56e1-9453-5ea0105d244a" => {
          provider_name: "Heriot-Watt University",
          ukprn: "10007764",
          instid: "0171",
          name: "Scottish Borders campus",
          country: "Scotland",
          postcode: "TD1 3HE"
        },
        "50772f60-0c22-5e44-ad3f-dd4d7d506ddc" => {
          provider_name: "Hertford Regional College",
          ukprn: "10003035",
          instid: "1107",
          name: "Main campus",
          country: "England",
          postcode: "SG12 9JF"
        },
        "b90fe1d4-a4aa-555a-8fab-cffce838e283" => {
          provider_name: "Heythrop College",
          ukprn: "10007765",
          instid: "0205",
          name: "Entire HEP",
          country: "England",
          postcode: "W8 5HN"
        },
        "e57973f8-5fc9-5b32-8b79-a488017cf5aa" => {
          provider_name: "Higher Rhythm Limited",
          ukprn: "10020118",
          instid: "0457",
          name: "Main campus",
          country: "England",
          postcode: "DN1 2PG"
        },
        "911d1d94-c7b7-5cce-8ca5-a8f55eca2259" => {
          provider_name: "Holborn College Limited",
          ukprn: "10042194",
          instid: "0273",
          name: "Main campus",
          country: "England",
          postcode: "SE1 1HR"
        },
        "13263f64-5522-5ab0-ad65-60207b48e8ab" => {
          provider_name: "Holy Cross College",
          ukprn: "10003128",
          instid: "1105",
          name: "Main campus",
          country: "England",
          postcode: "BL9 9BB"
        },
        "6713b2e8-8050-5625-ac43-598517a18fbf" => {
          provider_name: "Homerton College",
          ukprn: "10003138",
          instid: "0019",
          name: "Main campus",
          country: "England",
          postcode: "CB2 2PH"
        },
        "df365650-8860-58a7-b144-add5e3c1df7f" => {
          provider_name: "Hopwood Hall College",
          ukprn: "10003146",
          instid: "1104",
          name: "Main campus",
          country: "England",
          postcode: "M24 6XH"
        },
        "1c197245-2759-5e85-b95d-4ef5cc41e104" => {
          provider_name: "Hugh Baird College",
          ukprn: "10003193",
          instid: "1102",
          name: "Main campus",
          country: "England",
          postcode: "L20 7EW"
        },
        "3483d8ab-fd50-547b-ada4-188171b69f5f" => {
          provider_name: "Hull College",
          ukprn: "10003200",
          instid: "1101",
          name: "Main campus",
          country: "England",
          postcode: "HU1 3DG"
        },
        "2bda78dd-2e31-5d70-860c-f477c60d058b" => {
          provider_name: "Hull York Medical School",
          ukprn: "99999998",
          instid: "7005",
          name: "Main campus",
          country: "England",
          postcode: "YO10 5DD"
        },
        "8840757d-0c5a-5098-b64b-9d5279f23469" => {
          provider_name: "Hult International Business School Ltd",
          ukprn: "10003212",
          instid: "0406",
          name: "London PG",
          country: "England",
          postcode: "WC1N 2AT"
        },
        "30bb684f-d859-54b5-a10d-4e686a7ba251" => {
          provider_name: "Hult International Business School Ltd",
          ukprn: "10003212",
          instid: "0406",
          name: "Main campus",
          country: "England",
          postcode: "E1 1LD"
        },
        "816a2871-e83e-5731-999c-c181468a5ec0" => {
          provider_name: "ICOM",
          ukprn: "10023445",
          instid: "0297",
          name: "Main campus",
          country: "England",
          postcode: "RH19 1DZ"
        },
        "fe37c6e1-f35a-5426-a1c8-f24cbe75ea0d" => {
          provider_name: "ICON College of Technology and Management",
          ukprn: "10003239",
          instid: "0236",
          name: "Entire HEP",
          country: "England",
          postcode: "E1 1EG"
        },
        "e03d81e8-7da2-500f-a799-ea123b029e25" => {
          provider_name: "IFS University College",
          ukprn: "10008289",
          instid: "0217",
          name: "Lovat Lane",
          country: "England",
          postcode: "EC3R 8EB"
        },
        "efc988b5-df88-5abb-bc67-4b74a859efd6" => {
          provider_name: "IFS University College",
          ukprn: "10008289",
          instid: "0217",
          name: "Peninsular House",
          country: "England",
          postcode: "EC3R 8LJ"
        },
        "63d20805-52a1-53cd-a94b-9bae1644bbb3" => {
          provider_name: "Imperial College of Science, Technology and Medicine",
          ukprn: "10003270",
          instid: "0132",
          name: "Entire HEP",
          country: "England",
          postcode: "SW7 2AZ"
        },
        "dc7dfea6-8a50-58a7-9a58-71b7d7eba8e9" => {
          provider_name: "Imperial College of Science, Technology and Medicine",
          ukprn: "10003270",
          instid: "0132",
          name: "Wye campus",
          country: "England",
          postcode: "TN25 5AH"
        },
        "cdf41bd3-47e4-597c-833e-ad7c1658e59b" => {
          provider_name: "Inchbald School of Design Limited",
          ukprn: "10003284",
          instid: "0439",
          name: "Entire HEP",
          country: "England",
          postcode: "SW1W 9BA"
        },
        "b6834273-297c-565f-be98-d195a9f1f3a7" => {
          provider_name: "Inspire Education Group",
          ukprn: "10005077",
          instid: "1061",
          name: "Main campus",
          country: "England",
          postcode: "PE1 4DZ"
        },
        "88410070-32cd-5899-9e25-6084c22b55f8" => {
          provider_name: "Institute of Art - London Limited",
          ukprn: "10013220",
          instid: "0405",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1B 3EE"
        },
        "dd2b891d-5051-5b8b-83e4-466cdd6d8d3b" => {
          provider_name: "Institute of Contemporary Music Performance",
          ukprn: "10035638",
          instid: "0220",
          name: "Entire HEP",
          country: "England",
          postcode: "NW6 7XG"
        },
        "c43cf88f-97c6-5c1d-a20a-cbf850782a1d" => {
          provider_name: "Institute of Education",
          ukprn: "10007766",
          instid: "0133",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1H 0AL"
        },
        "79d4c8be-162e-5c22-a800-b0cc90278099" => {
          provider_name: "International Business College Manchester Limited",
          ukprn: "10042679",
          instid: "0341",
          name: "Entire HEP",
          country: "England",
          postcode: "M1 3UH"
        },
        "dfe37997-97f6-5516-b185-7b4b7093b8f0" => {
          provider_name: "International College of Musical Theatre",
          ukprn: "10027603",
          instid: "0450",
          name: "Main campus",
          country: "England",
          postcode: "E9 5LH"
        },
        "1ee86ddc-24d6-5e1a-9012-5eab75f26274" => {
          provider_name: "INTO University Partnerships Limited",
          ukprn: "10082728",
          instid: "0423",
          name: "INTO London",
          country: "England",
          postcode: "E1 7EZ"
        },
        "f965455c-83a2-5622-9625-a606c606fb70" => {
          provider_name: "INTO University Partnerships Limited",
          ukprn: "10082728",
          instid: "0423",
          name: "Main campus",
          country: "England",
          postcode: "M1 6LT"
        },
        "a95689af-f5db-53b0-922f-5b28e00daadd" => {
          provider_name: "Istituto Marangoni Limited",
          ukprn: "10009527",
          instid: "0299",
          name: "Entire HEP",
          country: "England",
          postcode: "E1 6PX"
        },
        "2090c7ca-150b-5f00-82eb-7f0281b7ec05" => {
          provider_name: "Itchen College",
          ukprn: "10003427",
          instid: "1195",
          name: "Main campus",
          country: "England",
          postcode: "SO19 7TB"
        },
        "f6e4597f-5d9f-56e8-9d66-c14d453059a1" => {
          provider_name: "Joseph Chamberlain Sixth Form College",
          ukprn: "10003511",
          instid: "1186",
          name: "Main campus",
          country: "England",
          postcode: "B12 9FF"
        },
        "385a3408-cef0-5197-b94f-b1f9f173a9b3" => {
          provider_name: "JSA Education Group Ltd.",
          ukprn: "10067601",
          instid: "0417",
          name: "Main Campus",
          country: "England",
          postcode: "W1S 3AS"
        },
        "393a2cc6-ed1e-5ad5-910e-2556fc3b28bd" => {
          provider_name: "JSA Education Group Ltd.",
          ukprn: "10067601",
          instid: "0417",
          name: "Mayfair campus",
          country: "England",
          postcode: "EC4A 4AS"
        },
        "be0a2a98-7f7d-59a5-a880-1223466a14d7" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "Bournemouth University International College",
          country: "England",
          postcode: "BH8 8GN"
        },
        "8d544f30-a505-58e1-a777-6892c2218bec" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "Kaplan International College London",
          country: "England",
          postcode: "SE1 9DE"
        },
        "5786cb2b-2178-574c-97e6-779998110861" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "Nottingham Trent International College",
          country: "England",
          postcode: "NG1 5LT"
        },
        "97f56f32-1b1f-5570-820b-0e709d590489" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "University of Brighton International College",
          country: "England",
          postcode: "BN2 4GJ"
        },
        "2aa4da1a-fbc6-5beb-813e-7d7305d9f841" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "University of Essex International College",
          country: "England",
          postcode: "CO4 3SQ"
        },
        "12480d75-2724-55d7-9227-5f6786ee6ccb" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "University of Liverpool International College",
          country: "England",
          postcode: "L7 3FA"
        },
        "eba6c884-4e20-5427-aa65-4027a209092d" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "University of Nottingham International College",
          country: "England",
          postcode: "NG7 2RU"
        },
        "a36e97d5-3820-515b-a9ba-01594b98a3ba" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "University of West England, Bristol's Internationa",
          country: "England",
          postcode: "BS16 1QY"
        },
        "0a5e21bc-f2bc-54bb-af40-9bb249c5c628" => {
          provider_name: "Kaplan Open Learning (Essex) Limited",
          ukprn: "10021682",
          instid: "0300",
          name: "Entire HEP",
          country: "England",
          postcode: "LS1 5AT"
        },
        "c23ccc59-2c65-5124-a13b-9c3241c7ecf1" => {
          provider_name: "Keele University",
          ukprn: "10007767",
          instid: "0121",
          name: "Entire HEP",
          country: "England",
          postcode: "ST5 5BG"
        },
        "31ab8ddb-5435-540a-8890-b4d85be9077c" => {
          provider_name: "Kendal College",
          ukprn: "10003558",
          instid: "1100",
          name: "Main campus",
          country: "England",
          postcode: "LA9 5AY"
        },
        "8621adf1-449c-5c49-80a9-b1608106e486" => {
          provider_name: "Kensington and Chelsea College",
          ukprn: "10003564",
          instid: "1145",
          name: "Main campus",
          country: "England",
          postcode: "SW10 0QS"
        },
        "daa34692-cddd-5573-9383-701bf1308606" => {
          provider_name: "Kensington College of Business",
          ukprn: "10003566",
          instid: "0237",
          name: "Main campus",
          country: "England",
          postcode: "W1G 9DJ"
        },
        "e7375f99-ebe2-5524-a7a5-036f3d04bdcf" => {
          provider_name: "Kent Institute of Art and Design",
          ukprn: "10003574",
          instid: "0020",
          name: "Main campus",
          country: "England",
          postcode: "ME16 8AG"
        },
        "e42af72f-a28b-5f3f-9104-d051a0768c8f" => {
          provider_name: "King Edward VI College Nuneaton",
          ukprn: "10003624",
          instid: "1131",
          name: "Main campus",
          country: "England",
          postcode: "CV11 4BE"
        },
        "b1040f3a-202a-5512-826c-26b538878377" => {
          provider_name: "King's College London",
          ukprn: "10003645",
          instid: "0134",
          name: "Main campus",
          country: "England",
          postcode: "WC2R 2LS"
        },
        "c21b3f02-7fcc-5eee-ac36-cc7411dbddcb" => {
          provider_name: "King's College London",
          ukprn: "10003645",
          instid: "0134",
          name: "Shrivenham",
          country: "England",
          postcode: "SN6 8LA"
        },
        "d8a24ed4-ffc3-50c9-875d-724bc4504957" => {
          provider_name: "Kingston Maurward College",
          ukprn: "10003676",
          instid: "1099",
          name: "Main campus",
          country: "England",
          postcode: "DT2 8PY"
        },
        "88bf010d-b3a2-5d91-af5a-0256aa02c277" => {
          provider_name: "Kingston University",
          ukprn: "10003678",
          instid: "0063",
          name: "Entire HEP",
          country: "England",
          postcode: "KT1 2EE"
        },
        "c3c26e43-122a-54b5-a296-7bcf720a3c8a" => {
          provider_name: "Kirklees College",
          ukprn: "10003189",
          instid: "1098",
          name: "Main campus",
          country: "England",
          postcode: "HD1 3LD"
        },
        "3e815f36-0bff-529d-8767-a127fd98984a" => {
          provider_name: "KLC School of Design",
          ukprn: "10008325",
          instid: "0301",
          name: "Entire HEP",
          country: "England",
          postcode: "SW10 0XF"
        },
        "4972f2ca-b2a8-534e-b8c6-f27b01d8020b" => {
          provider_name: "Kogan Academy of Dramatic Arts",
          ukprn: "10009285",
          instid: "0302",
          name: "Main campus",
          country: "England",
          postcode: "N19 5SS"
        },
        "4b351b15-924d-5e7e-a07e-d37123d1aea3" => {
          provider_name: "Laine Theatre Arts",
          ukprn: "10003746",
          instid: "0471",
          name: "Main campus",
          country: "England",
          postcode: "KT17 1HH"
        },
        "c721bd7c-fc18-59e7-aae3-150cfff6a0ca" => {
          provider_name: "Lakes College West Cumbria",
          ukprn: "10003753",
          instid: "1097",
          name: "Main campus",
          country: "England",
          postcode: "CA14 4JN"
        },
        "7f637f25-bc86-506d-ae47-0677131136c5" => {
          provider_name: "LAMDA Limited",
          ukprn: "10003758",
          instid: "0401",
          name: "Entire HEP",
          country: "England",
          postcode: "W14 9DA"
        },
        "cbaaea6f-13cb-5526-beb4-e63aafd362c0" => {
          provider_name: "Lancaster and Morecambe College",
          ukprn: "10003768",
          instid: "1086",
          name: "Main campus",
          country: "England",
          postcode: "LA1 2TY"
        },
        "a814794c-65ca-5d72-85f3-8d7aac095578" => {
          provider_name: "LCCM AU UK Limited",
          ukprn: "10066551",
          instid: "0356",
          name: "Main campus",
          country: "England",
          postcode: "RH10 1JA"
        },
        "7238f44a-1880-5b46-834d-afd56ffbe8a2" => {
          provider_name: "Le Cordon Bleu Limited",
          ukprn: "10003798",
          instid: "0362",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1A 2LS"
        },
        "851396fb-bfb3-5325-bd58-fe736a5cfa10" => {
          provider_name: "Leeds Arts University",
          ukprn: "10003854",
          instid: "0211",
          name: "Entire HEP",
          country: "England",
          postcode: "LS2 9AQ"
        },
        "4c0b0f37-fc79-5d60-9901-f08cdec1e660" => {
          provider_name: "Leeds Beckett University",
          ukprn: "10003861",
          instid: "0064",
          name: "Entire HEP",
          country: "England",
          postcode: "LS1 3HE"
        },
        "56e7b1e2-99cb-58cd-afe3-3473d5b0c656" => {
          provider_name: "Leeds Beckett University",
          ukprn: "10003861",
          instid: "0064",
          name: "Harrogate College",
          country: "England",
          postcode: "HG2 8QT"
        },
        "700e8f2b-515f-5543-bea3-5f41e0434804" => {
          provider_name: "Leeds City College",
          ukprn: "10024962",
          instid: "1096",
          name: "Main campus",
          country: "England",
          postcode: "LS3 1AA"
        },
        "5cbcaf8a-fa12-518d-941c-bf3eac0e89c1" => {
          provider_name: "Leeds College of Building",
          ukprn: "10003855",
          instid: "1095",
          name: "Main campus",
          country: "England",
          postcode: "LS2 7QT"
        },
        "d6466e53-6f76-5c0e-a64a-19e2ac33606f" => {
          provider_name: "Leeds College of Music",
          ukprn: "10003856",
          instid: "0207",
          name: "Entire institution",
          country: "England",
          postcode: "LS2 7PD"
        },
        "36ed85ea-819e-50b2-bbcb-cfbc96cb6a95" => {
          provider_name: "Leeds Conservatoire",
          ukprn: "10034449",
          instid: "0351",
          name: "Entire HEP",
          country: "England",
          postcode: "LS2 7PD"
        },
        "aa50c311-08b2-5eef-adf9-f4dbd1482bda" => {
          provider_name: "Leeds Trinity University",
          ukprn: "10003863",
          instid: "0040",
          name: "Entire HEP",
          country: "England",
          postcode: "LS18 5HD"
        },
        "1c473b25-7ade-52d3-9dbb-2e16f79a4ec0" => {
          provider_name: "Leicester College",
          ukprn: "10003867",
          instid: "1094",
          name: "Main campus",
          country: "England",
          postcode: "LE2 7LW"
        },
        "e00f21cc-849e-57da-839b-974dae6a7508" => {
          provider_name: "Lincoln Bishop University",
          ukprn: "10007811",
          instid: "0007",
          name: "Entire HEP",
          country: "England",
          postcode: "LN1 3DY"
        },
        "142d2ce3-8bc7-51e4-b932-2c9c7aa482fd" => {
          provider_name: "Lincoln College",
          ukprn: "10003928",
          instid: "1092",
          name: "Main campus",
          country: "England",
          postcode: "LN2 5HQ"
        },
        "5a38c208-8463-5dd9-bd76-57d16c7b918c" => {
          provider_name: "Liverpool Hope University",
          ukprn: "10003956",
          instid: "0023",
          name: "Entire HEP",
          country: "England",
          postcode: "L16 9JD"
        },
        "cd324204-3c4c-5acc-968d-0370c2f56d19" => {
          provider_name: "Liverpool Hope University",
          ukprn: "10003956",
          instid: "0023",
          name: "Everton",
          country: "England",
          postcode: "L3 8QB"
        },
        "f3ba4c08-74f3-5ec9-bba9-fcaf065a3a72" => {
          provider_name: "Liverpool John Moores University",
          ukprn: "10003957",
          instid: "0065",
          name: "Entire HEP",
          country: "England",
          postcode: "L3 5AH"
        },
        "e557cf73-1a97-549b-b9e7-401024180cad" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "DRC",
          country: "Congo (Democratic Republic) [Congo (The Democratic Republic of the)]"
        },
        "2ef53b55-7aac-54fd-897f-5b8a03abdf7f" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "LSTM Kenya",
          country: "Kenya"
        },
        "0e2ffc36-fa45-5df9-9616-1d7f72521e74" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "LSTM Malawi",
          country: "Malawi"
        },
        "d7947216-9cde-52c8-abb5-bc0154dda180" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "LSTM MLW Lilongwe",
          country: "Malawi"
        },
        "fb8b4063-f676-5338-a569-417ba6e15bc0" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "LSTM Nigeria",
          country: "Nigeria"
        },
        "701c7ba3-80b4-5fdf-87b7-38ff9b6e0723" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "LSTM Sierra Leone",
          country: "Sierra Leone"
        },
        "0f1fbf26-e1a6-5a30-94f3-b71bc3d0fa47" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "Main campus",
          country: "England",
          postcode: "L3 5QA"
        },
        "5a8db6a4-3839-5d23-8220-0d71f874215a" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "Uganda",
          country: "Uganda"
        },
        "52e013f3-4326-59fe-ae81-f953f1df241e" => {
          provider_name: "LMA",
          ukprn: "10031239",
          instid: "0458",
          name: "Main campus",
          country: "England",
          postcode: "L1 6DA"
        },
        "a2f51677-3be5-530a-a40b-64be20f04fe5" => {
          provider_name: "London Bridge Business Academy",
          ukprn: "10013109",
          instid: "0282",
          name: "Entire HEP",
          country: "England",
          postcode: "EC1M 3JB"
        },
        "2fc8a0fc-e571-5acf-9dc2-70cb4d886dc6" => {
          provider_name: "London Brookes College",
          ukprn: "10065543",
          instid: "1202",
          name: "Main campus",
          country: "England",
          postcode: "NW4 4AP"
        },
        "841963e9-e962-5db7-a25b-2e2132621b7e" => {
          provider_name: "London Business School",
          ukprn: "10007769",
          instid: "0135",
          name: "Dubai campus",
          country: "United Arab Emirates"
        },
        "682da777-a5bd-555e-8ceb-ea6da9369b0b" => {
          provider_name: "London Business School",
          ukprn: "10007769",
          instid: "0135",
          name: "Main campus",
          country: "England",
          postcode: "NW1 4SA"
        },
        "f84dbb72-df86-578d-a23e-efe470e1a339" => {
          provider_name: "London Centre of Contemporary Music",
          ukprn: "10004006",
          instid: "0277",
          name: "Main campus",
          country: "England",
          postcode: "SE1 1TD"
        },
        "98562f71-1af8-5396-b460-73662fd8d81f" => {
          provider_name: "London Churchill College Ltd",
          ukprn: "10030391",
          instid: "0250",
          name: "Barclay hall",
          country: "England",
          postcode: "E7 8JQ"
        },
        "5eb16d1f-e60d-581a-bacc-ad3b3188fea8" => {
          provider_name: "London Churchill College Ltd",
          ukprn: "10030391",
          instid: "0250",
          name: "Main campus",
          country: "England",
          postcode: "E7 8JQ"
        },
        "24f83838-e673-5652-bf19-6366ab96a78f" => {
          provider_name: "London College of Business Sciences",
          ukprn: "10041974",
          instid: "0338",
          name: "Main campus",
          country: "England",
          postcode: "E16 1AH"
        },
        "785ed405-dab1-5e35-ab05-2c44f3befa4e" => {
          provider_name: "London College of Business Studies",
          ukprn: "10019368",
          instid: "0255",
          name: "Main campus",
          country: "England",
          postcode: "IG1 4TG"
        },
        "75ab82c7-33c0-51f9-9ecc-a8fcba803c57" => {
          provider_name: "London College of Creative Media Limited",
          ukprn: "10057951",
          instid: "0340",
          name: "Main campus",
          country: "England",
          postcode: "SE1 1TD"
        },
        "274e5cb8-578c-57af-b9ef-782f5f005e94" => {
          provider_name: "London College of International Business Studies Ltd",
          ukprn: "10004023",
          instid: "0355",
          name: "Main campus",
          country: "England",
          postcode: "SE16 2XU"
        },
        "9273d41c-e1a6-5b2e-aa21-1a1b039567fc" => {
          provider_name: "London Film School Limited",
          ukprn: "10004036",
          instid: "0304",
          name: "Entire HEP",
          country: "England",
          postcode: "WC2H 9UB"
        },
        "691f481a-3a75-5af7-8cae-8b464eff5095" => {
          provider_name: "London Metropolitan University",
          ukprn: "10004048",
          instid: "0202",
          name: "Entire HEP",
          country: "England",
          postcode: "N7 8DB"
        },
        "f2a80a89-2468-5779-a291-d0cd91740fe7" => {
          provider_name: "London Metropolitan University",
          ukprn: "10004048",
          instid: "0202",
          name: "London City campus",
          country: "England",
          postcode: "EC3N 2EY"
        },
        "fb87722b-3d07-5d2e-af18-80225376f05d" => {
          provider_name: "London Metropolitan University",
          ukprn: "10004048",
          instid: "0202",
          name: "London North campus",
          country: "England",
          postcode: "N7 8DB"
        },
        "a5e2df8a-7b20-5fd2-aaf8-d6a3a2e55915" => {
          provider_name: "London School of Academics Ltd",
          ukprn: "10032594",
          instid: "0276",
          name: "Entire HEP",
          country: "England",
          postcode: "RM13 8EU"
        },
        "79692928-2c9d-5c00-bf93-9800cb0387ec" => {
          provider_name: "London School of Business and Finance (UK) Limited",
          ukprn: "10004060",
          instid: "0279",
          name: "Main campus",
          country: "England",
          postcode: "EC1N 2LL"
        },
        "e6d0de81-adb0-5485-810c-3083cab8502f" => {
          provider_name: "London School of Commerce & IT Limited",
          ukprn: "10023434",
          instid: "0328",
          name: "Entire HEP",
          country: "England",
          postcode: "E1 1EJ"
        },
        "a794f4e7-354a-5841-b37d-0f38552965cf" => {
          provider_name: "London School of Commerce & IT Limited",
          ukprn: "10023434",
          instid: "0328",
          name: "London School of Commerce & IT Limited",
          country: "England",
          postcode: "E1 1EJ"
        },
        "83cafe02-a9c0-5a8c-ba73-5853f5b874a1" => {
          provider_name: "London School of Economics and Political Science",
          ukprn: "10004063",
          instid: "0137",
          name: "Entire HEP",
          country: "England",
          postcode: "WC2A 2AE"
        },
        "989fa9b9-999b-5a73-afa7-178316fdee97" => {
          provider_name: "London School of Hygiene and Tropical Medicine",
          ukprn: "10007771",
          instid: "0138",
          name: "Gambia",
          country: "Gambia, The"
        },
        "905a3535-56ce-5b1a-bf7f-c417a3c288d4" => {
          provider_name: "London School of Hygiene and Tropical Medicine",
          ukprn: "10007771",
          instid: "0138",
          name: "Main campus",
          country: "England",
          postcode: "WC1E 7HT"
        },
        "ead9c2fe-ef35-5953-ae59-e85dc389fca8" => {
          provider_name: "London School of Hygiene and Tropical Medicine",
          ukprn: "10007771",
          instid: "0138",
          name: "Uganda",
          country: "Uganda"
        },
        "7a91975f-3d89-51b8-95d8-5eafc5230c8e" => {
          provider_name: "London School of Innovation Ltd",
          ukprn: "10091282",
          instid: "0472",
          name: "Main campus",
          country: "England",
          postcode: "SM1 2GD"
        },
        "8cc2a587-f712-5445-8131-7faf433c980a" => {
          provider_name: "London School of Jewish Studies",
          ukprn: "10029147",
          instid: "0464",
          name: "Main campus",
          country: "England",
          postcode: "NW4 2SJ"
        },
        "de3785df-a86f-5e22-bb41-fae0dd623825" => {
          provider_name: "London School of Management Education",
          ukprn: "10022285",
          instid: "0256",
          name: "Entire HEP",
          country: "England",
          postcode: "IG2 6EY"
        },
        "9988ddd3-44d2-5397-ac67-561f138e74d9" => {
          provider_name: "London School of Science and Technology Limited",
          ukprn: "10008362",
          instid: "0227",
          name: "Main campus",
          country: "England",
          postcode: "HA0 1EH"
        },
        "74f227ad-9e03-522c-8b28-d1dca82ebc9b" => {
          provider_name: "London School of Theology",
          ukprn: "10004075",
          instid: "0257",
          name: "Entire HEP",
          country: "England",
          postcode: "HA6 2UW"
        },
        "afb79604-45e2-5c08-aa8c-a4ae8500ae6d" => {
          provider_name: "London South Bank University",
          ukprn: "10004078",
          instid: "0076",
          name: "Entire HEP",
          country: "England",
          postcode: "SE1 0AA"
        },
        "ee7ffc30-b601-5b54-9cbb-83d7bd07421c" => {
          provider_name: "London Studio Centre",
          ukprn: "10004079",
          instid: "0274",
          name: "Entire HEP",
          country: "England",
          postcode: "N12 0GA"
        },
        "002491d5-ed83-5e1c-a9b7-3da86ce8eb0b" => {
          provider_name: "Loughborough College",
          ukprn: "10004112",
          instid: "1091",
          name: "Main campus",
          country: "England",
          postcode: "LE11 3BT"
        },
        "6cf8b968-8a61-553a-bc2e-5b9de0cbcaff" => {
          provider_name: "Loughborough University",
          ukprn: "10004113",
          instid: "0152",
          name: "London Campus",
          country: "England",
          postcode: "E15 2GZ"
        },
        "e35b8f1c-5655-5063-9126-727ff05518a8" => {
          provider_name: "Loughborough University",
          ukprn: "10004113",
          instid: "0152",
          name: "Main campus",
          country: "England",
          postcode: "LE11 3TU"
        },
        "5408b479-d1f2-5b0d-aeeb-af167efeadbb" => {
          provider_name: "Loughborough University",
          ukprn: "10004113",
          instid: "0152",
          name: "Singapore campus",
          country: "Singapore"
        },
        "f1237dd2-1132-531e-8f0e-72c318e951c5" => {
          provider_name: "LTE Group",
          ukprn: "10023139",
          instid: "1090",
          name: "Main campus",
          country: "England",
          postcode: "M11 2WH"
        },
        "d10feb8b-0fd9-54a8-ab5d-259a429889af" => {
          provider_name: "Luther King House Educational Trust",
          ukprn: "10009612",
          instid: "0306",
          name: "Entire HEP",
          country: "England",
          postcode: "M14 5JP"
        },
        "7c052994-dca3-5304-8b3c-30f18ed32e3e" => {
          provider_name: "Macclesfield College",
          ukprn: "10004144",
          instid: "1089",
          name: "Main campus",
          country: "England",
          postcode: "SK11 8LF"
        },
        "f3ed2724-7b7d-50b2-bf91-8ed103fedee6" => {
          provider_name: "Matrix College of Counselling and Psychotherapy Ltd",
          ukprn: "10023453",
          instid: "0320",
          name: "Entire HEP",
          country: "England",
          postcode: "NR18 0GU"
        },
        "f324965a-f8c4-50f4-8e68-cc2d0a076854" => {
          provider_name: "Medway School of Pharmacy",
          ukprn: "99999997",
          instid: "7004",
          name: "Main campus",
          country: "England",
          postcode: "ME4 4TB"
        },
        "cf21d22e-37dd-585b-9d47-fddf1234c6bd" => {
          provider_name: "Met Film School Limited",
          ukprn: "10045476",
          instid: "0272",
          name: "Berlin",
          country: "Germany"
        },
        "790e67cc-0e47-5221-be26-fb7cc8580c01" => {
          provider_name: "Met Film School Limited",
          ukprn: "10045476",
          instid: "0272",
          name: "Main campus",
          country: "England",
          postcode: "W5 5EP"
        },
        "ffe36a2c-0ce0-56e1-91c7-844778adc296" => {
          provider_name: "Middlesbrough College",
          ukprn: "10004344",
          instid: "1185",
          name: "Main campus",
          country: "England",
          postcode: "TS2 1AD"
        },
        "0dd3abe5-82e7-5d72-9720-e76c3273bf00" => {
          provider_name: "Middlesex University",
          ukprn: "10004351",
          instid: "0067",
          name: "Dubai",
          country: "United Arab Emirates"
        },
        "f8d7e421-17fa-5d4c-849a-6582ff5b87c6" => {
          provider_name: "Middlesex University",
          ukprn: "10004351",
          instid: "0067",
          name: "Main campus",
          country: "England",
          postcode: "NW4 4BT"
        },
        "f616b744-fb8a-5043-8e42-eefd1ee46686" => {
          provider_name: "Middlesex University",
          ukprn: "10004351",
          instid: "0067",
          name: "Malta",
          country: "Malta"
        },
        "c1abe1e7-25de-50ad-af1c-610bc7290cc9" => {
          provider_name: "Middlesex University",
          ukprn: "10004351",
          instid: "0067",
          name: "Mauritius",
          country: "Mauritius"
        },
        "5bfe6d84-db08-56b2-8353-1434f82c20ce" => {
          provider_name: "Mid-Kent College",
          ukprn: "10004340",
          instid: "1087",
          name: "Main campus",
          country: "England",
          postcode: "ME7 1FN"
        },
        "d97dec27-4a70-5265-a058-bde6aae6eae4" => {
          provider_name: "Millennium Performing Arts Ltd",
          ukprn: "10004365",
          instid: "0339",
          name: "Main campus",
          country: "England",
          postcode: "SE18 6HU"
        },
        "8e42edca-dd3d-5e55-88de-25db671d1957" => {
          provider_name: "Milton Keynes College",
          ukprn: "10004375",
          instid: "1088",
          name: "Main campus",
          country: "England",
          postcode: "MK6 5LP"
        },
        "72c81bf8-bb58-5062-83f2-00e5583cbbb2" => {
          provider_name: "Missio Dei",
          ukprn: "10020416",
          instid: "0225",
          name: "Entire HEP",
          country: "England",
          postcode: "M3 7BE"
        },
        "afa52587-00de-5cf8-94c7-69a0c0447160" => {
          provider_name: "MLA College",
          ukprn: "10049370",
          instid: "0440",
          name: "MLA College Ltd",
          country: "England",
          postcode: "PL1 2AX"
        },
        "42f6ceaf-e359-5388-ae98-b6439311b2ea" => {
          provider_name: "Mont Rose College of Management and Sciences Limited",
          ukprn: "10023777",
          instid: "0246",
          name: "Entire HEP",
          country: "England",
          postcode: "IG2 6NQ"
        },
        "4f860fa3-e1c4-5ac9-a883-b597ff947603" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "Main campus",
          country: "England",
          postcode: "BH23 7AT"
        },
        "9cb64d69-3d6b-5129-b16d-3c23d392060b" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "Midlands",
          country: "England",
          postcode: "B29 6QX"
        },
        "2f41bae9-2d7d-5f6a-8ec6-f36673ddcb3d" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "Midlands",
          country: "England",
          postcode: "B61 0RA"
        },
        "261a0ee1-37b3-5c57-b8a3-13e840955326" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "Northern Ireland",
          country: "Northern Ireland",
          postcode: "BT12 7DY"
        },
        "53b1f376-513b-5efe-95ae-7dec50c4413c" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "South West",
          country: "England",
          postcode: "EX35 6JJ"
        },
        "83a6f2d7-a132-5caa-a3a6-c914a32a8d3e" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "South West",
          country: "England",
          postcode: "TQ1 4SF"
        },
        "77343fc0-0666-5fd9-92ff-c9b4c547e2ba" => {
          provider_name: "Morley College Limited",
          ukprn: "10004432",
          instid: "1189",
          name: "Main campus",
          country: "England",
          postcode: "SE1 7HT"
        },
        "3b0c5e79-34f0-5efc-adf8-528d6e89509b" => {
          provider_name: "Moulton College",
          ukprn: "10004442",
          instid: "1085",
          name: "Main campus",
          country: "England",
          postcode: "NN3 7RR"
        },
        "2eb628b1-cef5-59a7-81fd-77f8237f9743" => {
          provider_name: "Mountview Academy of Theatre Arts",
          ukprn: "10004450",
          instid: "0239",
          name: "Entire HEP",
          country: "England",
          postcode: "SE15 5JT"
        },
        "f38b41ee-fb1b-5a8a-9dcc-d5de72d99862" => {
          provider_name: "Multiverse",
          ukprn: "10055902",
          instid: "0447",
          name: "Main campus",
          country: "England",
          postcode: "W1U 6RL"
        },
        "6ac379a7-9300-5bf3-a565-f7e5916c21fa" => {
          provider_name: "Myerscough College",
          ukprn: "10004478",
          instid: "1084",
          name: "Main campus",
          country: "England",
          postcode: "PR3 0RY"
        },
        "9a76785f-16c8-5c58-8542-f172efcab72e" => {
          provider_name: "National Centre for Circus Arts",
          ukprn: "10001444",
          instid: "0445",
          name: "Main campus",
          country: "England",
          postcode: "N1 6HD"
        },
        "ad748a86-4e9b-562e-9cd0-108e6d6f86b6" => {
          provider_name: "National Institute of Teaching",
          ukprn: "10090839",
          instid: "0470",
          name: "Main campus",
          country: "England",
          postcode: "WF1 2PF"
        },
        "8725149d-2223-5df8-8b17-1a834ee5ae25" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "BCUIC",
          country: "England",
          postcode: "B5 5JU"
        },
        "06beef7e-92aa-59f1-a396-1658858aa651" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "CRIC",
          country: "England",
          postcode: "CM1 1SQ"
        },
        "a03b9831-76d5-52e5-8883-52dd2e8252e8" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "HIC",
          country: "England",
          postcode: "AL10 9AB"
        },
        "8136f76a-fb8e-5d52-bafd-985f3e6fbd7a" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "ICP",
          country: "England",
          postcode: "PO1 2PR"
        },
        "682ee67c-6f30-5769-831f-538801eacdd8" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "ICRGU",
          country: "Scotland",
          postcode: "AB10 7QE"
        },
        "865c7eae-1137-53fb-a6a7-78100cc3c2a5" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "LGSC",
          country: "England",
          postcode: "LE1 1SW"
        },
        "7e912d22-00e5-5ca6-af4f-128db4fd68dd" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "Main campus",
          country: "England",
          postcode: "UB8 3PH"
        },
        "67067b44-da19-5960-959c-3662bf8d2d59" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "TCSU",
          country: "Wales",
          postcode: "SA1 8EN"
        },
        "8b16d83e-edce-5f5b-b8d0-a9b3b90db4b8" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "UNIC",
          country: "England",
          postcode: "NN2 6JD"
        },
        "200b4126-801a-56f6-83e9-7056e146a71c" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "UPIC",
          country: "England",
          postcode: "PL4 6DX"
        },
        "1b7af7cc-5a11-53c6-868f-3f03e2fdad1f" => {
          provider_name: "Nazarene Theological College",
          ukprn: "10004538",
          instid: "0240",
          name: "Entire HEP",
          country: "England",
          postcode: "M20 2GU"
        },
        "d97e6c68-476c-5f0b-880c-c13556108c5b" => {
          provider_name: "NCG",
          ukprn: "10004599",
          instid: "1078",
          name: "Main campus",
          country: "England",
          postcode: "NE4 7SA"
        },
        "fdc7db4c-cf90-5339-81ce-b4e87136519c" => {
          provider_name: "Nelson and Colne College",
          ukprn: "10004552",
          instid: "1083",
          name: "Main campus",
          country: "England",
          postcode: "BB9 7YT"
        },
        "88c32491-0037-547e-8566-32947a6fd012" => {
          provider_name: "Nelson College London Ltd",
          ukprn: "10030129",
          instid: "0260",
          name: "Gants Hill Campus",
          country: "England",
          postcode: "IG2 6NQ"
        },
        "dddc7ef5-878c-589d-8ced-c2681ba3df43" => {
          provider_name: "Nelson College London Ltd",
          ukprn: "10030129",
          instid: "0260",
          name: "Main campus",
          country: "England",
          postcode: "IG1 1BA"
        },
        "bd1619a1-30aa-5abf-aded-f05bb8d0a22c" => {
          provider_name: "New City College",
          ukprn: "10006963",
          instid: "1081",
          name: "Main campus",
          country: "England",
          postcode: "E14 0AF"
        },
        "084d117c-9789-5f81-8f9f-432cfbb14dbd" => {
          provider_name: "New College Durham",
          ukprn: "10004576",
          instid: "1082",
          name: "Main campus",
          country: "England",
          postcode: "DH1 5ES"
        },
        "0b057305-de7f-5ede-a840-a824ef822035" => {
          provider_name: "New College Pontefract",
          ukprn: "10004578",
          instid: "1070",
          name: "Main campus",
          country: "England",
          postcode: "WF8 4QR"
        },
        "39baa6ad-c85b-5c23-a126-feeb7865b380" => {
          provider_name: "New College Stamford",
          ukprn: "10006303",
          instid: "1037",
          name: "Main campus",
          country: "England",
          postcode: "PE9 1XA"
        },
        "aa5b36a2-123b-5b50-8bd2-5297198bc7e2" => {
          provider_name: "New College Swindon",
          ukprn: "10004579",
          instid: "1069",
          name: "Main campus",
          country: "England",
          postcode: "SN3 1AH"
        },
        "bb72cd08-b87b-5fb0-aa4b-f89f4dae82d6" => {
          provider_name: "New Model Institute for Technology and Engineering (NMITE)",
          ukprn: "10067406",
          instid: "0421",
          name: "",
          country: "England",
          postcode: "HR4 9HS"
        },
        "527ac0cf-5f26-5ffd-8fae-d7287d559db5" => {
          provider_name: "New Model Institute for Technology and Engineering (NMITE)",
          ukprn: "10067406",
          instid: "0421",
          name: "Entire HEP",
          country: "England",
          postcode: "HR4 9HS"
        },
        "9725d42c-7f13-5339-bd13-56277fde975f" => {
          provider_name: "Newbold College",
          ukprn: "10023456",
          instid: "0361",
          name: "Entire HEP",
          country: "England",
          postcode: "RG42 4AN"
        },
        "a76a1afe-f7b9-56b5-967e-618db06e9e9e" => {
          provider_name: "Newbury College",
          ukprn: "10004596",
          instid: "1079",
          name: "Main campus",
          country: "England",
          postcode: "RG14 7TD"
        },
        "aaf42846-a469-5bac-9f03-f008f6ddeda4" => {
          provider_name: "Newcastle and Stafford Colleges Group",
          ukprn: "10004603",
          instid: "1038",
          name: "Main campus",
          country: "England",
          postcode: "ST5 2GB"
        },
        "a09011f8-7d18-5426-9ee9-9bf4888f9b6a" => {
          provider_name: "Newcastle University",
          ukprn: "10007799",
          instid: "0154",
          name: "Main campus",
          country: "England",
          postcode: "NE1 7RU"
        },
        "2917e881-7174-5e43-a913-09a7b391723e" => {
          provider_name: "Newcastle University",
          ukprn: "10007799",
          instid: "0154",
          name: "Newcastle University London",
          country: "England",
          postcode: "E1 7EZ"
        },
        "a79e4d11-26a9-5d35-a15a-0a2e4e125a5a" => {
          provider_name: "Newcastle University",
          ukprn: "10007799",
          instid: "0154",
          name: "Newcastle University Medicine Malaysia (NUMED)",
          country: "Malaysia"
        },
        "0bf5ccc4-8574-53d2-afcb-aa2ebd41c214" => {
          provider_name: "Newham College of Further Education",
          ukprn: "10004607",
          instid: "1077",
          name: "Main campus",
          country: "England",
          postcode: "E6 6ER"
        },
        "ad63d23c-bc4d-50b6-9452-ffb0e77278e9" => {
          provider_name: "Norland College",
          ukprn: "10008397",
          instid: "0247",
          name: "Main campus",
          country: "England",
          postcode: "BA2 3LB"
        },
        "34f66d7e-0c79-5033-8a44-4786afea7229" => {
          provider_name: "Norland College",
          ukprn: "10008397",
          instid: "0247",
          name: "Second Campus YP",
          country: "England",
          postcode: "BA1 6AE"
        },
        "c877d534-8974-5b95-96c6-71fdeaa34655" => {
          provider_name: "North East Surrey College of Technology (NESCOT)",
          ukprn: "10004686",
          instid: "1080",
          name: "Main campus",
          country: "England",
          postcode: "KT17 3DS"
        },
        "d7bb41ff-c415-5735-bee0-661b3b5e3b19" => {
          provider_name: "North Hertfordshire College",
          ukprn: "10004690",
          instid: "1076",
          name: "Main campus",
          country: "England",
          postcode: "SG1 1LA"
        },
        "edc12a7e-861b-5b6d-973a-2c80e9aba0e7" => {
          provider_name: "North Kent College",
          ukprn: "10004721",
          instid: "1075",
          name: "Main campus",
          country: "England",
          postcode: "DA1 2JT"
        },
        "5e322836-bfe1-5231-9f00-975c60f58fcb" => {
          provider_name: "North Shropshire College",
          ukprn: "10007299",
          instid: "1191",
          name: "Main campus",
          country: "England",
          postcode: "SY11 4QB"
        },
        "06a3d6f8-9a58-5a04-a2f4-6700155e7dec" => {
          provider_name: "North Warwickshire and South Leicestershire College",
          ukprn: "10004718",
          instid: "1018",
          name: "Main campus",
          country: "England",
          postcode: "CV11 6BH"
        },
        "e2927002-aa68-5fd6-b49f-5cbb7c820374" => {
          provider_name: "North West Regional College",
          ukprn: "10020634",
          instid: "0349",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT48 7AL"
        },
        "82efd6a7-05d4-5898-9dfb-bf79aaee1c45" => {
          provider_name: "Northampton College",
          ukprn: "10007011",
          instid: "1074",
          name: "Main campus",
          country: "England",
          postcode: "NN3 3RF"
        },
        "a80dfa4a-abe5-5b56-beca-57da6680cbc1" => {
          provider_name: "Northeastern University London",
          ukprn: "10048199",
          instid: "0330",
          name: "Entire HEP",
          country: "England",
          postcode: "E1W 1LP"
        },
        "509030fd-bdca-5288-862d-92edbe3de423" => {
          provider_name: "Northern College of Acupuncture",
          ukprn: "10004740",
          instid: "0261",
          name: "Entire HEP",
          country: "England",
          postcode: "YO1 6LJ"
        },
        "665da949-f3f5-5ff5-85a8-77cc0d101e0e" => {
          provider_name: "Northern Regional College",
          ukprn: "10020372",
          instid: "0346",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT43 7DF"
        },
        "19385f3a-6989-5ff7-ac7c-6c2dd67dff2b" => {
          provider_name: "Northern School of Contemporary Dance",
          ukprn: "10008816",
          instid: "0191",
          name: "Main campus",
          country: "England",
          postcode: "LS7 4BH"
        },
        "7807cb87-5ed5-555f-abda-266f4bfb9b39" => {
          provider_name: "Northumberland College",
          ukprn: "10004760",
          instid: "1024",
          name: "Main campus",
          country: "England",
          postcode: "NE63 9RG"
        },
        "a0968eeb-d40b-55a1-917e-87e83308b5ec" => {
          provider_name: "Norwich University of the Arts",
          ukprn: "10004775",
          instid: "0190",
          name: "Entire HEP",
          country: "England",
          postcode: "NR2 4SN"
        },
        "289bcb7a-c14a-543b-983d-4dde9b0295ce" => {
          provider_name: "Nottingham College",
          ukprn: "10004577",
          instid: "1071",
          name: "Main campus",
          country: "England",
          postcode: "NG7 2RU"
        },
        "fa85e912-dbcc-5016-944b-bcc7f95de35b" => {
          provider_name: "Nova College of Accounting and Business Ltd",
          ukprn: "10023130",
          instid: "0319",
          name: "Main campus",
          country: "England",
          postcode: "HA0 1EH"
        },
        "578e05e4-84ea-576b-a100-0e80309fd469" => {
          provider_name: "Oak Hill College",
          ukprn: "10010227",
          instid: "0313",
          name: "Entire HEP",
          country: "England",
          postcode: "N14 4PS"
        },
        "d8d7af47-2c11-5e4b-aa9b-e4ece45669be" => {
          provider_name: "Oaklands College",
          ukprn: "10004835",
          instid: "1068",
          name: "Main campus",
          country: "England",
          postcode: "AL4 0JA"
        },
        "19118f83-ecec-54e5-a4a6-2682b15423cb" => {
          provider_name: "Open College of the Arts",
          ukprn: "10004879",
          instid: "0307",
          name: "Main campus",
          country: "England",
          postcode: "S75 1JN"
        },
        "85f820bf-5319-5d99-a0b1-e9cb9c465fed" => {
          provider_name: "Oxford Brookes University",
          ukprn: "10004930",
          instid: "0072",
          name: "Main campus",
          country: "England",
          postcode: "OX3 0BP"
        },
        "f9fbbb6f-7ad9-5bba-95db-b5d2938cae97" => {
          provider_name: "Oxford Brookes University",
          ukprn: "10004930",
          instid: "0072",
          name: "Swindon Campus",
          country: "England",
          postcode: "SN5 7XQ"
        },
        "5a3b1e05-24ba-52bf-a342-b42902a179ab" => {
          provider_name: "Oxford Business College",
          ukprn: "10020439",
          instid: "0308",
          name: "Main campus",
          country: "England",
          postcode: "OX1 2BQ"
        },
        "330ab0d9-2300-55d2-a078-8535ff78be64" => {
          provider_name: "Oxford International Education Group",
          ukprn: "10064423",
          instid: "0466",
          name: "Main campus",
          country: "England",
          postcode: "SE10 8NB"
        },
        "f202b472-9a00-54db-af9c-f74e274d5418" => {
          provider_name: "Paris Dauphine International",
          ukprn: "10066143",
          instid: "0441",
          name: "Entire HEP",
          country: "England",
          postcode: "N1 9HF"
        },
        "9afb869c-9d88-5304-a879-2348c4754dd2" => {
          provider_name: "Peking University HSBC Business School UK Campus",
          ukprn: "10083464",
          instid: "0449",
          name: "Main campus",
          country: "England",
          postcode: "OX1 5HR"
        },
        "5cbb10cc-a137-5fa1-8b42-6a383b89a41a" => {
          provider_name: "Peter Symonds College",
          ukprn: "10005072",
          instid: "1065",
          name: "Main campus",
          country: "England",
          postcode: "SO22 6RX"
        },
        "a502ae9b-bec0-552a-82e8-bebacfd21ea9" => {
          provider_name: "Petroc",
          ukprn: "10004676",
          instid: "1060",
          name: "Main campus",
          country: "England",
          postcode: "EX31 2BQ"
        },
        "dcea24e5-7833-577e-befd-d9ac03e3cd9e" => {
          provider_name: "Plumpton College",
          ukprn: "10005124",
          instid: "1064",
          name: "Main campus",
          country: "England",
          postcode: "BN7 3AE"
        },
        "26eddd53-6cc4-5e11-97d3-fdca475bdcfa" => {
          provider_name: "Point Blank Music School",
          ukprn: "10019178",
          instid: "0309",
          name: "Entire HEP",
          country: "England",
          postcode: "N1 5DL"
        },
        "0f27f2c8-d6cb-586e-8bc3-573ff701f561" => {
          provider_name: "Preston College",
          ukprn: "10005200",
          instid: "1062",
          name: "Main campus",
          country: "England",
          postcode: "PR2 8UR"
        },
        "d8a36b8d-2bac-5460-9c95-f0a49935032c" => {
          provider_name: "Prospects College of Advanced Technology",
          ukprn: "10046354",
          instid: "1193",
          name: "Main campus",
          country: "England",
          postcode: "SS14 3AY"
        },
        "3c5c6799-1443-5562-8dac-5ca11f5961ef" => {
          provider_name: "Queen Margaret University, Edinburgh",
          ukprn: "10005337",
          instid: "0100",
          name: "Craighall",
          country: "Scotland",
          postcode: "EH21 6UU"
        },
        "e5e05bed-1751-5ee0-8019-8eb5b65a61e8" => {
          provider_name: "Queen Margaret University, Edinburgh",
          ukprn: "10005337",
          instid: "0100",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "EH21 6UU"
        },
        "6fa3668d-24d6-54d4-a0e7-1f4027b96f07" => {
          provider_name: "Queen Margaret University, Edinburgh",
          ukprn: "10005337",
          instid: "0100",
          name: "Gateway",
          country: "Scotland",
          postcode: "EH7 4AH"
        },
        "d4e7754f-9158-59e1-820c-2343ed3ca10d" => {
          provider_name: "Queen Margaret University, Edinburgh",
          ukprn: "10005337",
          instid: "0100",
          name: "Halmyre Street",
          country: "Scotland",
          postcode: "EH6 6QD"
        },
        "ff4fd7cf-2b54-5e89-b3dd-09ffd8a973d7" => {
          provider_name: "Queen Margaret University, Edinburgh",
          ukprn: "10005337",
          instid: "0100",
          name: "Leith",
          country: "Scotland",
          postcode: "EH6 8HF"
        },
        "ca253207-48a2-5330-8a4b-7e3346f41504" => {
          provider_name: "Queen Mary University of London",
          ukprn: "10007775",
          instid: "0139",
          name: "Charterhouse Square",
          country: "England",
          postcode: "EC1M 6BQ"
        },
        "581fecdf-e47b-5470-acf8-d0bed298f353" => {
          provider_name: "Queen Mary University of London",
          ukprn: "10007775",
          instid: "0139",
          name: "Lincolns Inn Fields",
          country: "England",
          postcode: "WC2A 3JB"
        },
        "7bf42365-c045-590f-aa88-493365160a51" => {
          provider_name: "Queen Mary University of London",
          ukprn: "10007775",
          instid: "0139",
          name: "Main campus",
          country: "England",
          postcode: "E1 4NS"
        },
        "a8e902db-8264-53e9-9be1-e78e4284b4b5" => {
          provider_name: "Queen Mary University of London",
          ukprn: "10007775",
          instid: "0139",
          name: "West Smithfield",
          country: "England",
          postcode: "EC1A 7BE"
        },
        "a4b0597d-4edf-587e-926c-f79c65b4df86" => {
          provider_name: "Queen Mary University of London",
          ukprn: "10007775",
          instid: "0139",
          name: "Whitechapel",
          country: "England",
          postcode: "E1 2AD"
        },
        "97c4d365-9340-5ee0-a827-5ba4c34b4aad" => {
          provider_name: "Queen's University Belfast",
          ukprn: "10005343",
          instid: "0184",
          name: "China Queen's College",
          country: "China"
        },
        "736dbd72-9ee7-5dee-b528-c8fd8a8bb030" => {
          provider_name: "Queen's University Belfast",
          ukprn: "10005343",
          instid: "0184",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT7 1NN"
        },
        "7d0a3991-5a6d-5908-9994-7b6324cbad0b" => {
          provider_name: "Raindance Educational Services Limited",
          ukprn: "10062833",
          instid: "0429",
          name: "Entire HEP",
          country: "England",
          postcode: "WC2N 5PE"
        },
        "212c303c-36d9-5d17-81ea-1446b02fb3a6" => {
          provider_name: "Rambert School",
          ukprn: "10005378",
          instid: "0443",
          name: "Main campus",
          country: "England",
          postcode: "TW1 1QN"
        },
        "bf3e7cfc-dc1a-5b74-8055-b6fbc016d9b2" => {
          provider_name: "Ravensbourne University London",
          ukprn: "10005389",
          instid: "0030",
          name: "Entire HEP",
          country: "England",
          postcode: "SE10 0EW"
        },
        "ad28a369-6bee-5469-956d-53728046e3b5" => {
          provider_name: "Ravensbourne University London",
          ukprn: "10005389",
          instid: "0030",
          name: "Institute for Creativity and Technology",
          country: "England",
          postcode: "SE10 0SQ"
        },
        "035e50bb-6b2d-5ae3-9204-985e68067a0f" => {
          provider_name: "Reaseheath College",
          ukprn: "10005404",
          instid: "1059",
          name: "Main campus",
          country: "England",
          postcode: "CW5 6DF"
        },
        "af73ef8d-db81-5cf8-8b6e-3f9eb1065f4b" => {
          provider_name: "Redcliffe College",
          ukprn: "10005415",
          instid: "0223",
          name: "Entire HEP",
          country: "England",
          postcode: "GL1 2LX"
        },
        "ce54afb8-e4bb-51f5-8ecf-e1e2e705a7f7" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "HARROW CAMPUS",
          country: "England",
          postcode: "HA2 7HG"
        },
        "e189d7ce-36f5-5abc-95a7-ab5fd56de455" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "KINGSBURY CAMPUS",
          country: "England",
          postcode: "NW9 9NG"
        },
        "e4917f84-6542-5caa-a742-0135efc66c18" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "Main campus",
          country: "England",
          postcode: "W1W 5BD"
        },
        "a2eb1026-8ffa-5ff4-8bf9-dbd9d73899fe" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "Regent House Campus",
          country: "England",
          postcode: "WC1R 4BH"
        },
        "08f5be3a-60b0-5f84-b6ff-cb6a04f767ef" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "SOUTHALL CAMPUS",
          country: "England",
          postcode: "UB1 3HF"
        },
        "8673107e-e0f2-53fc-a8c1-2d31c5006b51" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "WEMBLEY CAMPUS",
          country: "England",
          postcode: "HA9 7EX"
        },
        "05e4192f-3e5c-55b4-9ba7-6442cdd181b1" => {
          provider_name: "Regents Theological College",
          ukprn: "10008457",
          instid: "0264",
          name: "Entire HEP",
          country: "England"
        },
        "257f314d-23f9-58b1-aa99-757be828208c" => {
          provider_name: "Regents Theological College",
          ukprn: "10021100",
          instid: "0327",
          name: "Entire HEP",
          country: "England",
          postcode: "WR14 4AY"
        },
        "67daf04a-bd90-5dd6-ae7b-be7726a1b3c9" => {
          provider_name: "Regent's University London",
          ukprn: "10003331",
          instid: "0216",
          name: "Entire HEP",
          country: "England",
          postcode: "NW1 4NS"
        },
        "5b5f88f0-066f-5e74-978d-a78767dbb339" => {
          provider_name: "Regent's University London Limited",
          ukprn: "10086591",
          instid: "0425",
          name: "Entire HEP",
          country: "England",
          postcode: "NW1 4NS"
        },
        "77b385d4-6be5-5beb-8bb3-c13eae8e88f1" => {
          provider_name: "Results Consortium Limited",
          ukprn: "10023871",
          instid: "0416",
          name: "Main campus",
          country: "England",
          postcode: "RM10 7FN"
        },
        "e8e47555-ee47-5862-8b70-9972cb4ab5d4" => {
          provider_name: "Results Consortium Limited",
          ukprn: "10023871",
          instid: "0416",
          name: "Northampton",
          country: "England",
          postcode: "NN1 2BN"
        },
        "395bb786-258f-5224-9ed8-da0a8964c41e" => {
          provider_name: "Richard Huish College",
          ukprn: "10005465",
          instid: "1057",
          name: "Main campus",
          country: "England",
          postcode: "TA1 3DZ"
        },
        "17a75cfd-dc5e-5cdb-b752-d9b9017787ac" => {
          provider_name: "Richmond and Hillcroft Adult and Community College",
          ukprn: "10003088",
          instid: "1106",
          name: "Main campus",
          country: "England",
          postcode: "TW9 2RE"
        },
        "5ae49000-eba4-50ad-81ee-fda2beb255b3" => {
          provider_name: "Richmond upon Thames College",
          ukprn: "10005469",
          instid: "1058",
          name: "Main campus",
          country: "England",
          postcode: "TW2 7SJ"
        },
        "f9f81cb1-5581-5fc8-a198-d1b8c71fd482" => {
          provider_name: "Richmond, The American International University in London",
          ukprn: "10005470",
          instid: "0219",
          name: "Kensington",
          country: "England",
          postcode: "W8 5ED"
        },
        "a297572e-6630-5e8d-bad3-c2871941b947" => {
          provider_name: "Richmond, The American International University in London",
          ukprn: "10005470",
          instid: "0219",
          name: "Leeds",
          country: "England",
          postcode: "LS6 3QB"
        },
        "8b9e54be-7ae2-528b-b398-c6dc1f50c303" => {
          provider_name: "Richmond, The American International University in London",
          ukprn: "10005470",
          instid: "0219",
          name: "Main campus",
          country: "England",
          postcode: "W4 5AN"
        },
        "85791d5c-c384-5816-829b-a0db70f497d6" => {
          provider_name: "Riverside College Halton",
          ukprn: "10002863",
          instid: "1056",
          name: "Main campus",
          country: "England",
          postcode: "WA8 7QQ"
        },
        "01530c96-d982-5a62-8012-89f8c8673439" => {
          provider_name: "RNN Group",
          ukprn: "10005534",
          instid: "1055",
          name: "Main campus",
          country: "England",
          postcode: "S65 1EG"
        },
        "ac8799b6-716e-52fb-9d3f-7ed29284013f" => {
          provider_name: "Robert Gordon University",
          ukprn: "10005500",
          instid: "0104",
          name: "City Centre campus - Schoolhill",
          country: "Scotland",
          postcode: "AB10 1FR"
        },
        "ec1684c0-c254-522b-8b9d-c59c7da817fe" => {
          provider_name: "Robert Gordon University",
          ukprn: "10005500",
          instid: "0104",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "AB10 7QB"
        },
        "d03d8315-4299-57a0-a4f5-75aa6d99df9e" => {
          provider_name: "Robert Gordon University",
          ukprn: "10005500",
          instid: "0104",
          name: "Garthdee campus",
          country: "Scotland",
          postcode: "AB10 7QB"
        },
        "82e1b592-c336-5c12-ba42-20001e0f1168" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "Birmingham QA",
          country: "England",
          postcode: "B5 4UA"
        },
        "583513c6-fe58-52d6-8f6b-32d407349458" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "Croydon",
          country: "England",
          postcode: "CR9 1DX"
        },
        "3c98950e-92fd-5252-b715-d06e2f58a260" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "IRIE",
          country: "England",
          postcode: "SE14 6LU"
        },
        "42c7b6dc-344a-54db-b865-f3d07f8a5cf9" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "Main campus",
          country: "England",
          postcode: "SW15 5PJ"
        },
        "a947df17-c06b-59a8-a598-d9cf3b15aafe" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "Manchester QA",
          country: "England",
          postcode: "M1 6FQ"
        },
        "bb76e737-0e16-5f49-8814-e0186bc6b64f" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "Rosebery Ave London QA",
          country: "England",
          postcode: "EC1R 5HP"
        },
        "4170369b-c003-512b-a13f-1d19aa6b71f0" => {
          provider_name: "Rose Bruford College of Theatre and Performance",
          ukprn: "10005523",
          instid: "0032",
          name: "London ALRA",
          country: "England",
          postcode: "SW18 3SX"
        },
        "45784181-7674-5e42-8788-10c15ebff575" => {
          provider_name: "Rose Bruford College of Theatre and Performance",
          ukprn: "10005523",
          instid: "0032",
          name: "Main campus",
          country: "England",
          postcode: "DA15 9DF"
        },
        "cfe814ab-5f9c-512f-85fe-e90239961c68" => {
          provider_name: "Rose Bruford College of Theatre and Performance",
          ukprn: "10005523",
          instid: "0032",
          name: "Notting Hill Academy of Music",
          country: "England",
          postcode: "W11 3JQ"
        },
        "59912e67-cf45-5bfb-9318-eee7e452fb4d" => {
          provider_name: "Rose Bruford College of Theatre and Performance",
          ukprn: "10005523",
          instid: "0032",
          name: "Wigan ALRA",
          country: "England",
          postcode: "WN3 4EF"
        },
        "d4479688-3e13-59f0-b0ef-d7f38d3d7a34" => {
          provider_name: "Royal Academy of Dance",
          ukprn: "10005544",
          instid: "0263",
          name: "Entire HEP",
          country: "England",
          postcode: "SW11 3JZ"
        },
        "3cf480b8-251f-570b-8dec-fd9ce4baa2e9" => {
          provider_name: "Royal Academy of Dramatic Art",
          ukprn: "10009292",
          instid: "0402",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1E 6ED"
        },
        "84f25f0b-51dd-5ed3-9473-a49f7f1e0f2a" => {
          provider_name: "Royal Academy of Music",
          ukprn: "10007835",
          instid: "0033",
          name: "Entire HEP",
          country: "England",
          postcode: "NW1 5HT"
        },
        "d2bebb07-796f-5390-bda4-d9535ba916da" => {
          provider_name: "Royal Agricultural University",
          ukprn: "10005545",
          instid: "0195",
          name: "Entire HEP",
          country: "England",
          postcode: "GL7 6JS"
        },
        "779fb14d-ce8f-50ab-9ca2-c90ca4252809" => {
          provider_name: "Royal College of Art",
          ukprn: "10007777",
          instid: "0003",
          name: "Battersea",
          country: "England",
          postcode: "SW11 4AN"
        },
        "5e512ee3-9845-51ff-865c-63d68dd4e73e" => {
          provider_name: "Royal College of Art",
          ukprn: "10007777",
          instid: "0003",
          name: "Main campus",
          country: "England",
          postcode: "SW7 2EU"
        },
        "bf65aac1-a11b-54e9-b28a-0b064f1c85ec" => {
          provider_name: "Royal College of Art",
          ukprn: "10007777",
          instid: "0003",
          name: "White City",
          country: "England",
          postcode: "W12 7FN"
        },
        "09996a20-0939-5a10-a489-b82ad547e4b0" => {
          provider_name: "Royal College of Music",
          ukprn: "10007778",
          instid: "0034",
          name: "Entire HEP",
          country: "England",
          postcode: "SW7 2BS"
        },
        "a9d50ea9-8c7b-5bbd-bcab-681b1ae819cd" => {
          provider_name: "Royal Conservatoire of Scotland",
          ukprn: "10005561",
          instid: "0101",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "G2 3DB"
        },
        "c16df9c7-0cb5-583f-8709-2e9471f1e3c1" => {
          provider_name: "Royal Holloway and Bedford New College",
          ukprn: "10005553",
          instid: "0141",
          name: "Bedford Square",
          country: "England",
          postcode: "WC1B 3RF"
        },
        "7143afa8-a7cf-51c0-9c0d-2ce96c9c7f0d" => {
          provider_name: "Royal Holloway and Bedford New College",
          ukprn: "10005553",
          instid: "0141",
          name: "Main campus",
          country: "England",
          postcode: "TW20 0EX"
        },
        "39c2aacf-a9b4-5423-b774-3590fa75e7e3" => {
          provider_name: "Royal Northern College of Music",
          ukprn: "10007837",
          instid: "0035",
          name: "Entire HEP",
          country: "England",
          postcode: "M13 9RD"
        },
        "e2892f7e-c111-511b-bb08-0b3d3c306dec" => {
          provider_name: "Royal School of Needlework (The)",
          ukprn: "10020436",
          instid: "0404",
          name: "Entire HEP",
          country: "England",
          postcode: "KT8 9AU"
        },
        "d6ea3f2c-0827-58f3-b4f0-4febf3f2a557" => {
          provider_name: "Royal Welsh College of Music and Drama",
          ukprn: "10007838",
          instid: "0182",
          name: "Entire institution",
          country: "Wales",
          postcode: "CF10 3ER"
        },
        "aa0b1bfc-d1df-581d-86c0-5ec1bf072dc9" => {
          provider_name: "Runshaw College",
          ukprn: "10005575",
          instid: "1054",
          name: "Main campus",
          country: "England",
          postcode: "PR25 3DQ"
        },
        "aa2d9a1e-a395-5f58-a983-621f7221f496" => {
          provider_name: "Ruskin College",
          ukprn: "10005583",
          instid: "1053",
          name: "Main campus",
          country: "England",
          postcode: "OX3 9BZ"
        },
        "1593c587-6723-5869-a12c-5e1f40e24504" => {
          provider_name: "S P Jain London School of Management Limited",
          ukprn: "10088214",
          instid: "0448",
          name: "Main campus",
          country: "England",
          postcode: "WC2B 5AH"
        },
        "19a182a1-d9ac-5379-abf6-8786893c83cf" => {
          provider_name: "SAE Education Limited",
          ukprn: "10007839",
          instid: "0265",
          name: "GLASGOW",
          country: "Scotland",
          postcode: "G41 1EJ"
        },
        "1702fac2-4373-59d9-a30a-1d1e16a66a47" => {
          provider_name: "SAE Education Limited",
          ukprn: "10007839",
          instid: "0265",
          name: "LIVERPOOL",
          country: "England",
          postcode: "L3 6AL"
        },
        "b4eacd62-4803-51b1-80f7-e37c8ce418e4" => {
          provider_name: "SAE Education Limited",
          ukprn: "10007839",
          instid: "0265",
          name: "Main campus",
          country: "England",
          postcode: "E8 4DD"
        },
        "0fd0993e-e485-5b9c-a736-07631a0c5bf7" => {
          provider_name: "SAE Education Limited",
          ukprn: "10007839",
          instid: "0265",
          name: "OXFORD",
          country: "England",
          postcode: "OX4 4FY"
        },
        "be884831-9837-5779-9a8e-0dcb27194396" => {
          provider_name: "Salford City College",
          ukprn: "10005032",
          instid: "1052",
          name: "Main campus",
          country: "England",
          postcode: "M50 3SR"
        },
        "6b7cdf42-9def-5395-891e-289f99218a19" => {
          provider_name: "Sandwell College",
          ukprn: "10005669",
          instid: "1051",
          name: "Main campus",
          country: "England",
          postcode: "B70 6AW"
        },
        "320af6ac-9f57-53f0-8f86-f67d3f4f8cc9" => {
          provider_name: "Selby College",
          ukprn: "10005741",
          instid: "1047",
          name: "Main campus",
          country: "England",
          postcode: "YO8 8AT"
        },
        "1306377b-17fb-5fc3-b461-cfe827a60ca7" => {
          provider_name: "Sheffield Hallam University",
          ukprn: "10005790",
          instid: "0075",
          name: "Entire HEP",
          country: "England",
          postcode: "S1 1WB"
        },
        "29b459b7-0f07-55b2-a397-998086af67d3" => {
          provider_name: "Shrewsbury Colleges Group",
          ukprn: "10005822",
          instid: "1042",
          name: "Main campus",
          country: "England",
          postcode: "SY2 6PR"
        },
        "738382a6-abc0-5203-a8f4-3c7400b2ace9" => {
          provider_name: "Slough Borough Council",
          ukprn: "10005916",
          instid: "0266",
          name: "Main campus",
          country: "England",
          postcode: "SL2 5AY"
        },
        "d42dbd01-1888-52ad-a991-b456aa828440" => {
          provider_name: "SOAS University of London",
          ukprn: "10007780",
          instid: "0146",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1H 0XG"
        },
        "4191651e-103c-557c-bba4-1b8fffe3ef01" => {
          provider_name: "Solihull College and University Centre",
          ukprn: "10005946",
          instid: "1041",
          name: "Main campus",
          country: "England",
          postcode: "B91 1SB"
        },
        "bba05719-d943-54bf-8f4b-98c00a04d041" => {
          provider_name: "South & City College Birmingham",
          ukprn: "10005967",
          instid: "1050",
          name: "Main campus",
          country: "England",
          postcode: "B5 5SU"
        },
        "6864f3f9-f647-59af-b17d-264f8bb69dc4" => {
          provider_name: "South Devon College",
          ukprn: "10005977",
          instid: "1049",
          name: "Main campus",
          country: "England",
          postcode: "TQ4 7EJ"
        },
        "2a2fa33c-e1cb-5bdd-b815-382915fc5a65" => {
          provider_name: "South Eastern Regional College",
          ukprn: "10020699",
          instid: "0348",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT27 4SU"
        },
        "816ddc7e-3f1c-522c-b2f9-7867af1dccfd" => {
          provider_name: "South Essex College of Further and Higher Education",
          ukprn: "10005981",
          instid: "1046",
          name: "Main campus",
          country: "England",
          postcode: "SS1 1ND"
        },
        "35daa29e-5ca5-5b76-9056-d7420e58b222" => {
          provider_name: "South Gloucestershire and Stroud College",
          ukprn: "10036143",
          instid: "1045",
          name: "Main campus",
          country: "England",
          postcode: "GL5 4AH"
        },
        "2715e2cb-92c0-57fc-82ef-380baa585333" => {
          provider_name: "South Hampshire College Group",
          ukprn: "10007928",
          instid: "1125",
          name: "Main campus",
          country: "England",
          postcode: "PO14 1NH"
        },
        "74713c68-0645-5e99-9e48-96976f87efc6" => {
          provider_name: "South Thames Colleges Group",
          ukprn: "10003674",
          instid: "1035",
          name: "Main campus",
          country: "England",
          postcode: "KT1 2AQ"
        },
        "b59c50c8-b81e-5df4-b694-6c87d691da03" => {
          provider_name: "South West College",
          ukprn: "10020685",
          instid: "0350",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT71 6BQ"
        },
        "56f0fd04-07c9-5943-9e6b-0236d631a235" => {
          provider_name: "Southampton City College",
          ukprn: "10006020",
          instid: "1044",
          name: "Main campus",
          country: "England",
          postcode: "SO14 1AR"
        },
        "4ff2a451-f556-50a0-91b6-f5a7e3dee15c" => {
          provider_name: "Southampton Solent University",
          ukprn: "10006022",
          instid: "0037",
          name: "Main campus",
          country: "England",
          postcode: "SO14 0YN"
        },
        "254f9ae9-6673-57ac-9bac-6f17cf8c9fba" => {
          provider_name: "Southern Regional College",
          ukprn: "10020633",
          instid: "0347",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT32 4AY"
        },
        "99dc0982-af3e-5534-b8f6-792745512b7f" => {
          provider_name: "Southport Education Group",
          ukprn: "10006038",
          instid: "1039",
          name: "Main campus",
          country: "England",
          postcode: "PR9 0TT"
        },
        "6d04b751-7c9c-5f31-95a7-5152445a1686" => {
          provider_name: "Sparsholt College",
          ukprn: "10006050",
          instid: "1040",
          name: "Main campus",
          country: "England",
          postcode: "SO21 2NF"
        },
        "9bd29a5f-67d9-5a47-8c23-de2aba434a80" => {
          provider_name: "Spurgeon's College",
          ukprn: "10006093",
          instid: "0310",
          name: "Entire HEP",
          country: "England",
          postcode: "SE25 6DJ"
        },
        "27b3ca95-ad1d-531b-9633-5d60bb83913f" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Aberdeen",
          country: "Scotland",
          postcode: "AB21 9TR"
        },
        "6e8ea443-2b97-5ff6-bb50-7d3720f65f17" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Auchincruive",
          country: "Scotland",
          postcode: "KA6 5HW"
        },
        "f2036829-1bdb-59c0-ae0f-a37c0aec66ad" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Barony",
          country: "Scotland",
          postcode: "DG1 3NE"
        },
        "82315093-5dfe-5156-869b-67ce3ab2597a" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Bush and Edinburgh Farms",
          country: "Scotland",
          postcode: "EH26 0PE"
        },
        "5b1b643f-1758-5510-a440-11a0aa87026d" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "China",
          country: "China"
        },
        "e341fdc7-cf51-52b5-80f0-95e9360baaea" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Crichton Royal Farm",
          country: "Scotland",
          postcode: "DG1 4ZZ"
        },
        "e345aa93-6830-5b23-a5a9-70883c49259b" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Edinburgh",
          country: "Scotland",
          postcode: "EH9 3JG"
        },
        "0c34f274-19d0-50fe-8461-4c99154905c5" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Elmwood",
          country: "Scotland",
          postcode: "KY15 4JB"
        },
        "9aed010c-6a56-583c-b768-b2970a34a182" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Glasgow Queenspark",
          country: "Scotland",
          postcode: "G42 8QR"
        },
        "2e4cf7fb-f975-528d-9294-7388ea40a785" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Kirkton and Auchtertyre",
          country: "Scotland",
          postcode: "FK20 8RU"
        },
        "fcee7113-5379-507a-ace9-764d9c5cf24b" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Oatridge",
          country: "Scotland",
          postcode: "EH52 6NH"
        },
        "dc3a1d68-01ae-5d63-a12e-5bf65ccd3d56" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "RIB Easter Bush",
          country: "Scotland",
          postcode: "EH25 9RE"
        },
        "6adf0205-f242-5c07-a8e3-3249670859ad" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Riverside Campus",
          country: "Scotland",
          postcode: "KA8 0SX"
        },
        "f5a898fa-0b18-558a-a1a8-39b82a96cacf" => {
          provider_name: "St George's, University of London",
          ukprn: "10007782",
          instid: "0145",
          name: "Entire HEP",
          country: "England",
          postcode: "SW17 0RE"
        },
        "dbde0c54-fda5-554e-8d24-6b3a0c9d554f" => {
          provider_name: "St Helens College",
          ukprn: "10006174",
          instid: "1034",
          name: "Main campus",
          country: "England",
          postcode: "WA10 1PP"
        },
        "0edfa0d8-b561-5ce5-919c-2b7f2100eeea" => {
          provider_name: "St Hild College",
          ukprn: "10004747",
          instid: "0467",
          name: "Main campus",
          country: "England",
          postcode: "WF14 0BW"
        },
        "76f654a7-b397-575b-aa16-088276625425" => {
          provider_name: "St Mary's College",
          ukprn: "10006226",
          instid: "1033",
          name: "Main campus",
          country: "England",
          postcode: "BB1 8DX"
        },
        "9535cb4b-0f12-5282-a857-54c4e062ea7b" => {
          provider_name: "St Mary's University College",
          ukprn: "10008026",
          instid: "0194",
          name: "Entire HEP",
          country: "Northern Ireland",
          postcode: "BT12 6FE"
        },
        "ef44cc30-a7fd-5107-bed3-55f12f1e2537" => {
          provider_name: "St Mary's University, Twickenham",
          ukprn: "10007843",
          instid: "0039",
          name: "Entire HEP",
          country: "England",
          postcode: "TW1 4SX"
        },
        "b8718951-7b49-59b6-a307-51234884709b" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "Chelmsford",
          country: "England",
          postcode: "CM1 1TY"
        },
        "62b1a200-cf50-5967-b341-83507fa0e477" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "East Midlands (Leicester)",
          country: "England",
          postcode: "LE1 5PZ"
        },
        "1e0e1f4d-0934-5d6d-a72b-ef75a72f2d8e" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "LIverpool",
          country: "England",
          postcode: "L1 7AZ"
        },
        "e8ec7876-afaf-5fe7-a7a0-267f9bc1b662" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "Main campus",
          country: "England",
          postcode: "SW5 0LX"
        },
        "35b30a84-82ee-5a67-982d-e6352216f6dd" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "Nottingham",
          country: "England",
          postcode: "NG1 3HX"
        },
        "3efe4bb6-bd75-55d9-9f42-e41aca5d74a5" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "Plymouth",
          country: "England",
          postcode: "PL4 8HF"
        },
        "47423245-31d2-5bd3-8def-767d7521eb4e" => {
          provider_name: "St Nicholas Montessori Training Limited",
          ukprn: "10045289",
          instid: "0311",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1A 2RP"
        },
        "ad20b12a-c549-54a1-ac9c-cc90d41036db" => {
          provider_name: "St Padarn's Institute",
          ukprn: "10090767",
          instid: "1197",
          name: "Main campus",
          country: "Wales",
          postcode: "CF10 5BT"
        },
        "8156d18c-06d5-59c6-94a2-8642568a9166" => {
          provider_name: "St Patrick's International College",
          ukprn: "10006243",
          instid: "0283",
          name: "Main campus",
          country: "England",
          postcode: "E15 2JB"
        },
        "ee0f3f78-ff4c-5c20-94f0-199052741926" => {
          provider_name: "Stephenson College",
          ukprn: "10006322",
          instid: "1032",
          name: "Main campus",
          country: "England",
          postcode: "LE67 3TN"
        },
        "5629a11d-8545-5373-b388-6e78fa2a1bc0" => {
          provider_name: "Stockport College",
          ukprn: "10006331",
          instid: "1036",
          name: "Main campus",
          country: "England",
          postcode: "SK1 3UQ"
        },
        "73841a1f-e57e-5fd3-b8b5-3497cb72d0f2" => {
          provider_name: "Stranmillis University College",
          ukprn: "10008010",
          instid: "0193",
          name: "Entire HEP",
          country: "Northern Ireland",
          postcode: "BT9 5DY"
        },
        "f8fcaf43-17c0-5e36-98b1-2fcc9506578c" => {
          provider_name: "Stratford College London (SCL)",
          ukprn: "10022944",
          instid: "0241",
          name: "Main campus",
          country: "England",
          postcode: "E15 4PH"
        },
        "07495be2-fd4b-5ffd-9bcc-47f56afcf902" => {
          provider_name: "Stratford-upon-Avon College",
          ukprn: "10006002",
          instid: "1030",
          name: "Main campus",
          country: "England",
          postcode: "CV37 9QR"
        },
        "f83cef38-84e2-5b14-a254-00cc471f5c68" => {
          provider_name: "Strode College",
          ukprn: "10006378",
          instid: "1031",
          name: "Main campus",
          country: "England",
          postcode: "BA16 0AB"
        },
        "6f0e5962-3260-5817-b6c8-eb427d82543a" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Bellerbys College - Brighton",
          country: "England",
          postcode: "BN1 4LF"
        },
        "d3f4c5d2-6251-58a5-b0ba-2be46ec517a0" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Bellerbys College - London",
          country: "England",
          postcode: "SE8 3DE"
        },
        "1f78b6df-e399-5f1a-b8fd-1dcd65f01cb9" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Cardiff University International Study Centre",
          country: "Wales",
          postcode: "CF10 3QN"
        },
        "b0e5b0ec-ba59-520a-916d-dedf9f92e291" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Durham University International Study Centre",
          country: "England",
          postcode: "TS17 6BH"
        },
        "211dfb4b-251b-57e4-b418-d423f319439c" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Holland International Study Centre",
          country: "Netherlands"
        },
        "c8305ce6-e140-588c-a69b-0e9009f625f2" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Kingston University International Study Centre",
          country: "England",
          postcode: "KT2 7LB"
        },
        "4890cfe2-0637-5b54-bbbc-93e1906322f5" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Lancaster University International Study Centre",
          country: "England",
          postcode: "LA1 4YX"
        },
        "8c4f7f78-9fbf-540c-8105-100d0f3c2098" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Leeds International Study Centre",
          country: "England",
          postcode: "LS6 3BR"
        },
        "38243988-4192-5a58-b65e-9ab9f51c8374" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Liverpool John Moores University International Stu",
          country: "England",
          postcode: "L3 5UX"
        },
        "bd1946a5-60f3-565c-be34-c6406a574957" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Main campus",
          country: "England",
          postcode: "TS1 3BX"
        },
        "5333581f-5793-55b6-9f1d-14e588daae1b" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Royal Holloway International Study Centre",
          country: "England",
          postcode: "TW20 0EX"
        },
        "18a7d2ef-f00a-5f42-8c19-0bedfbbccec4" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University College Dublin International Study Cent",
          country: "Ireland"
        },
        "420d6fcd-fee4-5bb6-be3e-b0d1983fe434" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Aberdeen International Study Centre",
          country: "Scotland",
          postcode: "AB24 3FX"
        },
        "cc986cd4-58f8-50c9-accf-3dc1abbc3bef" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Huddersfield International Study Cen",
          country: "England",
          postcode: "HD1 3DH"
        },
        "f7441000-988c-5316-90de-c819f64337dd" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Sheffield International College",
          country: "England",
          postcode: "S1 4DE"
        },
        "19e149ef-460e-59c8-91ad-e8681ab5c1e6" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Strathclyde International Study Cent",
          country: "Scotland",
          postcode: "G1 1QE"
        },
        "ff4faf42-8c3a-51d7-8636-89ceeb8f05d9" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Surrey International Study Centre",
          country: "England",
          postcode: "GU2 7XH"
        },
        "8e3aa5c5-27ed-5e6e-a047-59fd6b5f2324" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Sussex International Study Centre",
          country: "England",
          postcode: "BN1 9SP"
        },
        "9f473b37-4146-5a0e-af20-f05b36447a45" => {
          provider_name: "Sussex Downs College",
          ukprn: "10006432",
          instid: "1028",
          name: "Main campus",
          country: "England",
          postcode: "BN21 2UF"
        },
        "09855098-a8c4-5d68-b50b-ceae61eb1f16" => {
          provider_name: "Swansea Metropolitan University",
          ukprn: "10007846",
          instid: "0091",
          name: "Entire institution",
          country: "Wales",
          postcode: "SA1 6ED"
        },
        "ce14e017-1cba-5af2-b4fb-5ef42dc30e04" => {
          provider_name: "Swansea University",
          ukprn: "10007855",
          instid: "0180",
          name: "Entire HEP",
          country: "Wales",
          postcode: "SA2 8PP"
        },
        "64f3dee4-a8c8-507d-ac1c-e65541cf3c2e" => {
          provider_name: "Swindon College",
          ukprn: "10006463",
          instid: "1027",
          name: "Main campus",
          country: "England",
          postcode: "SN2 1DY"
        },
        "e5c17593-8291-58c8-94a2-ae7cce6374d7" => {
          provider_name: "Sysco Business Skills Academy Limited",
          ukprn: "10013122",
          instid: "0469",
          name: "Main campus",
          country: "England",
          postcode: "L3 2BA"
        },
        "952b3ab0-69fd-53fe-96b3-85725b54fbbe" => {
          provider_name: "Tameside College",
          ukprn: "10006494",
          instid: "1026",
          name: "Main campus",
          country: "England",
          postcode: "OL6 6NX"
        },
        "6d80982a-b51f-5439-8323-30b9c1ccfaa2" => {
          provider_name: "Tavistock and Portman NHS Foundation Trust",
          ukprn: "10020381",
          instid: "0433",
          name: "Belfast campus",
          country: "Northern Ireland",
          postcode: "BT15 2GB"
        },
        "9f187ba2-01df-5c04-879c-37eb0c44a23f" => {
          provider_name: "Tavistock and Portman NHS Foundation Trust",
          ukprn: "10020381",
          instid: "0433",
          name: "Birmingham campus",
          country: "England",
          postcode: "B9 4AA"
        },
        "da4e487f-2930-53dc-af33-64aca1089d28" => {
          provider_name: "Tavistock and Portman NHS Foundation Trust",
          ukprn: "10020381",
          instid: "0433",
          name: "Bristol campus",
          country: "England",
          postcode: "BS5 0AX"
        },
        "c481a3e0-86d6-517a-80d2-1c4a5b18b6c5" => {
          provider_name: "Tavistock and Portman NHS Foundation Trust",
          ukprn: "10020381",
          instid: "0433",
          name: "Leeds campus",
          country: "England",
          postcode: "LS12 1AW"
        },
        "011d74ea-5c5e-50a4-ab20-d75fc56309a8" => {
          provider_name: "Tavistock and Portman NHS Foundation Trust",
          ukprn: "10020381",
          instid: "0433",
          name: "Main campus",
          country: "England",
          postcode: "NW3 5BA"
        },
        "0d0c938c-cf0e-52a5-bbb0-896970851ddc" => {
          provider_name: "TEC Partnership",
          ukprn: "10007938",
          instid: "1119",
          name: "Main campus",
          country: "England",
          postcode: "DN34 5BQ"
        },
        "05e4a62a-4d4e-5768-909a-683f74f36f32" => {
          provider_name: "Tech Music Schools",
          ukprn: "10032299",
          instid: "0242",
          name: "Main campus",
          country: "England",
          postcode: "W3 7SZ"
        },
        "2274eff1-9f3a-5402-a39f-fef4170deccc" => {
          provider_name: "Teesside University",
          ukprn: "10007161",
          instid: "0079",
          name: "Main campus",
          country: "England",
          postcode: "TS1 3BX"
        },
        "1057403a-7458-5b2d-90f7-aecfdd1bcde5" => {
          provider_name: "Teesside University",
          ukprn: "10007161",
          instid: "0079",
          name: "Teesside University Darlington",
          country: "England",
          postcode: "DL1 1JW"
        },
        "9c0bbd1a-c95d-5a0a-bb85-a4d0ecbc29a6" => {
          provider_name: "Telford College",
          ukprn: "10006549",
          instid: "1025",
          name: "Main campus",
          country: "England",
          postcode: "TF1 2NP"
        },
        "6b245377-7460-5522-9251-db6400cea6b0" => {
          provider_name: "The Academy of Contemporary Music",
          ukprn: "10013357",
          instid: "0251",
          name: "Main campus",
          country: "England",
          postcode: "GU1 4SB"
        },
        "190c6871-1aea-5627-b828-4bed725f4af2" => {
          provider_name: "The Arts University Bournemouth",
          ukprn: "10000385",
          instid: "0197",
          name: "Drama Cente at Bournemouth Pavilion",
          country: "England",
          postcode: "BH1 2BU"
        },
        "cc146fed-cb89-5d1e-9996-915182fbd53a" => {
          provider_name: "The Arts University Bournemouth",
          ukprn: "10000385",
          instid: "0197",
          name: "Entire HEP",
          country: "England",
          postcode: "BH12 5HH"
        },
        "6d55cf99-9b0b-5273-9657-f66c5196cd53" => {
          provider_name: "The Arts University Bournemouth",
          ukprn: "10000385",
          instid: "0197",
          name: "Film Studio - Elliott Road",
          country: "England",
          postcode: "BH11 8JZ"
        },
        "49a7e174-7206-5e36-85b5-bb6a35584cc8" => {
          provider_name: "The Ashridge (Bonar Law Memorial) Trust",
          ukprn: "10008899",
          instid: "0438",
          name: "Entire HEP",
          country: "England",
          postcode: "HP4 1NS"
        },
        "98cb10f0-6d6c-5107-a352-8636ae9f8fb1" => {
          provider_name: "The Berkshire College of Agriculture (BCA)",
          ukprn: "10000654",
          instid: "1170",
          name: "Main campus",
          country: "England",
          postcode: "SL6 6QR"
        },
        "22cba9c7-e0cf-5c02-92ab-03e61892097d" => {
          provider_name: "The Bournemouth and Poole College",
          ukprn: "10000820",
          instid: "1162",
          name: "Main campus",
          country: "England",
          postcode: "BH14 0LS"
        },
        "c1180795-9842-5b3c-a1bd-20ab5f57dc65" => {
          provider_name: "The Cambridge Theological Federation",
          ukprn: "10032072",
          instid: "0288",
          name: "Main campus",
          country: "England",
          postcode: "CB3 0BJ"
        },
        "b65e0180-4916-52aa-ba4e-e265f118afb4" => {
          provider_name: "The Cambridge Theological Federation",
          ukprn: "10032072",
          instid: "0288",
          name: "Ridley Hall",
          country: "England",
          postcode: "CB3 9HG"
        },
        "6370c6d1-e1e7-5bb7-82d4-88c8dea29d88" => {
          provider_name: "The Cambridge Theological Federation",
          ukprn: "10032072",
          instid: "0288",
          name: "St Andrew's Church Enfield",
          country: "England",
          postcode: "EN1 3EG"
        },
        "ea77b53b-e5ac-5419-a303-0b12d3b7f500" => {
          provider_name: "The Cambridge Theological Federation",
          ukprn: "10032072",
          instid: "0288",
          name: "Westcott House",
          country: "England",
          postcode: "CB5 8BP"
        },
        "f05faeb7-8133-550f-b298-a10e6919f812" => {
          provider_name: "The Cambridge Theological Federation",
          ukprn: "10032072",
          instid: "0288",
          name: "Westminster College",
          country: "England",
          postcode: "CB3 0AA"
        },
        "b2a606ed-6d6c-5071-be19-678402446ebb" => {
          provider_name: "The City College",
          ukprn: "10010213",
          instid: "0271",
          name: "Entire HEP",
          country: "England",
          postcode: "N1 6AH"
        },
        "13ddc3ec-ec7c-54d0-b898-1ed607ca268f" => {
          provider_name: "The City of Liverpool College",
          ukprn: "10003955",
          instid: "1139",
          name: "Main campus",
          country: "England",
          postcode: "L3 5TP"
        },
        "4558ba4c-fb58-5146-b9a8-eda147fa7abc" => {
          provider_name: "The College of Health Ltd",
          ukprn: "10066502",
          instid: "0430",
          name: "Main campus",
          country: "England",
          postcode: "OX14 1BZ"
        },
        "945993c5-95b8-500f-9951-2be59863c609" => {
          provider_name: "The College of Health Ltd",
          ukprn: "10066502",
          instid: "0430",
          name: "Manchester",
          country: "England",
          postcode: "M1 6FQ"
        },
        "508eae74-8545-50f1-b827-7dbd1a8899f3" => {
          provider_name: "The College of Integrated Chinese Medicine",
          ukprn: "10001546",
          instid: "0270",
          name: "Entire HEP",
          country: "England",
          postcode: "RG1 7SB"
        },
        "d753df47-ce64-5aa8-af13-1b3b2d59c19d" => {
          provider_name: "The College of Osteopaths",
          ukprn: "10023442",
          instid: "0424",
          name: "Main campus",
          country: "England",
          postcode: "WD6 2DG"
        },
        "aa98d9e6-1321-508d-bc11-05c97bbb359b" => {
          provider_name: "The College of Osteopaths",
          ukprn: "10023442",
          instid: "0424",
          name: "Stoke-on-Trent",
          country: "England",
          postcode: "ST4 7NY"
        },
        "13526a98-b555-5b93-8d14-1ccba5808bd4" => {
          provider_name: "The Council of the Inns of Court",
          ukprn: "10081618",
          instid: "0412",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1R 5JD"
        },
        "ca3edf2b-bfaf-5dec-8f53-9361b74a07af" => {
          provider_name: "The Engineering and Design Institute London",
          ukprn: "10083403",
          instid: "0435",
          name: "Entire HEP",
          country: "England",
          postcode: "SE16 7LG"
        },
        "40d9f435-24f8-5f88-b4b2-e1b1d51941fc" => {
          provider_name: "The Film Education Training Trust Limited",
          ukprn: "10004035",
          instid: "0359",
          name: "Entire HEP",
          country: "England",
          postcode: "SW6 1QR"
        },
        "bf8b2be9-4e6d-5ec1-9844-71799c660b5c" => {
          provider_name: "The Institute of Cancer Research",
          ukprn: "10003324",
          instid: "0188",
          name: "Entire HEP",
          country: "England",
          postcode: "SW7 3RP"
        },
        "45b652ef-0ba1-50da-b185-6759877dbe9d" => {
          provider_name: "The Institute of Ismaili Studies",
          ukprn: "10067388",
          instid: "0360",
          name: "Entire HEP",
          country: "England",
          postcode: "N1C 4DN"
        },
        "89ab146a-a63f-5197-8f27-e5c1b9ce7141" => {
          provider_name: "The Islamic College",
          ukprn: "10029682",
          instid: "0298",
          name: "Entire HEP",
          country: "England",
          postcode: "NW10 2SW"
        },
        "75bb7596-6378-5652-a2f0-bcb7f905265b" => {
          provider_name: "The King's Foundation",
          ukprn: "10083476",
          instid: "0414",
          name: "Entire HEP",
          country: "England",
          postcode: "EC2A 3SG"
        },
        "193909a3-9843-5fe8-a8e8-71ceeb91eb9d" => {
          provider_name: "The Liverpool Institute for Performing Arts",
          ukprn: "10003945",
          instid: "0209",
          name: "Entire HEP",
          country: "England",
          postcode: "L1 9HF"
        },
        "24080fb1-fb21-5b83-957b-d78f2deac6d5" => {
          provider_name: "The London College",
          ukprn: "10015506",
          instid: "0243",
          name: "Entire HEP",
          country: "England",
          postcode: "TW5 9QX"
        },
        "5fe2b83f-9f7a-5246-b64a-0858740c3e77" => {
          provider_name: "The London Institute of Banking & Finance",
          ukprn: "10008289",
          instid: "0217",
          name: "Entire HEP",
          country: "England",
          postcode: "EC3R 8EB"
        },
        "fdff9f28-4fe3-5dde-8465-4085826f654e" => {
          provider_name: "The London Interdisciplinary School Ltd",
          ukprn: "10067623",
          instid: "0428",
          name: "Entire HEP",
          country: "England",
          postcode: "E1 1EW"
        },
        "d505191d-d2ca-52a1-a28c-e3f729eae746" => {
          provider_name: "The London School of Architecture",
          ukprn: "10062810",
          instid: "0354",
          name: "Entire HEP",
          country: "England",
          postcode: "N1 5RA"
        },
        "7d5654be-b53c-5ab8-a9a8-3d17029d43c0" => {
          provider_name: "The Manchester Metropolitan University",
          ukprn: "10004180",
          instid: "0066",
          name: "Crewe campus",
          country: "England",
          postcode: "CW1 5DU"
        },
        "09517d4a-b0a9-5a31-a0d3-5380cf4a7451" => {
          provider_name: "The Manchester Metropolitan University",
          ukprn: "10004180",
          instid: "0066",
          name: "Entire HEP",
          country: "England",
          postcode: "M15 6BH"
        },
        "41f7df02-34e1-5b1c-bf99-d3a62ba18e0e" => {
          provider_name: "The Markfield Institute of Higher Education",
          ukprn: "10023452",
          instid: "0331",
          name: "Main campus",
          country: "England",
          postcode: "LE67 9SY"
        },
        "0932ef0c-cb6a-599b-bfa1-5c8f3f8a4c06" => {
          provider_name: "The Markfield Institute of Higher Education",
          ukprn: "10023452",
          instid: "0331",
          name: "MIHE-Birmingham",
          country: "England",
          postcode: "B6 4UX"
        },
        "5dc0c5a2-fcf9-5ddf-81a9-0debfbea3cf5" => {
          provider_name: "The Markfield Institute of Higher Education",
          ukprn: "10023452",
          instid: "0331",
          name: "MIHE-LONDON",
          country: "England",
          postcode: "E1 1JQ"
        },
        "5677af38-897a-55bc-9985-b43d34877116" => {
          provider_name: "The Metanoia Institute",
          ukprn: "10004320",
          instid: "0314",
          name: "Engineer's House",
          country: "England",
          postcode: "BS8 3NB"
        },
        "e226c112-2b17-5c97-b1f9-cfb2097761af" => {
          provider_name: "The Metanoia Institute",
          ukprn: "10004320",
          instid: "0314",
          name: "Gunnersbury Avenue",
          country: "England",
          postcode: "W5 3XD"
        },
        "942628d0-4379-5ad2-9d99-aa868bf95b3f" => {
          provider_name: "The Metanoia Institute",
          ukprn: "10004320",
          instid: "0314",
          name: "Main campus",
          country: "England",
          postcode: "W5 2QB"
        },
        "aa066fbc-b37c-57f9-90a2-29f7bfef7b20" => {
          provider_name: "The Metanoia Institute",
          ukprn: "10004320",
          instid: "0314",
          name: "The Barn",
          country: "England",
          postcode: "SK9 4LD"
        },
        "8d32eec7-6c24-5727-8de2-6b39387507f7" => {
          provider_name: "The Minster Centre",
          ukprn: "10032277",
          instid: "0321",
          name: "Entire HEP",
          country: "England",
          postcode: "NW6 6RD"
        },
        "c6b58a38-267a-5c44-8526-9541e4ecd98d" => {
          provider_name: "The National Film and Television School",
          ukprn: "10004511",
          instid: "0229",
          name: "Entire HEP",
          country: "England",
          postcode: "HP9 1LG"
        },
        "4f08f66c-9f64-564b-a0e5-27bfde960eea" => {
          provider_name: "The Northern School of Art",
          ukprn: "10001503",
          instid: "1073",
          name: "Main campus",
          country: "England",
          postcode: "TS24 7DJ"
        },
        "9ac9c23d-ee61-59df-8761-f7c5e12933ed" => {
          provider_name: "The Nottingham Trent University",
          ukprn: "10004797",
          instid: "0071",
          name: "Confetti Institute of Creative Technologies",
          country: "England",
          postcode: "NG1 3LL"
        },
        "d0088b32-c334-5e90-9f12-dbb67d189696" => {
          provider_name: "The Nottingham Trent University",
          ukprn: "10004797",
          instid: "0071",
          name: "Main campus",
          country: "England",
          postcode: "NG1 4BU"
        },
        "90780295-c480-52a9-b38f-0df929cc82a7" => {
          provider_name: "The Oldham College",
          ukprn: "10006770",
          instid: "1067",
          name: "Main campus",
          country: "England",
          postcode: "OL1 1BB"
        },
        "5626e996-e079-5faf-b7eb-9dead6570626" => {
          provider_name: "The Open University in England",
          ukprn: "10007773",
          instid: "0001",
          name: "Main campus",
          country: "England",
          postcode: "MK7 6AA"
        },
        "cc675b9a-5317-5e6c-987d-3c27cf685b66" => {
          provider_name: "The Open University in England",
          ukprn: "10007773",
          instid: "0364",
          name: "Main campus",
          country: "England",
          postcode: "MK7 6AA"
        },
        "048f9502-827c-585e-99af-7c7e65d75af9" => {
          provider_name: "The Open University in Northern Ireland",
          ukprn: "10007773",
          instid: "0001",
          name: "Northern Ireland (excl. PGRs)",
          country: "Northern Ireland",
          postcode: "BT1 3GN"
        },
        "9cb4e225-1566-500d-8dd7-808ccc9827f4" => {
          provider_name: "The Open University in Northern Ireland",
          ukprn: "10007773",
          instid: "0365",
          name: "Northern Ireland (excl. PGRs)",
          country: "Northern Ireland",
          postcode: "BT1 3GN"
        },
        "90a6a9fd-984e-5c0d-9b81-b58dc1a03e40" => {
          provider_name: "The Open University in Scotland",
          ukprn: "10007773",
          instid: "0001",
          name: "Scotland (excl. PGRs)",
          country: "Scotland",
          postcode: "EH3 7QJ"
        },
        "70d870df-765e-5dd8-b807-77d020aba278" => {
          provider_name: "The Open University in Scotland",
          ukprn: "10007773",
          instid: "0366",
          name: "Scotland (excl. PGRs)",
          country: "Scotland",
          postcode: "EH3 7QJ"
        },
        "4b898dd5-f25f-5579-b490-3682c36a2164" => {
          provider_name: "The Open University in Wales",
          ukprn: "10007773",
          instid: "0001",
          name: "Wales (excl. PGRs)",
          country: "Wales",
          postcode: "CF10 1AP"
        },
        "5d13cf81-c867-51b8-a629-b22a5f50434c" => {
          provider_name: "The Open University in Wales",
          ukprn: "10007773",
          instid: "0367",
          name: "Wales (excl. PGRs)",
          country: "Wales",
          postcode: "CF10 1AP"
        },
        "51b91dab-e45b-5c62-8e7a-6c58dde92d76" => {
          provider_name: "The Place, London Contemporary Dance School (LCDS)",
          ukprn: "10004028",
          instid: "0444",
          name: "Main campus",
          country: "England",
          postcode: "WC1H 9PY"
        },
        "a5f9f753-b4ab-58e0-b688-b52941af068b" => {
          provider_name: "The Queen's Foundation for Ecumenical Theological Education",
          ukprn: "10032282",
          instid: "0315",
          name: "Entire HEP",
          country: "England",
          postcode: "B15 2QH"
        },
        "a7bcd34b-d328-5c6c-915e-903bfb44317e" => {
          provider_name: "The Royal Central School of Speech and Drama",
          ukprn: "10007816",
          instid: "0010",
          name: "Entire HEP",
          country: "England",
          postcode: "NW3 3HY"
        },
        "1ae53e7e-aecb-549d-aaad-92673b9e2120" => {
          provider_name: "The Royal College of Nursing",
          ukprn: "10007836",
          instid: "0006",
          name: "Entire institution",
          country: "England",
          postcode: "W1G 0RN"
        },
        "ff7027f1-4e04-5e8a-9150-ff0ef5d14179" => {
          provider_name: "The Royal Veterinary College",
          ukprn: "10007779",
          instid: "0143",
          name: "Hawkshead campus",
          country: "England",
          postcode: "AL9 7TA"
        },
        "0f35e44e-24ed-5cd3-a73e-56902b7eaa83" => {
          provider_name: "The Royal Veterinary College",
          ukprn: "10007779",
          instid: "0143",
          name: "Main campus",
          country: "England",
          postcode: "NW1 0TU"
        },
        "115c576e-b75e-5dd7-af64-e71972ffc8f5" => {
          provider_name: "The School of Information Risk Management",
          ukprn: "10057622",
          instid: "0459",
          name: "Main campus",
          country: "England",
          postcode: "IG1 2DR"
        },
        "d199bf4e-167b-5f21-84b3-4cedcb8e6e93" => {
          provider_name: "The School of Pharmacy",
          ukprn: "10007781",
          instid: "0147",
          name: "Entire institution",
          country: "England",
          postcode: "WC1N 1AX"
        },
        "5800442c-5684-5bcd-9e10-a3e6411f07a9" => {
          provider_name: "The Sheffield College",
          ukprn: "10005788",
          instid: "1043",
          name: "Main campus",
          country: "England",
          postcode: "S2 2RL"
        },
        "eed61702-ed2c-544e-87a2-e076eefbdab6" => {
          provider_name: "The Sherwood Institute",
          ukprn: "10053279",
          instid: "0322",
          name: "Main campus",
          country: "England",
          postcode: "NG1 6FW"
        },
        "5c4923e1-53c2-5411-bf1e-0dfe026ccc72" => {
          provider_name: "The Sherwood Psychotherapy Training Institute Limited",
          ukprn: "10023458",
          instid: "0407",
          name: "Entire HEP",
          country: "England",
          postcode: "NG7 1FW"
        },
        "d8d8e256-8099-5cc7-ae34-96c8589e2275" => {
          provider_name: "The Trafford College Group",
          ukprn: "10005998",
          instid: "1023",
          name: "Main campus",
          country: "England",
          postcode: "WA14 5PQ"
        },
        "9a2a268f-fc20-5181-b030-ec8e6d952b5d" => {
          provider_name: "The University College of Osteopathy",
          ukprn: "10000936",
          instid: "0337",
          name: "Entire HEP",
          country: "England",
          postcode: "SE1 1JE"
        },
        "b70558cb-1b53-59eb-85bb-27c4d4fd761a" => {
          provider_name: "The University of Aberdeen",
          ukprn: "10007783",
          instid: "0170",
          name: "Doha Campus",
          country: "Qatar"
        },
        "3af2e6aa-4367-538e-97d8-c5136fe2e307" => {
          provider_name: "The University of Aberdeen",
          ukprn: "10007783",
          instid: "0170",
          name: "Main campus",
          country: "Scotland",
          postcode: "AB24 3FX"
        },
        "ddecc521-99fb-515f-a193-b0d80465b18c" => {
          provider_name: "The University of Bath",
          ukprn: "10007850",
          instid: "0109",
          name: "Entire HEP",
          country: "England",
          postcode: "BA2 7AY"
        },
        "64103496-6797-5d80-8e31-ce4f2514ae6c" => {
          provider_name: "The University of Bath",
          ukprn: "10007850",
          instid: "0109",
          name: "Univ. of Bath in Swindon",
          country: "England",
          postcode: "SN3 3JR"
        },
        "0885fac9-bcdc-53ab-8672-c10c5fea6342" => {
          provider_name: "The University of Birmingham",
          ukprn: "10006840",
          instid: "0110",
          name: "Dubai",
          country: "United Arab Emirates"
        },
        "1b231c6e-5d5f-566c-8b34-8019e1200342" => {
          provider_name: "The University of Birmingham",
          ukprn: "10006840",
          instid: "0110",
          name: "Main campus",
          country: "England",
          postcode: "B15 2TT"
        },
        "b0232b0b-3a2e-5e7d-a816-3c80e7e4a2ae" => {
          provider_name: "The University of Bradford",
          ukprn: "10007785",
          instid: "0111",
          name: "Entire HEP",
          country: "England",
          postcode: "BD7 1DP"
        },
        "5cf98ac0-fb28-578b-a53d-79a96db8c747" => {
          provider_name: "The University of Brighton",
          ukprn: "10000886",
          instid: "0051",
          name: "Eastbourne",
          country: "England",
          postcode: "BN20 7UR"
        },
        "d1c5773a-eae5-5111-a7cd-6d0758dd59b7" => {
          provider_name: "The University of Brighton",
          ukprn: "10000886",
          instid: "0051",
          name: "Main campus",
          country: "England",
          postcode: "BN2 4GJ"
        },
        "cd083203-9ee9-51cb-b5cb-ff0ec78e2512" => {
          provider_name: "The University of Bristol",
          ukprn: "10007786",
          instid: "0112",
          name: "Entire HEP",
          country: "England",
          postcode: "BS8 1TH"
        },
        "3fa4f0d1-e53f-5978-948e-063c01d270af" => {
          provider_name: "The University of Buckingham",
          ukprn: "10007787",
          instid: "0203",
          name: "Crewe",
          country: "England",
          postcode: "CW1 5DU"
        },
        "81bbc6d1-afb6-5862-a446-ff0f8a6df35c" => {
          provider_name: "The University of Buckingham",
          ukprn: "10007787",
          instid: "0203",
          name: "Ealing Hospital",
          country: "England",
          postcode: "UB1 3HW"
        },
        "e88b3eec-bcbb-5901-895d-1609b0483d32" => {
          provider_name: "The University of Buckingham",
          ukprn: "10007787",
          instid: "0203",
          name: "London",
          country: "England",
          postcode: "WC1E 6HJ"
        },
        "88baeff9-048d-5e77-be7b-e83d50fb77e6" => {
          provider_name: "The University of Buckingham",
          ukprn: "10007787",
          instid: "0203",
          name: "Main campus",
          country: "England",
          postcode: "MK18 1EG"
        },
        "8eb96301-042a-5ecf-9e33-585c3f0ab036" => {
          provider_name: "The University of Cambridge",
          ukprn: "10007788",
          instid: "0114",
          name: "Entire HEP",
          country: "England",
          postcode: "CB2 1TN"
        },
        "ae6c41e1-ae81-5d55-9df5-3d40e5148ce4" => {
          provider_name: "The University of Chichester",
          ukprn: "10007137",
          instid: "0082",
          name: "Entire HEP",
          country: "England",
          postcode: "PO19 6PE"
        },
        "1b641b85-73c1-5459-bbde-6f2d62fe725c" => {
          provider_name: "The University of Chichester",
          ukprn: "10007137",
          instid: "0082",
          name: "Isle of Wight campus",
          country: "England",
          postcode: "PO30 5TA"
        },
        "ece76d3d-ffbd-5bde-85a6-707f78bf4713" => {
          provider_name: "The University of Dundee",
          ukprn: "10007852",
          instid: "0172",
          name: "Kirkcaldy",
          country: "Scotland",
          postcode: "KY2 5YS"
        },
        "5d365257-f49a-5f9a-ae24-29571193cfef" => {
          provider_name: "The University of Dundee",
          ukprn: "10007852",
          instid: "0172",
          name: "Main campus",
          country: "Scotland",
          postcode: "DD1 4HN"
        },
        "a79ee230-3e19-5e8e-b78a-4f629a6c249d" => {
          provider_name: "The University of Dundee",
          ukprn: "10007852",
          instid: "0172",
          name: "Ninewells",
          country: "Scotland",
          postcode: "DD1 9SY"
        },
        "d8e17905-9f82-5dbc-bd93-749b99b6f50a" => {
          provider_name: "The University of East Anglia",
          ukprn: "10007789",
          instid: "0117",
          name: "Entire HEP",
          country: "England",
          postcode: "NR4 7TJ"
        },
        "2cca9412-c23a-5a34-9582-b4f6911e1f29" => {
          provider_name: "The University of East Anglia",
          ukprn: "10007789",
          instid: "0117",
          name: "UEA LONDON",
          country: "England",
          postcode: "E1 7EZ"
        },
        "3adcf0d2-a279-5863-b323-28c2c5fc2982" => {
          provider_name: "The University of East London",
          ukprn: "10007144",
          instid: "0058",
          name: "Entire HEP",
          country: "England",
          postcode: "E16 2RD"
        },
        "7c4401ff-769f-5d7a-b326-afb223fc7e57" => {
          provider_name: "The University of Edinburgh",
          ukprn: "10007790",
          instid: "0167",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "EH8 9YL"
        },
        "9a27b307-5031-5260-8f24-d00181bee98b" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Chimera",
          country: "England",
          postcode: "IP5 3RE"
        },
        "12a81e65-75ac-59b3-b4b6-a52a2fa2b269" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Colchester Institute",
          country: "England",
          postcode: "CO3 3LL"
        },
        "3c0b7047-cf36-5f81-b93c-f87d768771d8" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "East 15 (Loughton) campus",
          country: "England",
          postcode: "IG10 3RY"
        },
        "ba8c9ba7-06da-5014-b3c6-a08e16b79e94" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Kaplan Open Learning",
          country: "England",
          postcode: "LS1 2RP"
        },
        "14fa4edd-46c0-5992-bca2-e5eb7f1a0f67" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Main campus",
          country: "England",
          postcode: "CO4 3SQ"
        },
        "125af452-810c-5e22-965c-d0f8a09add5f" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "South East Essex College, Southend",
          country: "England",
          postcode: "SS1 1ND"
        },
        "e7136c0a-4d09-5ac1-b74c-072a4f5673ec" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Southend campus",
          country: "England",
          postcode: "SS1 1JE"
        },
        "02f268ae-c902-5829-8c19-91260a6c2674" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Tavistock and Portman NHS Trust",
          country: "England",
          postcode: "NW3 5BA"
        },
        "59ea3c4f-c07e-5e55-b31e-4d83c6e90ca6" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "University campus Suffolk",
          country: "England",
          postcode: "IP4 1LZ"
        },
        "368fcef0-ef30-563c-b291-dd4c16e21b52" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Writtle campus",
          country: "England",
          postcode: "CM1 3RR"
        },
        "55c68c24-0a95-544e-8e8c-a23264928947" => {
          provider_name: "The University of Exeter",
          ukprn: "10007792",
          instid: "0119",
          name: "Cornwall campus",
          country: "England",
          postcode: "TR10 9EZ"
        },
        "d7a36f73-1449-5679-bee4-dea504519e3b" => {
          provider_name: "The University of Exeter",
          ukprn: "10007792",
          instid: "0119",
          name: "Main campus",
          country: "England",
          postcode: "EX4 4SB"
        },
        "8795e4a2-34e9-5b64-950c-a91ec70533d9" => {
          provider_name: "The University of Glasgow",
          ukprn: "10007794",
          instid: "0168",
          name: "Dumfries",
          country: "Scotland",
          postcode: "DG1 4ZL"
        },
        "f32ab6ab-1fb9-521f-8b94-f780f6ada2ae" => {
          provider_name: "The University of Glasgow",
          ukprn: "10007794",
          instid: "0168",
          name: "Garscube",
          country: "Scotland",
          postcode: "G20 0TH"
        },
        "614f25b8-7c81-532b-a704-eeb3d0e2c3c7" => {
          provider_name: "The University of Glasgow",
          ukprn: "10007794",
          instid: "0168",
          name: "Main campus",
          country: "Scotland",
          postcode: "G12 8QQ"
        },
        "0a5d9c96-6664-5dc6-a139-a36ae95f4c8a" => {
          provider_name: "The University of Glasgow",
          ukprn: "10007794",
          instid: "0168",
          name: "Singapore Institute of Technology",
          country: "Singapore"
        },
        "f0cbe186-83ea-50ad-a523-a4d72c86c395" => {
          provider_name: "The University of Greenwich",
          ukprn: "10007146",
          instid: "0059",
          name: "Main campus",
          country: "England",
          postcode: "SE10 9LS"
        },
        "f69dd0ec-2171-51e3-b46d-5deb3881defe" => {
          provider_name: "The University of Greenwich",
          ukprn: "10007146",
          instid: "0059",
          name: "Medway campus",
          country: "England",
          postcode: "ME4 4AW"
        },
        "9a030ae6-732f-5fe5-91b6-50796cbf5c87" => {
          provider_name: "The University of Huddersfield",
          ukprn: "10007148",
          instid: "0061",
          name: "Entire HEP",
          country: "England",
          postcode: "HD1 3DH"
        },
        "c85b760e-fdad-5998-b111-20f7a396c888" => {
          provider_name: "The University of Huddersfield",
          ukprn: "10007148",
          instid: "0061",
          name: "University Campus Barnsley",
          country: "England",
          postcode: "S70 2AN"
        },
        "578d556b-7d4f-501c-bdda-dcc3be7f1a8c" => {
          provider_name: "The University of Huddersfield",
          ukprn: "10007148",
          instid: "0061",
          name: "University Campus Oldham",
          country: "England",
          postcode: "OL1 1BB"
        },
        "851cad0b-fcef-57ca-babd-d958467344aa" => {
          provider_name: "The University of Hull",
          ukprn: "10007149",
          instid: "0120",
          name: "Entire HEP",
          country: "England",
          postcode: "HU6 7RX"
        },
        "3d7cc989-2160-5e15-96b9-e18093b6071b" => {
          provider_name: "The University of Hull",
          ukprn: "10007149",
          instid: "0120",
          name: "Scarborough campus",
          country: "England",
          postcode: "YO11 3AZ"
        },
        "a28982f1-3abe-51a8-9fa0-107b9f4dc0bc" => {
          provider_name: "The University of Kent",
          ukprn: "10007150",
          instid: "0122",
          name: "Brussels",
          country: "Belgium"
        },
        "a955b7da-e43e-5d4b-a4df-81b748f8399c" => {
          provider_name: "The University of Kent",
          ukprn: "10007150",
          instid: "0122",
          name: "Main campus",
          country: "England",
          postcode: "CT2 7NZ"
        },
        "90d0530c-234f-5fe5-9cb8-64183934b71c" => {
          provider_name: "The University of Kent",
          ukprn: "10007150",
          instid: "0122",
          name: "Medway",
          country: "England",
          postcode: "ME4 4AW"
        },
        "a02cba57-daf5-56ed-aa76-86e3e866e21a" => {
          provider_name: "The University of Kent",
          ukprn: "10007150",
          instid: "0122",
          name: "Paris",
          country: "France"
        },
        "c85ae3c9-8bdd-5684-990f-06f38658e38d" => {
          provider_name: "The University of Lancaster",
          ukprn: "10007768",
          instid: "0123",
          name: "Entire HEP",
          country: "England",
          postcode: "LA1 4YW"
        },
        "10499162-f134-5d9b-8c45-c37c0c2a09a3" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Berlin (GISMA)",
          country: "Germany"
        },
        "3a2606ae-be81-5d2b-b685-268d32b209bd" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Birmingham",
          country: "England",
          postcode: "B18 6AQ"
        },
        "9b80520c-aac0-537d-86d8-e6a2588b9d65" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Bristol",
          country: "England",
          postcode: "BS1 6HG"
        },
        "28a4c567-f7d4-579e-ba2c-6f514541cc81" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Chester",
          country: "England",
          postcode: "CH3 7AB"
        },
        "c2bea7da-30bf-5dde-8bd1-2b48dc834e01" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Exeter",
          country: "England",
          postcode: "EX4 4RJ"
        },
        "a6ee81de-1912-5a6c-a04e-4ad8191ea499" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Guildford",
          country: "England",
          postcode: "GU3 1HA"
        },
        "631e31d0-8d0b-5206-b65f-9ae107fbc537" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Hong Kong",
          country: "Hong Kong (Special Administrative Region of China) [Hong Kong]"
        },
        "db7db453-309c-59c6-b865-8b38619d7b3b" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "IE University",
          country: "Spain"
        },
        "4f24d833-ab47-5fab-8548-5c3c8f32b5a3" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Leeds",
          country: "England",
          postcode: "LS1 5HD"
        },
        "223756e0-d339-5330-92f2-6b06b5d912b5" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Liverpool",
          country: "England",
          postcode: "L69 7ZR"
        },
        "18d53c54-0673-50c9-8ddc-a95180648cbc" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "London Bloomsbury",
          country: "England",
          postcode: "WC1E 7DE"
        },
        "bbe7a231-16e0-52a8-8cee-8835d6c639fb" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "London Moorgate",
          country: "England",
          postcode: "EC1Y 8HQ"
        },
        "bdb9bfd6-fd31-5eea-b3af-84f98738d8dc" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Manchester",
          country: "England",
          postcode: "M1 4HJ"
        },
        "17ca2092-2734-583a-bde7-fc0185e6f8dd" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Newcastle",
          country: "England",
          postcode: "NE2 4HE"
        },
        "e5ae98ee-53e0-524d-8099-cee59a310016" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Norwich",
          country: "England",
          postcode: "NR4 7TJ"
        },
        "9c4cf913-e7eb-5465-83a1-e1fc430131d8" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Nottingham",
          country: "England",
          postcode: "NG1 6FS"
        },
        "12ab9b6c-01f8-543f-973c-2b860b80794d" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Reading",
          country: "England",
          postcode: "RG1 5EX"
        },
        "f6272ad6-ad28-563e-93f8-fb1b99f2186f" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Sheffield",
          country: "England",
          postcode: "S10 2TN"
        },
        "81f17980-123e-567d-aef4-ea6dc1063585" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "University of Chester",
          country: "England",
          postcode: "CH4 7AD"
        },
        "570280fe-cbde-5270-8134-1ebac5c4e1d5" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "York",
          country: "England",
          postcode: "YO23 2GA"
        },
        "252b7744-0c89-5ff8-89f5-96ef035168ab" => {
          provider_name: "The University of Leeds",
          ukprn: "10007795",
          instid: "0124",
          name: "Bretton Hall",
          country: "England",
          postcode: "WF4 4LG"
        },
        "c26735d5-ec90-59a7-9374-7d5bc81302c0" => {
          provider_name: "The University of Leeds",
          ukprn: "10007795",
          instid: "0124",
          name: "Entire HEP",
          country: "England",
          postcode: "LS2 9JT"
        },
        "336ffb2d-0c34-568f-aeb3-7614bb06678d" => {
          provider_name: "The University of Leeds",
          ukprn: "10007795",
          instid: "0124",
          name: "Wakefield",
          country: "England",
          postcode: "WF1 2DH"
        },
        "a1fe11d5-7e96-511d-8970-41f1abbf810b" => {
          provider_name: "The University of Leicester",
          ukprn: "10007796",
          instid: "0125",
          name: "Entire HEP",
          country: "England",
          postcode: "LE1 7RH"
        },
        "fbb1f208-bed3-572e-bc3b-21e60066b37c" => {
          provider_name: "The University of Lincoln",
          ukprn: "10007151",
          instid: "0062",
          name: "Holbeach",
          country: "England",
          postcode: "PE12 7PT"
        },
        "e4f367d7-ab37-5e91-ad99-251f0251face" => {
          provider_name: "The University of Lincoln",
          ukprn: "10007151",
          instid: "0062",
          name: "Hull campus",
          country: "England",
          postcode: "HU1 3BW"
        },
        "b7bae37f-04f8-5371-9fc8-f95aa4ead030" => {
          provider_name: "The University of Lincoln",
          ukprn: "10007151",
          instid: "0062",
          name: "Main campus",
          country: "England",
          postcode: "LN6 7TS"
        },
        "eb2d5bf8-ccdc-50ac-8711-a40060c459b1" => {
          provider_name: "The University of Lincoln",
          ukprn: "10007151",
          instid: "0062",
          name: "Riseholme",
          country: "England",
          postcode: "LN2 2LG"
        },
        "01094896-c6da-5053-8a83-71810c793e44" => {
          provider_name: "The University of Lincoln",
          ukprn: "10007151",
          instid: "0062",
          name: "Selborne",
          country: "England",
          postcode: "TQ6 0HJ"
        },
        "12772737-afd4-51c0-9c41-83fb6721a204" => {
          provider_name: "The University of Liverpool",
          ukprn: "10006842",
          instid: "0126",
          name: "Entire HEP",
          country: "England",
          postcode: "L69 7ZX"
        },
        "ae89be55-50fb-576c-b83d-3c4a84e02853" => {
          provider_name: "The University of Liverpool",
          ukprn: "10006842",
          instid: "0126",
          name: "London Campus",
          country: "England",
          postcode: "EC2A 1AG"
        },
        "e3333a6b-8d43-58ae-8a24-b4fc41c95352" => {
          provider_name: "The University of Manchester",
          ukprn: "10007798",
          instid: "0204",
          name: "Jodrell Bank Observatory",
          country: "England",
          postcode: "SK11 9DL"
        },
        "6a0f67bd-a66f-5b96-95a2-40c6b707f9d3" => {
          provider_name: "The University of Manchester",
          ukprn: "10007798",
          instid: "0204",
          name: "Main campus",
          country: "England",
          postcode: "M13 9PL"
        },
        "572e0e7f-7b97-5d49-85a8-6fcada73867c" => {
          provider_name: "The University of Northampton",
          ukprn: "10007138",
          instid: "0027",
          name: "Entire HEP",
          country: "England",
          postcode: "NN1 5PH"
        },
        "d4ffeb12-00af-59d0-a7e3-5bf193b5cd32" => {
          provider_name: "The University of Oxford",
          ukprn: "10007774",
          instid: "0156",
          name: "Kenya",
          country: "Kenya"
        },
        "13471129-d4c1-5d96-a008-09d9edac3957" => {
          provider_name: "The University of Oxford",
          ukprn: "10007774",
          instid: "0156",
          name: "Main campus",
          country: "England",
          postcode: "OX1 2JD"
        },
        "81bfbe9d-9c42-5ede-ac23-1f49c7031921" => {
          provider_name: "The University of Oxford",
          ukprn: "10007774",
          instid: "0156",
          name: "Thailand",
          country: "Thailand"
        },
        "32f5675f-5069-539f-a236-61d36a85ec8c" => {
          provider_name: "The University of Oxford",
          ukprn: "10007774",
          instid: "0156",
          name: "Vietnam",
          country: "Vietnam [Viet Nam]"
        },
        "77ccf12d-4e1f-5725-b014-0fcb69b2adb1" => {
          provider_name: "The University of Portsmouth",
          ukprn: "10007155",
          instid: "0074",
          name: "Entire HEP",
          country: "England",
          postcode: "PO1 2UP"
        },
        "486ee9b3-9747-57f7-b648-73f188a4086c" => {
          provider_name: "The University of Reading",
          ukprn: "10007802",
          instid: "0157",
          name: "Greenlands Campus",
          country: "England",
          postcode: "RG9 3AU"
        },
        "114f730c-e977-5200-96b0-53e8e516e87b" => {
          provider_name: "The University of Reading",
          ukprn: "10007802",
          instid: "0157",
          name: "Main campus",
          country: "England",
          postcode: "RG6 6AH"
        },
        "2795d8f8-13f9-5110-ad45-80f870a2e998" => {
          provider_name: "The University of Reading",
          ukprn: "10007802",
          instid: "0157",
          name: "University of Reading Malaysia",
          country: "Malaysia"
        },
        "f8f1c12d-9bab-51ae-95a6-5f219a170739" => {
          provider_name: "The University of Salford",
          ukprn: "10007156",
          instid: "0158",
          name: "Entire HEP",
          country: "England",
          postcode: "M5 4WT"
        },
        "f66eeb4d-d27f-5ab9-9d4e-0c51d011bd8c" => {
          provider_name: "The University of Sheffield",
          ukprn: "10007157",
          instid: "0159",
          name: "AMRC Cymru",
          country: "Wales",
          postcode: "CH4 0DH"
        },
        "92f2e523-9db9-58fd-8c2d-5d1947d11913" => {
          provider_name: "The University of Sheffield",
          ukprn: "10007157",
          instid: "0159",
          name: "AMRC North West",
          country: "England",
          postcode: "PR1 2UX"
        },
        "39d41fe3-d87c-5be8-bbdd-064bb89fdf4e" => {
          provider_name: "The University of Sheffield",
          ukprn: "10007157",
          instid: "0159",
          name: "Main campus",
          country: "England",
          postcode: "S10 2TN"
        },
        "a944e5ba-d04d-576f-8600-b8ee532a8a84" => {
          provider_name: "The University of Sheffield",
          ukprn: "10007157",
          instid: "0159",
          name: "NAMRC Birkenhead",
          country: "England",
          postcode: "CH41 9BP"
        },
        "f2fea530-82c1-559c-a95d-1cc6dd34f64e" => {
          provider_name: "The University of Sheffield",
          ukprn: "10007157",
          instid: "0159",
          name: "NAMRC Midlands",
          country: "England",
          postcode: "DE24 9FU"
        },
        "2e7d4052-5ee4-5b91-bef6-c3bfb5a19145" => {
          provider_name: "The University of Southampton",
          ukprn: "10007158",
          instid: "0160",
          name: "Main campus",
          country: "England",
          postcode: "SO17 1BJ"
        },
        "27524b74-16b6-57e8-b56c-874282364b37" => {
          provider_name: "The University of Southampton",
          ukprn: "10007158",
          instid: "0160",
          name: "USMC",
          country: "Malaysia"
        },
        "72d98b50-dc2c-5490-a047-d2a510be130f" => {
          provider_name: "The University of Southampton",
          ukprn: "10007158",
          instid: "0160",
          name: "Winchester",
          country: "England",
          postcode: "SO23 8DL"
        },
        "4ac1e97b-b653-5ca2-a78e-1a6cfe68c0f5" => {
          provider_name: "The University of St. Andrews",
          ukprn: "10007803",
          instid: "0173",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "KY16 9AJ"
        },
        "61d7dc42-5826-5d8f-b70c-00143163bc8d" => {
          provider_name: "The University of Stirling",
          ukprn: "10007804",
          instid: "0174",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "FK9 4LA"
        },
        "6cdaa55f-9bc4-57a1-b696-18f9f8e1e3a5" => {
          provider_name: "The University of Stirling",
          ukprn: "10007804",
          instid: "0174",
          name: "Inverness",
          country: "Scotland",
          postcode: "IV2 3JH"
        },
        "6db475e8-8e5f-54db-b61e-518913c6670f" => {
          provider_name: "The University of Stirling",
          ukprn: "10007804",
          instid: "0174",
          name: "London",
          country: "England",
          postcode: "E1 4PB"
        },
        "b5461731-12de-5405-a476-c38b937d0b6b" => {
          provider_name: "The University of Stirling",
          ukprn: "10007804",
          instid: "0174",
          name: "Stornoway",
          country: "Scotland",
          postcode: "HS1 2AF"
        },
        "9922f974-431c-5ff9-8995-94ca7de93ce2" => {
          provider_name: "The University of Strathclyde",
          ukprn: "10007805",
          instid: "0169",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "G1 1XQ"
        },
        "7f1e0d64-4d74-581e-92f4-075fdd3c0412" => {
          provider_name: "The University of Sunderland",
          ukprn: "10007159",
          instid: "0078",
          name: "Main campus",
          country: "England",
          postcode: "SR1 3SD"
        },
        "c4f9df5c-0e56-5d72-81be-54188a35d367" => {
          provider_name: "The University of Sunderland",
          ukprn: "10007159",
          instid: "0078",
          name: "University of Sunderland in Hong Kong",
          country: "Hong Kong (Special Administrative Region of China) [Hong Kong]"
        },
        "b7979027-4fcd-57d2-9985-3c1914b22463" => {
          provider_name: "The University of Sunderland",
          ukprn: "10007159",
          instid: "0078",
          name: "University of Sunderland in London",
          country: "England",
          postcode: "E14 9SG"
        },
        "6d2485ae-a0d6-5b27-96c4-6f5b4c75d5fb" => {
          provider_name: "The University of Surrey",
          ukprn: "10007160",
          instid: "0161",
          name: "Entire HEP",
          country: "England",
          postcode: "GU2 7XH"
        },
        "3a55c594-ee59-5611-8931-a7ec2dfd3382" => {
          provider_name: "The University of Sussex",
          ukprn: "10007806",
          instid: "0162",
          name: "Entire HEP",
          country: "England",
          postcode: "BN1 9RH"
        },
        "020f6a11-b7c2-5b84-afe8-df63a3576230" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "Ayr Campus",
          country: "Scotland",
          postcode: "KA8 0SX"
        },
        "67e3f087-c2a5-5c85-af1f-7bd39a748651" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "Dumfries Campus",
          country: "Scotland",
          postcode: "DG1 4ZN"
        },
        "a025959d-82bd-56c7-8abf-f2e51e95efc1" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "Hamilton Campus",
          country: "Scotland",
          postcode: "ML3 0JB"
        },
        "5e971ecc-743a-5b33-bbc8-418f5c80a454" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "Lanarkshire Campus",
          country: "Scotland",
          postcode: "G72 0LH"
        },
        "128bb17f-2288-5f5f-88b0-e37f47a03ed5" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "London Campus",
          country: "England",
          postcode: "SE1 6NP"
        },
        "cea61b9c-e433-579b-bc20-65d30a0fd436" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "London Republic Campus",
          country: "England",
          postcode: "E14 2BE"
        },
        "4a5f8055-91a3-59ed-af44-7b7cfaa0b144" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "Main campus",
          country: "Scotland",
          postcode: "PA1 2BE"
        },
        "e6d1928e-11ac-5ae8-9d0f-da79155c6819" => {
          provider_name: "The University of Wales (central functions)",
          ukprn: "10008574",
          instid: "0186",
          name: "Centre for Advanced Welsh and Celtic Studies",
          country: "Wales",
          postcode: "SY23 3HH"
        },
        "75af0fbc-b85a-5240-beb6-192c7c47f4c0" => {
          provider_name: "The University of Wales (central functions)",
          ukprn: "10008574",
          instid: "0186",
          name: "Entire HEP",
          country: "Wales",
          postcode: "CF10 3NS"
        },
        "87dd9b46-9be1-59d7-8e92-ebf3555b20ee" => {
          provider_name: "The University of Wales (central functions)",
          ukprn: "10008574",
          instid: "0186",
          name: "Gregynog",
          country: "Wales",
          postcode: "SY16 3PW"
        },
        "a8a613be-6689-5582-8db6-89c133cd5fed" => {
          provider_name: "The University of Wales (central functions)",
          ukprn: "10008574",
          instid: "0186",
          name: "Welsh Centre for Advanced Batch Manufacture",
          country: "Wales",
          postcode: "SA1 8AS"
        },
        "83af64a2-af8b-5528-88f2-a95c2848af45" => {
          provider_name: "The University of Wales (central functions)",
          ukprn: "10008574",
          instid: "0186",
          name: "Y Galeri, Caernarfon",
          country: "Wales",
          postcode: "LL55 1SQ"
        },
        "9cf49b81-dcee-5c88-a806-0f87bfd89cfc" => {
          provider_name: "The University of Wales, Newport",
          ukprn: "10007853",
          instid: "0086",
          name: "Entire institution",
          country: "Wales",
          postcode: "NP18 3QT"
        },
        "96dc6ec3-1c8c-504e-b932-76d4585718af" => {
          provider_name: "The University of Warwick",
          ukprn: "10007163",
          instid: "0163",
          name: "Main campus",
          country: "England",
          postcode: "CV4 7AL"
        },
        "746c8255-31c0-5793-b994-af0710cfc5b5" => {
          provider_name: "The University of Warwick",
          ukprn: "10007163",
          instid: "0163",
          name: "Warwick Business School - London Base",
          country: "England",
          postcode: "SE1 9SG"
        },
        "bd4e910b-7ef8-591c-9b5a-75e13558342d" => {
          provider_name: "The University of West London",
          ukprn: "10006566",
          instid: "0080",
          name: "Brentford campis",
          country: "England",
          postcode: "TW8 9GA"
        },
        "fe216639-b26a-52cd-80eb-4ff85f198739" => {
          provider_name: "The University of West London",
          ukprn: "10006566",
          instid: "0080",
          name: "Main campus",
          country: "England",
          postcode: "W5 5RF"
        },
        "72d67c77-059b-554a-96ee-3180a822a5f6" => {
          provider_name: "The University of West London",
          ukprn: "10006566",
          instid: "0080",
          name: "Reading Campus",
          country: "England",
          postcode: "RG1 7QF"
        },
        "b31b5285-bddb-51eb-b202-e806e74289e7" => {
          provider_name: "The University of West London",
          ukprn: "10006566",
          instid: "0080",
          name: "Ruskin Campus",
          country: "England",
          postcode: "OX3 9BZ"
        },
        "ae8d5a42-9516-5f24-9954-49ad77022837" => {
          provider_name: "The University of West London",
          ukprn: "10006566",
          instid: "0080",
          name: "Slough campus",
          country: "England",
          postcode: "SL1 4UT"
        },
        "0656cb0c-e1d7-58dc-ace4-a6776bef79c4" => {
          provider_name: "The University of Westminster",
          ukprn: "10007165",
          instid: "0083",
          name: "Cavendish Campus",
          country: "England",
          postcode: "W1W 6UW"
        },
        "86fcc45d-03cf-56fe-87b5-60100d97e043" => {
          provider_name: "The University of Westminster",
          ukprn: "10007165",
          instid: "0083",
          name: "Harrow Campus",
          country: "England",
          postcode: "HA1 3TP"
        },
        "933ae1a4-172b-5020-9888-f4fb07f871a1" => {
          provider_name: "The University of Westminster",
          ukprn: "10007165",
          instid: "0083",
          name: "Main campus",
          country: "England",
          postcode: "W1B 2HW"
        },
        "0cf4702f-673a-5d6f-a53f-8549bac02dd6" => {
          provider_name: "The University of Westminster",
          ukprn: "10007165",
          instid: "0083",
          name: "Marylebone Campus",
          country: "England",
          postcode: "NW1 5LS"
        },
        "4e5f7f80-8409-5b3a-a5dd-e811595e072e" => {
          provider_name: "The University of Westminster",
          ukprn: "10007165",
          instid: "0083",
          name: "Regent Campus",
          country: "England",
          postcode: "W1B 2HW"
        },
        "34508f5a-7124-51a9-b77f-d0ec15f06f83" => {
          provider_name: "The University of Winchester",
          ukprn: "10003614",
          instid: "0021",
          name: "Chute House",
          country: "England",
          postcode: "RG21 7QT"
        },
        "a0a422cf-2e99-5c3a-aacc-1e30e23b6f9d" => {
          provider_name: "The University of Winchester",
          ukprn: "10003614",
          instid: "0021",
          name: "Entire HEP",
          country: "England",
          postcode: "SO22 4NR"
        },
        "f0f01b36-7a23-51d5-a75d-ae701495b400" => {
          provider_name: "The University of Wolverhampton",
          ukprn: "10007166",
          instid: "0085",
          name: "Burton campus",
          country: "England",
          postcode: "DE13 0RB"
        },
        "b0128af1-ee40-55fb-a70d-92e1617a488d" => {
          provider_name: "The University of Wolverhampton",
          ukprn: "10007166",
          instid: "0085",
          name: "Main campus",
          country: "England",
          postcode: "WV1 1LY"
        },
        "b7e5334a-ad99-5648-9605-87b8fccc34a1" => {
          provider_name: "The University of Wolverhampton",
          ukprn: "10007166",
          instid: "0085",
          name: "Southwater Campus",
          country: "England",
          postcode: "TF3 4HZ"
        },
        "2c4f8d22-3c3f-5144-8728-d28005a9de5d" => {
          provider_name: "The University of Wolverhampton",
          ukprn: "10007166",
          instid: "0085",
          name: "Telford campus",
          country: "England",
          postcode: "TF2 9NT"
        },
        "ba59dce4-508b-560b-898e-0b7f87fc821f" => {
          provider_name: "The University of Wolverhampton",
          ukprn: "10007166",
          instid: "0085",
          name: "Walsall campus",
          country: "England",
          postcode: "WS1 3BD"
        },
        "8d765276-6883-5eea-bc58-c2b0f111c7ae" => {
          provider_name: "The University of York",
          ukprn: "10007167",
          instid: "0164",
          name: "Entire HEP",
          country: "England",
          postcode: "YO10 5DD"
        },
        "a8c421c5-18fd-5d91-a111-f379edf68084" => {
          provider_name: "The Windsor Forest Colleges Group",
          ukprn: "10002107",
          instid: "1010",
          name: "Main campus",
          country: "England",
          postcode: "SL3 8BY"
        },
        "d83c0d29-02e2-5556-aa6e-80c7d832008d" => {
          provider_name: "The WKCIC Group",
          ukprn: "10007455",
          instid: "1008",
          name: "Main campus",
          country: "England",
          postcode: "NW1 3HB"
        },
        "3850b6de-fc4d-5d17-9711-10a545d0c47b" => {
          provider_name: "ThinkSpace Education Limited",
          ukprn: "10082743",
          instid: "0437",
          name: "Entire HEP",
          country: "England",
          postcode: "PO20 7LB"
        },
        "9d7f77dd-3714-530b-a212-0d0a22a2e525" => {
          provider_name: "Tottenham Hotspur Foundation",
          ukprn: "10037822",
          instid: "0267",
          name: "Main campus",
          country: "England",
          postcode: "N17 0AP"
        },
        "8a14f099-94fc-5c27-9dbc-82bf6ce0f08c" => {
          provider_name: "Trinity College Bristol",
          ukprn: "10023464",
          instid: "0317",
          name: "Entire HEP",
          country: "England",
          postcode: "BS9 1JP"
        },
        "59ec3ea0-562f-590b-996d-e987a8d0a482" => {
          provider_name: "Trinity Laban Conservatoire of Music and Dance",
          ukprn: "10008017",
          instid: "0041",
          name: "Entire HEP",
          country: "England",
          postcode: "SE10 9LS"
        },
        "5e838c27-9e41-5cac-9ef1-7ed5531bfeeb" => {
          provider_name: "Trinity University College",
          ukprn: "10007048",
          instid: "0092",
          name: "Entire institution",
          country: "Wales",
          postcode: "SA31 3EP"
        },
        "4df5c81b-1241-568d-ad6c-f95ce038dc26" => {
          provider_name: "Truro and Penwith College",
          ukprn: "10007063",
          instid: "1066",
          name: "Main campus",
          country: "England",
          postcode: "TR1 3XX"
        },
        "47b8a29d-0616-50e5-8fb5-c32ab69d8c7a" => {
          provider_name: "Tyne Coast College",
          ukprn: "10005999",
          instid: "1022",
          name: "Main campus",
          country: "England",
          postcode: "NE34 6ET"
        },
        "1b94910a-543f-5cc9-9f28-962d2d909967" => {
          provider_name: "UK Business College Ltd",
          ukprn: "10042737",
          instid: "0358",
          name: "Main campus",
          country: "England",
          postcode: "LU1 3HG"
        },
        "f5ac6a92-fdf6-566b-8631-88cd02e0a7b0" => {
          provider_name: "UK College of Business and Computing",
          ukprn: "10022021",
          instid: "0249",
          name: "Main campus",
          country: "England",
          postcode: "IG2 6NW"
        },
        "c84f3264-8194-54e3-bead-d22401144788" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "Belfast",
          country: "Northern Ireland",
          postcode: "BT15 1ED"
        },
        "61436398-9761-52a3-a37e-1699f4036abf" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "Birmingham",
          country: "England",
          postcode: "B5 4UA"
        },
        "c313e8fe-9269-528b-a7e9-d5a077c484cd" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "Coleraine",
          country: "Northern Ireland",
          postcode: "BT52 1SA"
        },
        "8e31e433-1e73-52dc-a574-a0f4fd72339a" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "Jordanstown",
          country: "Northern Ireland",
          postcode: "BT37 0QB"
        },
        "d2105ad4-639c-5b69-8627-99a88d8682ba" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "London",
          country: "England",
          postcode: "EC1R 4TF"
        },
        "85e63189-586f-514c-bd84-70a29db91979" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "Magee",
          country: "Northern Ireland",
          postcode: "BT48 7JL"
        },
        "1c644349-7660-56c5-b0e7-b2ab1642195a" => {
          provider_name: "Unified Seevic Palmer's College",
          ukprn: "10005736",
          instid: "1048",
          name: "Main campus",
          country: "England",
          postcode: "SS7 1TW"
        },
        "5e754e66-aef3-558a-b191-e2ca2207d83b" => {
          provider_name: "Union Foundation",
          ukprn: "10024766",
          instid: "1198",
          name: "Main campus",
          country: "Wales",
          postcode: "CF31 4DX"
        },
        "ee05b918-7531-532a-8ac4-8ea621d8b19b" => {
          provider_name: "United Colleges Group",
          ukprn: "10001476",
          instid: "1021",
          name: "Main campus",
          country: "England",
          postcode: "W2 1NB"
        },
        "3498a772-b6d8-5450-9a33-920115618c73" => {
          provider_name: "University Academy 92 Limited",
          ukprn: "10067648",
          instid: "0434",
          name: "Entire HEP",
          country: "England",
          postcode: "M16 0PU"
        },
        "928e429b-1446-5e55-a2fb-680c43643c17" => {
          provider_name: "University Centre Peterborough",
          ukprn: "10068157",
          instid: "0408",
          name: "Addict Dance Academy",
          country: "England",
          postcode: "LE1 4LF"
        },
        "e6f8ef8f-773d-55bd-9e9d-1fff33a9ea3f" => {
          provider_name: "University Centre Peterborough",
          ukprn: "10068157",
          instid: "0408",
          name: "Main campus",
          country: "England",
          postcode: "PE1 4DZ"
        },
        "7bfb6ff6-276a-5d34-a964-e7fd53a47b09" => {
          provider_name: "University Centre Peterborough",
          ukprn: "10068157",
          instid: "0408",
          name: "Stamford",
          country: "England",
          postcode: "PE9 1XA"
        },
        "c67a2672-a5c5-50a5-9969-abab436099df" => {
          provider_name: "University Centre Quayside Limited",
          ukprn: "10025197",
          instid: "0418",
          name: "Entire HEP",
          country: "England",
          postcode: "NE6 1LL"
        },
        "6f6702bf-26fc-52f5-8faf-2717c2551baa" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Aston Institute",
          country: "Hong Kong (Special Administrative Region of China) [Hong Kong]"
        },
        "6977f4bd-32d9-5ce1-bc6c-681deb93ff42" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Birmingham City Football Club Community Trust",
          country: "England",
          postcode: "B9 4NH"
        },
        "f1c8d580-df52-5fb0-b464-6eac0c13aa71" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Brown Town Community College",
          country: "Jamaica"
        },
        "a84551ab-4c90-5966-b776-addb66b6245a" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Caritas",
          country: "Hong Kong (Special Administrative Region of China) [Hong Kong]"
        },
        "f80d9261-3cad-5d97-88bc-869a49dde805" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Caritas (Macau)",
          country: "Macao (Special Administrative Region of China) [Macao]"
        },
        "044b68f6-330b-5bc4-8d9e-f20672cbad99" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Institute of Technology",
          country: "Ireland"
        },
        "e9a8cd11-5ee0-5e41-b06b-0900bb0fd958" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Main campus",
          country: "England",
          postcode: "B3 1JB"
        },
        "b23aeb91-ecd9-506d-8052-d5ec45a85374" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Maldives College of HE",
          country: "Maldives"
        },
        "8680a318-da70-5ce8-b0a6-f92935a0387a" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Rushmore Business School",
          country: "Mauritius"
        },
        "e3bbd363-9cdc-5b2f-9a79-735a3fbb306f" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "TUV",
          country: "Germany"
        },
        "e43358e0-10af-58c9-a8fa-058c5295fc96" => {
          provider_name: "University College London",
          ukprn: "10007784",
          instid: "0149",
          name: "BCA Academy of the Built Environment, Singapore",
          country: "Singapore"
        },
        "751fc513-8c03-5283-9f97-1c88e4762e2c" => {
          provider_name: "University College London",
          ukprn: "10007784",
          instid: "0149",
          name: "Main campus",
          country: "England",
          postcode: "WC1E 6BT"
        },
        "957aac68-7c7f-5507-95f5-95bd4a4d5536" => {
          provider_name: "University College London",
          ukprn: "10007784",
          instid: "0149",
          name: "UCL at Here East",
          country: "England",
          postcode: "E20 3BS"
        },
        "465a9945-85bc-5f4b-8ab8-001e1e97cb1a" => {
          provider_name: "University College London",
          ukprn: "10007784",
          instid: "0149",
          name: "UCL East",
          country: "England",
          postcode: "E20 2AE"
        },
        "fac6a90b-51c5-5dbb-a25a-efd2ea68b645" => {
          provider_name: "University College London",
          ukprn: "10007784",
          instid: "0149",
          name: "UCL Qatar",
          country: "Qatar"
        },
        "b4b6c898-e832-57d1-a5dd-af721a78e372" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "Canterbury",
          country: "England",
          postcode: "CT1 3AN"
        },
        "bb60e3ca-c536-5aa0-9011-7d0c7a5ecc10" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "Epsom",
          country: "England",
          postcode: "KT18 5BE"
        },
        "bd483790-f153-5505-a090-82ba2442526c" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "ICI",
          country: "China"
        },
        "c7a85398-094f-5bf4-8b81-82e5f286b3d9" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "LCCA",
          country: "England",
          postcode: "EC3N 4DX"
        },
        "415a5d45-2342-595b-bbd8-2a212a60b398" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "LCCM",
          country: "England",
          postcode: "SE1 0LR"
        },
        "d7794e64-93a9-58e2-8d39-7ac793991ab1" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "Main campus",
          country: "England",
          postcode: "GU9 7DS"
        },
        "9e22a5b0-affe-583d-aadd-4cdf7222bd90" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "OCA",
          country: "England",
          postcode: "S75 1JN"
        },
        "f1570967-b714-53b1-937c-8d35cb548ce7" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "Rochester",
          country: "England",
          postcode: "ME1 1DZ"
        },
        "e4feb20c-70e5-55c8-8c39-436c8b19fcd5" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "Aylesbury Campus",
          country: "England",
          postcode: "HP21 8AL"
        },
        "da4f39ea-b80a-5039-9f43-ed19e5186a33" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "Bedford campus",
          country: "England",
          postcode: "MK41 9EA"
        },
        "76790c73-08d9-5247-a485-009089f54e07" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "Birmingham Study Centre",
          country: "England",
          postcode: "B4 7LR"
        },
        "8c73ad8b-4afe-5bd1-bb4a-7f02320ca43e" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "London Study Centre",
          country: "England",
          postcode: "SE1 1NX"
        },
        "54441cf6-f4f2-5b50-989a-8a0809783975" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "Main campus",
          country: "England",
          postcode: "LU1 3JU"
        },
        "ff88737e-f95c-5e45-9e4f-b9d1a2e2a388" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "Milton Keynes",
          country: "England",
          postcode: "MK9 3HS"
        },
        "15a8f469-8e7b-565a-8dc7-a4b99a0db522" => {
          provider_name: "University of Chester",
          ukprn: "10007848",
          instid: "0011",
          name: "Main campus",
          country: "England",
          postcode: "CH1 4BJ"
        },
        "8795f05d-f8f1-5b88-911d-6675610229b1" => {
          provider_name: "University of Chester",
          ukprn: "10007848",
          instid: "0011",
          name: "Shrewsbury",
          country: "England",
          postcode: "SY3 8HQ"
        },
        "515046e7-4f4b-5b68-9604-beb32e1b8126" => {
          provider_name: "University of Chester",
          ukprn: "10007848",
          instid: "0011",
          name: "Warrington",
          country: "England",
          postcode: "WA2 0DB"
        },
        "b1c61fed-08ed-593c-9f58-8068a75483b3" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Ambleside campus",
          country: "England",
          postcode: "LA22 9BB"
        },
        "77e7a3c0-a3e3-506f-b99f-06b53deeca46" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Carlisle Business School Paternoster Row",
          country: "England",
          postcode: "CA3 8TB"
        },
        "b7728319-d292-57d4-bbd2-990535468385" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Cumbria Brampton Road",
          country: "England",
          postcode: "CA3 9AY"
        },
        "f48903c5-7e3a-5304-a8b3-a011f08f03bf" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "East India Dock Road",
          country: "England",
          postcode: "E14 6JE"
        },
        "2c7350ca-d48d-5f7f-976a-fd6376a15bf8" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Lancaster",
          country: "England",
          postcode: "LA1 3JD"
        },
        "c0edbe86-d841-5414-a059-4ce342630d5a" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Main campus",
          country: "England",
          postcode: "CA1 2HH"
        },
        "ac40f74f-c47f-59d4-a622-d14a541b9d48" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Penrith Newton Rigg",
          country: "England",
          postcode: "CA11 0AH"
        },
        "225a3806-2629-5c58-862e-f707e7111da0" => {
          provider_name: "University of Derby",
          ukprn: "10007851",
          instid: "0057",
          name: "Buxton campus",
          country: "England",
          postcode: "SK17 6RY"
        },
        "cc9f322a-525e-5085-b970-9a6f41ff676f" => {
          provider_name: "University of Derby",
          ukprn: "10007851",
          instid: "0057",
          name: "Chesterfield campus",
          country: "England",
          postcode: "S41 7LL"
        },
        "b4ea2d84-8a41-5d28-a193-f83d71d66f81" => {
          provider_name: "University of Derby",
          ukprn: "10007851",
          instid: "0057",
          name: "Leek Campus",
          country: "England",
          postcode: "ST13 6DP"
        },
        "0828573d-1492-53d9-9acd-1095592fa750" => {
          provider_name: "University of Derby",
          ukprn: "10007851",
          instid: "0057",
          name: "Main campus",
          country: "England",
          postcode: "DE22 1GB"
        },
        "ce76b192-bf04-5c97-856f-89c5e62a4b60" => {
          provider_name: "University of Derby",
          ukprn: "10007851",
          instid: "0057",
          name: "Overseas"
        },
        "ed8eb915-4d97-5a72-93b0-482d7f91154f" => {
          provider_name: "University of Durham",
          ukprn: "10007143",
          instid: "0116",
          name: "Entire HEP",
          country: "England",
          postcode: "DH1 3LE"
        },
        "bce4a462-4910-5965-ae69-e84aa3a3ccdd" => {
          provider_name: "University of Durham",
          ukprn: "10007143",
          instid: "0116",
          name: "Queen's Campus, Stockton",
          country: "England",
          postcode: "TS17 6BH"
        },
        "08ae771f-d36f-5510-b118-272dd46ebd29" => {
          provider_name: "University of Gloucestershire",
          ukprn: "10007145",
          instid: "0054",
          name: "Francis Close Hall Campus, Cheltenham",
          country: "England",
          postcode: "GL50 4AZ"
        },
        "c30a34ae-9b11-52ad-9a87-134d9051322a" => {
          provider_name: "University of Gloucestershire",
          ukprn: "10007145",
          instid: "0054",
          name: "London Campus",
          country: "England",
          postcode: "E14 6JE"
        },
        "4fd6a3ff-547d-5690-b36d-9813e16f9791" => {
          provider_name: "University of Gloucestershire",
          ukprn: "10007145",
          instid: "0054",
          name: "Main campus",
          country: "England",
          postcode: "GL50 2RH"
        },
        "2d4ac525-e37b-5afc-bd01-d3e84e579550" => {
          provider_name: "University of Gloucestershire",
          ukprn: "10007145",
          instid: "0054",
          name: "Oxstalls Campus, Gloucester",
          country: "England",
          postcode: "GL2 9HW"
        },
        "cbb9f13a-5f0d-5df7-8287-718db0d5b3ed" => {
          provider_name: "University of Greater Manchester",
          ukprn: "10006841",
          instid: "0049",
          name: "Main campus",
          country: "England",
          postcode: "BL3 5AB"
        },
        "87321b1a-dbf5-556a-9d72-e25931c02436" => {
          provider_name: "University of Hertfordshire",
          ukprn: "10007147",
          instid: "0060",
          name: "Entire HEP",
          country: "England",
          postcode: "AL10 9AB"
        },
        "88f5c1ee-0cc5-55fa-a9df-6098d5798ce0" => {
          provider_name: "University of Hertfordshire",
          ukprn: "10007147",
          instid: "0060",
          name: "Hatfield campus",
          country: "England",
          postcode: "AL10 9AB"
        },
        "b7dc63b2-ae2f-51d9-a506-34f35451079d" => {
          provider_name: "University of Hertfordshire",
          ukprn: "10007147",
          instid: "0060",
          name: "St Albans campus",
          country: "England",
          postcode: "AL1 3RR"
        },
        "0c54df05-f8fd-57d9-b4eb-9a055a6f3a5c" => {
          provider_name: "University of Lancashire",
          ukprn: "10007141",
          instid: "0053",
          name: "Main campus",
          country: "England",
          postcode: "PR1 2HE"
        },
        "3cf36540-216b-5011-b918-0e72401114cc" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Advanced Legal Studies",
          country: "England",
          postcode: "WC1B 5DR"
        },
        "546ad4d5-8ef3-549b-b0cd-dddc034fd9a5" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Classical Studies",
          country: "England",
          postcode: "WC1E 7HU"
        },
        "7bb4f905-ab57-552b-a8a3-288a2468c90e" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Commonwealth Studies",
          country: "England",
          postcode: "WC1E 7HU"
        },
        "8dbccd1c-b9b4-586f-a643-d88d00ba959d" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of English Studies",
          country: "England",
          postcode: "WC1E 7HU"
        },
        "08362a28-49be-5ace-8f98-22d2488efd11" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Historical Research",
          country: "England",
          postcode: "WC1E 7HU"
        },
        "b236f36c-33ba-51b3-a570-fd809b2fea84" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Latin American Studies",
          country: "England",
          postcode: "WC1E 7HU"
        },
        "fb904331-8f1e-5d0f-b22e-8edf612c5fbb" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Modern Languages Research",
          country: "England",
          postcode: "WC1E 7HU"
        },
        "34831910-e4f8-5572-874f-6711bfb17692" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Main campus",
          country: "England",
          postcode: "WC1E 7HU"
        },
        "31761c5a-5c2d-5c3f-b7f9-c3613ae4d3a4" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "School of Advanced Study Central",
          country: "England",
          postcode: "WC1E 7HU"
        },
        "f87c7975-ba84-5d10-92aa-33cef69bae2f" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "University Marine Biological Station",
          country: "Scotland",
          postcode: "KA28 0EG"
        },
        "c1d207f7-7000-5e52-8a7c-5c9382497315" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "University of London Institute in Paris",
          country: "France"
        },
        "0c8bcde1-ce37-5e48-8b8e-e848c398aff0" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "University of London Worldwide",
          country: "England",
          postcode: "WC1E 7HU"
        },
        "1f0f9bbe-b0e6-53a3-a594-706e692d7c50" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Warburg Institute",
          country: "England",
          postcode: "WC1H 0AB"
        },
        "58e46c85-90c0-5f0f-abe8-76387334648a" => {
          provider_name: "University of London Institute in Paris",
          ukprn: "10007812",
          instid: "7007",
          name: "Main campus",
          country: "France {includes Corsica}"
        },
        "19848127-2718-5792-966f-94eeab658e1e" => {
          provider_name: "University of Northumbria at Newcastle",
          ukprn: "10001282",
          instid: "0069",
          name: "Amsterdam",
          country: "Netherlands"
        },
        "14003c76-3582-596b-90e1-b848d5dd2921" => {
          provider_name: "University of Northumbria at Newcastle",
          ukprn: "10001282",
          instid: "0069",
          name: "Coach Lane",
          country: "England",
          postcode: "NE7 7XA"
        },
        "6fb858b2-54b5-5f6a-889b-54b2b47d7312" => {
          provider_name: "University of Northumbria at Newcastle",
          ukprn: "10001282",
          instid: "0069",
          name: "London",
          country: "England",
          postcode: "E1 7HT"
        },
        "13bdc750-766b-5764-a544-574af540319c" => {
          provider_name: "University of Northumbria at Newcastle",
          ukprn: "10001282",
          instid: "0069",
          name: "Main campus",
          country: "England",
          postcode: "NE1 8ST"
        },
        "4b082d75-8088-5119-b188-e8210721d9ae" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Boston Education Centre",
          country: "England",
          postcode: "PE21 9QS"
        },
        "42df38e7-4ca1-577b-bc3f-b63e3d83f1df" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Derby Education Centre",
          country: "England",
          postcode: "DE22 3DT"
        },
        "cef3b503-85f5-56f8-9454-bee7f94b99f9" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Lincoln Education Centre",
          country: "England",
          postcode: "LN2 5QY"
        },
        "f5b07e84-645c-5135-8c1d-414dd22a007c" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Lincoln Medical School",
          country: "England",
          postcode: "LN6 7TS"
        },
        "495dddb3-1c35-5413-97ef-7e807b36b22e" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Main campus",
          country: "England",
          postcode: "NG7 2RD"
        },
        "115fce5a-b490-597a-ace4-15aa68c90cee" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Mansfield Education Centre",
          country: "England",
          postcode: "NG17 4JL"
        },
        "4ac21dfc-b2fc-58f4-b9a7-05bcbb0ee846" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "University of Nottingham Malaysia",
          country: "Malaysia"
        },
        "6c330d11-8977-5411-9fdf-7ff6243979d1" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "University of Nottingham Ningbo",
          country: "China"
        },
        "f30784c9-45a6-5829-8fc2-674767c22bfb" => {
          provider_name: "University of Plymouth",
          ukprn: "10007801",
          instid: "0073",
          name: "Entire HEP",
          country: "England",
          postcode: "PL4 8AA"
        },
        "97d8f66e-698a-5f28-95c4-30dd9bb878fc" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Caerleon Campus",
          country: "Wales",
          postcode: "NP18 3QT"
        },
        "942445c3-ac38-5c9b-b62b-16aa1b26a5f0" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Cardiff Campus",
          country: "Wales",
          postcode: "CF24 2FN"
        },
        "3d8a8223-23d5-592d-bf45-03937e9a1867" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Glyntaff Campus",
          country: "Wales",
          postcode: "CF37 4BE"
        },
        "6cae95e9-e15e-5300-8e40-0851fe2b834d" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Main campus",
          country: "Wales",
          postcode: "CF37 1DL"
        },
        "3b41fb8e-0074-5a05-b4a1-615462076794" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Merthyr College",
          country: "Wales",
          postcode: "CF48 1AR"
        },
        "8201d56f-8948-5cb8-9690-4e079df1e4ee" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Newport Campus",
          country: "Wales",
          postcode: "NP20 2BP"
        },
        "7a0985bc-465a-5f00-a042-76307410c6c8" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Renewable Hydrogen Research and Demonstration Cent",
          country: "Wales",
          postcode: "SA12 7AX"
        },
        "ec411da0-0f9d-5da7-8024-367e85538888" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Royal Welsh College of Music and Drama",
          country: "Wales",
          postcode: "CF10 3ER"
        },
        "4dc73f75-a5d8-5b5e-8908-3f75bb49402f" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "The Centre for Automotive and Power Systems Engine",
          country: "Wales",
          postcode: "CF44 0ND"
        },
        "5e672ce5-80b6-5763-a4fe-fcab963d97b1" => {
          provider_name: "University of St Mark and St John",
          ukprn: "10037449",
          instid: "0014",
          name: "Entire HEP",
          country: "England",
          postcode: "PL6 8BH"
        },
        "3c947abc-1974-5851-b3f0-078731244d4e" => {
          provider_name: "University of Staffordshire",
          ukprn: "10006299",
          instid: "0077",
          name: "Main campus",
          country: "England",
          postcode: "ST4 2DF"
        },
        "56b513d6-b01f-5632-a96a-75b812adb96d" => {
          provider_name: "University of Suffolk",
          ukprn: "10014001",
          instid: "0210",
          name: "Entire HEP",
          country: "England",
          postcode: "IP4 1QJ"
        },
        "25543ec5-c8cd-5840-b1f7-52690b708b91" => {
          provider_name: "University of the Arts, London",
          ukprn: "10007162",
          instid: "0024",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1V 7EY"
        },
        "bd5351c7-d996-52ef-a0d4-4fc412d9345a" => {
          provider_name: "University of the Arts, London",
          ukprn: "10007162",
          instid: "0024",
          name: "Wimbledon College of Art",
          country: "England",
          postcode: "SW19 3QA"
        },
        "932a5bf6-dcb4-5b41-a2d0-7f6799628f42" => {
          provider_name: "University of the Built Environment",
          ukprn: "10008173",
          instid: "0294",
          name: "Entire HEP",
          country: "England",
          postcode: "RG1 4BS"
        },
        "3db890e3-5736-561a-867f-e6f2e0eb25a4" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Argyll College UHI",
          country: "Scotland",
          postcode: "PA23 7HP"
        },
        "af2584be-a7eb-51ed-a1a0-94248b2eb687" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Executive Office UHI",
          country: "Scotland",
          postcode: "IV3 5SQ"
        },
        "2995865c-16c2-5228-93ab-a2a74bd6a1a9" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Highland Theological College UHI",
          country: "Scotland",
          postcode: "G3 7PR"
        },
        "017fa5df-440c-5936-9874-f27562e699f6" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Highland Theological College UHI",
          country: "Scotland",
          postcode: "IV15 9HA"
        },
        "4c1c239b-3c93-5d4e-a2bf-76e846158e75" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Inverness College UHI",
          country: "Scotland",
          postcode: "IV2 5NA"
        },
        "02a70777-9cd4-5aa6-8409-8f2bfc3dc91c" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Lews Castle College UHI",
          country: "Scotland",
          postcode: "HS2 0XR"
        },
        "05682992-90c1-5189-9eac-8b5efb7db58c" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Moray College UHI",
          country: "Scotland",
          postcode: "IV30 1JJ"
        },
        "b5a8259a-2a7e-5e1a-947c-4754fb63c01c" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "NAFC Marine Centre UHI",
          country: "Scotland",
          postcode: "ZE1 0UN"
        },
        "012c06e9-e819-5f64-a106-e404d63c700e" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Ness Foundation",
          country: "Scotland",
          postcode: "IV3 8GY"
        },
        "0648cd56-e530-5ba1-b395-4d6e874a714b" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "North Highland College UHI",
          country: "Scotland",
          postcode: "KW14 7EE"
        },
        "4b24e7e5-d083-5135-ba60-1e20abfeb9c2" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "North Highland College UHI (Burgfield)",
          country: "Scotland",
          postcode: "IV25 3HN"
        },
        "04fd3d93-793a-5c2d-b0d8-d68e7a6633f2" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Orkney College UHI",
          country: "Scotland",
          postcode: "KW15 1LX"
        },
        "c67ffad8-c54b-5700-9c03-7aa6df0e0dce" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Perth College UHI",
          country: "Scotland",
          postcode: "PH1 2NX"
        },
        "16e678cb-e5e8-5536-a3a6-ca4af1276a84" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Sabhal Mor Ostaig UHI",
          country: "Scotland",
          postcode: "IV44 8RQ"
        },
        "f964ed3d-b54b-51a7-b8c8-f14c68333e88" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Scottish Association for Marine Science UHI",
          country: "Scotland",
          postcode: "PA37 1QA"
        },
        "894e08b3-1240-5fb6-a63b-13ae469eebba" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Shetland College UHI",
          country: "Scotland",
          postcode: "ZE1 0PX"
        },
        "5aab6d5e-690f-55c4-9528-54c3683a2c7b" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Sustainable Development Research Centre",
          country: "Scotland",
          postcode: "IV36 2AB"
        },
        "901b2957-9b37-5fe9-8ec2-adbca2cffbe4" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "UHI Centre for Health Science",
          country: "Scotland",
          postcode: "IV2 3JH"
        },
        "38031528-e5df-5a0a-ab00-87dd979fa3aa" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "West Highland College UHI",
          country: "Scotland",
          postcode: "PH33 6FF"
        },
        "2f9199de-b519-5680-9b5b-fa2144e63bf0" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "West Highland College UHI (Portree)",
          country: "Scotland",
          postcode: "IV51 9EG"
        },
        "e309d4a3-6e5d-5afd-b342-be6dba007a39" => {
          provider_name: "University of the West of England, Bristol",
          ukprn: "10007164",
          instid: "0081",
          name: "Entire HEP",
          country: "England",
          postcode: "BS16 1QY"
        },
        "21ab5d75-7a47-502f-98f1-c3db83a95e6c" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Birmingham",
          country: "England",
          postcode: "B11 4AR"
        },
        "3c370a1f-b41d-5623-bd29-5e015936e44b" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Cardiff",
          country: "Wales",
          postcode: "CF10 3NS"
        },
        "7ce63c05-6c5e-542a-921f-c79a6acb3b30" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Coleg Sir Gar",
          country: "Wales",
          postcode: "SA15 4DN"
        },
        "03552a08-f3e8-5663-9b33-a20c53c55985" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Lampeter",
          country: "Wales",
          postcode: "SA48 7ED"
        },
        "0908a05f-0ec1-5b05-9ea0-5ef3f8fe5fbc" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "London",
          country: "England",
          postcode: "SW9 6EJ"
        },
        "719153dd-70ab-5a9d-9666-fd71657c5222" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Main campus",
          country: "Wales",
          postcode: "SA31 3EP"
        },
        "e963b397-d0e1-5cac-8ab1-3b0476627a8c" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Swansea",
          country: "Wales",
          postcode: "SA1 8EW"
        },
        "d5c9c92b-f3de-5617-bf2d-0c223c34e697" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "University of Wales (Central Functions)",
          country: "Wales",
          postcode: "CF10 3NS"
        },
        "6060d1ff-4b45-580a-9b01-34eb029b9989" => {
          provider_name: "University of Worcester",
          ukprn: "10007139",
          instid: "0046",
          name: "Entire HEP",
          country: "England",
          postcode: "WR2 6AJ"
        },
        "48432571-6c17-5089-8a7d-4c5a00e7107b" => {
          provider_name: "Walbrook Institute London Limited",
          ukprn: "10089591",
          instid: "0452",
          name: "Main campus",
          country: "England",
          postcode: "EC3R 8LJ"
        },
        "dfa68ebd-a1dd-5bce-9959-4e74bc326dd0" => {
          provider_name: "Walsall College",
          ukprn: "10007315",
          instid: "1017",
          name: "Main campus",
          country: "England",
          postcode: "WS2 8ES"
        },
        "cc7b798c-f472-5d2e-a51d-b5a534dbc60a" => {
          provider_name: "Waltham Forest College",
          ukprn: "10007321",
          instid: "1016",
          name: "Main campus",
          country: "England",
          postcode: "E17 4JB"
        },
        "56974bd0-b165-56c9-ac7f-bf03278cf284" => {
          provider_name: "Waltham International College Limited",
          ukprn: "10029843",
          instid: "0343",
          name: "Entire HEP",
          country: "England",
          postcode: "IG11 7NR"
        },
        "9b410f89-3835-51e8-bde3-e90df4b11976" => {
          provider_name: "Warrington & Vale Royal College",
          ukprn: "10007339",
          instid: "1020",
          name: "Main campus",
          country: "England",
          postcode: "WA2 8QA"
        },
        "3051badd-9347-5360-bd19-52e4b240b191" => {
          provider_name: "Warwickshire College",
          ukprn: "10007859",
          instid: "1015",
          name: "Main campus",
          country: "England",
          postcode: "CV32 5JE"
        },
        "b9cae596-f349-5c7c-971c-31754ab412f0" => {
          provider_name: "Waverley Abbey College",
          ukprn: "10007361",
          instid: "0295",
          name: "Bradford",
          country: "England",
          postcode: "BD10 8SA"
        },
        "fe259463-0f8f-5997-8aed-981dd079179d" => {
          provider_name: "Waverley Abbey College",
          ukprn: "10007361",
          instid: "0295",
          name: "Main campus",
          country: "England",
          postcode: "GU9 8EP"
        },
        "97516d03-48a1-57d9-bebf-55fb1b879a83" => {
          provider_name: "West Dean College",
          ukprn: "10032288",
          instid: "0312",
          name: "Chelsea Harbour",
          country: "England",
          postcode: "SW10 0XF"
        },
        "471ebf48-a5e5-5a50-b66e-17f5483bcf34" => {
          provider_name: "West Dean College",
          ukprn: "10032288",
          instid: "0312",
          name: "Main campus",
          country: "England",
          postcode: "PO18 0QZ"
        },
        "16ea2cc4-4d32-5518-9839-4cd8208f920c" => {
          provider_name: "West Herts College",
          ukprn: "10007417",
          instid: "1012",
          name: "Main campus",
          country: "England",
          postcode: "WD17 3EZ"
        },
        "1e3b107a-1fe8-5943-b810-20be2a441cb1" => {
          provider_name: "West Kent and Ashford College",
          ukprn: "10007419",
          instid: "1007",
          name: "Main campus",
          country: "England",
          postcode: "TN9 2PW"
        },
        "3ed22732-b996-5f25-976a-bf6637c03c48" => {
          provider_name: "West London College",
          ukprn: "10000939",
          instid: "0233",
          name: "Main campus",
          country: "England",
          postcode: "W1U 1LN"
        },
        "398aad3a-3110-5df6-97f0-4ad0788bfff5" => {
          provider_name: "West London College of Business and Management Sciences Limited",
          ukprn: "10023290",
          instid: "0275",
          name: "Main campus",
          country: "England",
          postcode: "TW5 9WA"
        },
        "7135481e-d3f5-5962-a147-9d0eee0ee269" => {
          provider_name: "West Nottinghamshire College",
          ukprn: "10007427",
          instid: "1006",
          name: "Main campus",
          country: "England",
          postcode: "NG18 5BH"
        },
        "9af94f15-4718-552e-b33f-b90720a0268e" => {
          provider_name: "West Suffolk College",
          ukprn: "10007431",
          instid: "1190",
          name: "Main campus",
          country: "England",
          postcode: "IP33 3RL"
        },
        "498bb8bb-4bc4-55c2-80ee-572e95d2f00b" => {
          provider_name: "West Thames College",
          ukprn: "10007434",
          instid: "1003",
          name: "Main campus",
          country: "England",
          postcode: "TW7 4HS"
        },
        "4e380b3a-329f-5b11-9104-9a675b52b124" => {
          provider_name: "Weston College of Further and Higher Education",
          ukprn: "10007459",
          instid: "1014",
          name: "Main campus",
          country: "England",
          postcode: "BS23 2AL"
        },
        "418b9098-87d8-5f38-a8aa-06974db7178a" => {
          provider_name: "Weymouth College",
          ukprn: "10007469",
          instid: "1013",
          name: "Main campus",
          country: "England",
          postcode: "DT4 7LQ"
        },
        "a0255c94-ae82-5705-bd10-066af92c5996" => {
          provider_name: "Wigan and Leigh College",
          ukprn: "10007500",
          instid: "1093",
          name: "Main campus",
          country: "England",
          postcode: "WN1 9LB"
        },
        "2dffcf94-351f-5200-85e7-d5620d821ff6" => {
          provider_name: "William Booth College",
          ukprn: "10021256",
          instid: "0316",
          name: "Entire HEP",
          country: "England",
          postcode: "SE5 8BQ"
        },
        "8d529f9f-db9a-5375-9fd4-d6481dc7824d" => {
          provider_name: "Wiltshire College and University Centre",
          ukprn: "10007527",
          instid: "1011",
          name: "Main campus",
          country: "England",
          postcode: "SN15 3QD"
        },
        "1a6fc6e7-fc17-5921-bbd2-e7c32caba044" => {
          provider_name: "Wimbledon School of Art",
          ukprn: "10007532",
          instid: "0084",
          name: "Entire institution",
          country: "England",
          postcode: "SW19 3QA"
        },
        "9d052bd7-50b3-5ed0-ae35-7c2bbe519271" => {
          provider_name: "Wirral Metropolitan College",
          ukprn: "10007553",
          instid: "1009",
          name: "Main campus",
          country: "England",
          postcode: "CH41 4NT"
        },
        "abc62aa2-e069-5ac1-b420-aa2fb8ab051a" => {
          provider_name: "Wrexham University",
          ukprn: "10007833",
          instid: "0087",
          name: "Flintshire",
          country: "Wales",
          postcode: "CH7 6AA"
        },
        "4592746c-5681-58a4-ac16-97e27188f377" => {
          provider_name: "Wrexham University",
          ukprn: "10007833",
          instid: "0087",
          name: "London",
          country: "England",
          postcode: "KT1 1TY"
        },
        "1c785aef-2e4a-5809-be44-08cee588ff33" => {
          provider_name: "Wrexham University",
          ukprn: "10007833",
          instid: "0087",
          name: "Main campus",
          country: "Wales",
          postcode: "LL11 2AW"
        },
        "6de6417d-4ff6-5939-80f9-63366b26be4c" => {
          provider_name: "Wrexham University",
          ukprn: "10007833",
          instid: "0087",
          name: "St Asaph",
          country: "Wales",
          postcode: "LL17 0JD"
        },
        "76dbee44-c0a3-5825-845d-7f4d559bc165" => {
          provider_name: "Writtle University College",
          ukprn: "10007657",
          instid: "0189",
          name: "Entire HEP",
          country: "England",
          postcode: "CM1 3RR"
        },
        "5ef68f9d-879c-5b13-a78b-3671f4ed98c3" => {
          provider_name: "Writtle University College",
          ukprn: "10007657",
          instid: "0189",
          name: "Shuttleworth College",
          country: "England",
          postcode: "SG18 9EA"
        },
        "df93451c-2221-5b0a-919f-c64fad4b943c" => {
          provider_name: "Yeovil College",
          ukprn: "10007696",
          instid: "1002",
          name: "Main campus",
          country: "England",
          postcode: "BA21 4DR"
        },
        "802b7a33-cb8f-54a2-bb35-d0cf24340c6c" => {
          provider_name: "York College",
          ukprn: "10007709",
          instid: "1001",
          name: "Main campus",
          country: "England",
          postcode: "YO23 2BB"
        },
        "c9e89898-e211-5aed-963a-0724fd25504f" => {
          provider_name: "York St John University",
          ukprn: "10007713",
          instid: "0013",
          name: "London Campus",
          country: "England",
          postcode: "EC1A 4JT"
        },
        "aeb58b0c-35b6-5bc0-847b-276aa9e3944a" => {
          provider_name: "York St John University",
          ukprn: "10007713",
          instid: "0013",
          name: "Main campus",
          country: "England",
          postcode: "YO31 7EX"
        }
      }.freeze

      HESA_PROVIDER_CAMPUSES = DfE::ReferenceData::HardcodedReferenceList.new(
        DATA,
        schema: SCHEMA,
        list_description: 'Campuses of UK higher-education providers',
        list_usage_guidance: 'To find the campuses operated by a higher-education provider, and their locations',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_hesa_provider_campus.md#dfereferencedatahesaprovidercampushesa_provider_campuses',
        field_descriptions: FIELD_DESCRIPTIONS
      )

      DATASETS = [HESA_PROVIDER_CAMPUSES].freeze
    end
  end
end
