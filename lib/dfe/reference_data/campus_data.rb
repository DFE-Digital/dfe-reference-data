module DfE
  module ReferenceData
    module CampusData
      SCHEMA = {
        id: :string,
        provider_name: :string,
        ukprn: { kind: :code, pattern: /^[0-9]+$/ },
        instid: { kind: :code, pattern: /^[0-9]+$/ },
        name: :string,
        country: { kind: :optional, schema: :string },
        postcode: { kind: :optional, schema: :string },
        latitude: { kind: :optional, schema: :real },
        longitude: { kind: :optional, schema: :real }
      }.freeze

      FIELD_DESCRIPTIONS = {
        id: 'A unique identifier for this campus record',
        provider_name: 'The name of the HE provider that operates this campus',
        ukprn: 'The UK Register of Learning Providers (UKPRN) number for the provider',
        instid: "The provider's HESA institution id. A UKPRN usually has a single instid, but a small number of providers (for example the Open University) have several, one per national variant",
        name: 'The name of the campus',
        country: 'The country in which the campus is located. Absent for a small number of overseas/unspecified campuses',
        postcode: 'The postcode of the campus. Absent for a small number of overseas/unspecified campuses',
        latitude: 'The latitude of the campus, in decimal degrees. Absent where the source data has no coordinate',
        longitude: 'The longitude of the campus, in decimal degrees. Absent where the source data has no coordinate'
      }.freeze

      DATA = {
        "0f33ab29-6065-4aa9-94ff-25a9864cf24a" => {
          provider_name: "AA School of Architecture",
          ukprn: "10008071",
          instid: "0323",
          name: "Hooke Park",
          country: "England",
          postcode: "DT8 3PH",
          latitude: 50.790481,
          longitude: -2.673988
        },
        "f5ce42d4-951c-4bd0-ba60-a5fd530b4678" => {
          provider_name: "AA School of Architecture",
          ukprn: "10008071",
          instid: "0323",
          name: "Main campus",
          country: "England",
          postcode: "WC1B 3ES",
          latitude: 51.518218,
          longitude: -0.130697
        },
        "cada2cc3-ed5e-44bd-8773-de27ee330e46" => {
          provider_name: "Abertay University",
          ukprn: "10007849",
          instid: "0095",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "DD1 1HG",
          latitude: 56.463117,
          longitude: -2.974299
        },
        "3650d82a-a28e-4322-b6b0-1c4f55b7b944" => {
          provider_name: "Aberystwyth University",
          ukprn: "10007856",
          instid: "0177",
          name: "Canolfan Iaith Ceredigion",
          country: "Wales",
          postcode: "SA48 8AF",
          latitude: 52.195879,
          longitude: -4.170098
        },
        "67df50bf-8ccf-4b3f-8319-e48bad0dae2d" => {
          provider_name: "Aberystwyth University",
          ukprn: "10007856",
          instid: "0177",
          name: "Canolfan Iaith Clwyd",
          country: "Wales",
          postcode: "SA44 6AE",
          latitude: 52.16253,
          longitude: -4.447756
        },
        "86da8c17-f17f-4ed9-b37c-ec82c73f6d3e" => {
          provider_name: "Aberystwyth University",
          ukprn: "10007856",
          instid: "0177",
          name: "Coleg Harlech",
          country: "Wales",
          postcode: "LL46 2PU",
          latitude: 52.855901,
          longitude: -4.112967
        },
        "628227d0-7382-4048-8870-112fd5dee092" => {
          provider_name: "Aberystwyth University",
          ukprn: "10007856",
          instid: "0177",
          name: "Coleg Meirion Dwyfor",
          country: "Wales",
          postcode: "LL40 2SW",
          latitude: 52.744734,
          longitude: -3.897765
        },
        "5534f8d0-2e27-4ccd-942b-3e18c8fd4cad" => {
          provider_name: "Aberystwyth University",
          ukprn: "10007856",
          instid: "0177",
          name: "Entire HEP",
          country: "Wales",
          postcode: "SY23 3BY",
          latitude: 52.417956,
          longitude: -4.064916
        },
        "834008cd-4f75-47e6-940e-c1580f1e5eeb" => {
          provider_name: "ABI College Limited",
          ukprn: "10019746",
          instid: "0231",
          name: "Main campus",
          country: "England",
          postcode: "RG1 4SJ",
          latitude: 51.451368,
          longitude: -0.967864
        },
        "01499b0f-ee89-44e6-b97e-b5be2c82646e" => {
          provider_name: "Abingdon and Witney College",
          ukprn: "10000055",
          instid: "1183",
          name: "Main campus",
          country: "England",
          postcode: "OX14 1GG",
          latitude: 51.680624,
          longitude: -1.28696
        },
        "94f78bba-42d5-4bcd-955c-09c3e25cb27e" => {
          provider_name: "Academy of Live and Recorded Arts",
          ukprn: "10000248",
          instid: "0269",
          name: "ALRA North",
          country: "England",
          postcode: "WN3 4BF",
          latitude: 53.542304,
          longitude: -2.637992
        },
        "74b6890b-a51d-483a-b08f-e46c76e9daf1" => {
          provider_name: "Academy of Live and Recorded Arts",
          ukprn: "10000248",
          instid: "0269",
          name: "ALRA South",
          country: "England",
          postcode: "SW18 3SX",
          latitude: 51.4533,
          longitude: -0.174557
        },
        "2b551752-06d0-493f-ae5d-d65f4cfa7aec" => {
          provider_name: "Academy of Live and Recorded Arts",
          ukprn: "10000248",
          instid: "0269",
          name: "Main campus",
          country: "England",
          postcode: "SW18 3SX",
          latitude: 51.4533,
          longitude: -0.174557
        },
        "f4c44db8-251d-49bf-83f4-49dd065267ce" => {
          provider_name: "Academy of Live Technology Ltd",
          ukprn: "10036456",
          instid: "0426",
          name: "Entire HEP",
          country: "England",
          postcode: "WF9 3AP",
          latitude: 53.589945,
          longitude: -1.309879
        },
        "7e3b486f-5187-42a2-a66a-78368c1c0046" => {
          provider_name: "Access to Music Limited",
          ukprn: "10000080",
          instid: "0268",
          name: "Main campus",
          country: "England",
          postcode: "B9 4AR",
          latitude: 52.476431,
          longitude: -1.88286
        },
        "40cad355-471d-48bc-87bb-5c7865f0a734" => {
          provider_name: "Accrington and Rossendale College",
          ukprn: "10000093",
          instid: "1182",
          name: "Main campus",
          country: "England",
          postcode: "BB5 2AW",
          latitude: 53.748697,
          longitude: -2.35286
        },
        "a05efaf0-5476-4654-9964-ef3fde19d55a" => {
          provider_name: "ACM Guildford Limited",
          ukprn: "10067853",
          instid: "0357",
          name: "Birmingham Campus",
          country: "England",
          postcode: "B3 1AG",
          latitude: 52.484594,
          longitude: -1.902924
        },
        "e5af494b-fa80-4f15-882e-3f9b54c87617" => {
          provider_name: "ACM Guildford Limited",
          ukprn: "10067853",
          instid: "0357",
          name: "London Campus",
          country: "England",
          postcode: "SW4 0BG",
          latitude: 51.462486,
          longitude: -0.138834
        },
        "6eb07767-aadc-42da-8c7e-dc9c05d7a5f0" => {
          provider_name: "ACM Guildford Limited",
          ukprn: "10067853",
          instid: "0357",
          name: "Main campus",
          country: "England",
          postcode: "GU1 4SB",
          latitude: 51.236455,
          longitude: -0.578092
        },
        "0b8d22cc-d99b-4713-b65a-ea1db74b898c" => {
          provider_name: "ACMET London College",
          ukprn: "10092025",
          instid: "0465",
          name: "Main campus",
          country: "England",
          postcode: "TW8 9DN",
          latitude: 51.484738,
          longitude: -0.319534
        },
        "47320266-c74f-4e46-9f2a-10fb631e398f" => {
          provider_name: "Activate Learning",
          ukprn: "10004927",
          instid: "1181",
          name: "Main campus",
          country: "England",
          postcode: "OX1 1SA",
          latitude: 51.749548,
          longitude: -1.264524
        },
        "438eb3f3-2293-4840-b321-127a7fc1ddb1" => {
          provider_name: "All Nations Christian College Limited",
          ukprn: "10000216",
          instid: "0285",
          name: "Entire HEP",
          country: "England",
          postcode: "SG12 8LX",
          latitude: 51.80252,
          longitude: 0.000933
        },
        "a0348a58-f5da-471b-a9cb-0432028615fa" => {
          provider_name: "Amity University [IN] London",
          ukprn: "10032036",
          instid: "0353",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1E 7HX",
          latitude: 51.521891,
          longitude: -0.130359
        },
        "00577497-5166-4b8b-859b-124721252606" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Cambridge",
          country: "England",
          postcode: "CB1 1PT",
          latitude: 52.203402,
          longitude: 0.13461
        },
        "a156d9c2-3bfc-4001-ad20-4fbe6d830dba" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Cambridge campus",
          country: "England",
          postcode: "CB1 1PT",
          latitude: 52.203402,
          longitude: 0.13461
        },
        "48833046-bd36-45bf-a182-83e516d9fdb7" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Harlow",
          country: "England",
          postcode: "CM20 3LH",
          latitude: 51.770467,
          longitude: 0.099149
        },
        "8b21d0f6-5c8f-4596-951d-f8199af6033f" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "London",
          country: "England",
          postcode: "EC1N 6SA",
          latitude: 51.518542,
          longitude: -0.105909
        },
        "4f1b434b-4dd5-4030-ad61-02890b443946" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Main campus",
          country: "England",
          postcode: "CM1 1SQ",
          latitude: 51.741381,
          longitude: 0.474495
        },
        "f9809e33-1618-47c8-ae0e-d09ccb0f8ac7" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Peterborough",
          country: "England",
          postcode: "PE1 4DZ",
          latitude: 52.586783,
          longitude: -0.230191
        },
        "34cb73ee-80d4-4ff1-ad65-7cba1ae2a6ff" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "Peterborough Guild House",
          country: "England",
          postcode: "PE2 9PW",
          latitude: 52.565311,
          longitude: -0.252362
        },
        "b976960e-5fe9-40cb-9048-15ae814d74ab" => {
          provider_name: "Anglia Ruskin University",
          ukprn: "10000291",
          instid: "0047",
          name: "West Anglia",
          country: "England",
          postcode: "PE30 2QW",
          latitude: 52.756352,
          longitude: 0.410694
        },
        "daaa87ed-ffd4-4e7a-bc49-6b77348fcb24" => {
          provider_name: "Anglo Skills College",
          ukprn: "10030497",
          instid: "0456",
          name: "Main campus",
          country: "England",
          postcode: "NG1 6DG",
          latitude: 52.952374,
          longitude: -1.15202
        },
        "939c9862-bdf6-40c0-a249-b463f10ddb09" => {
          provider_name: "Apex College",
          ukprn: "10041898",
          instid: "0329",
          name: "Entire HEP",
          country: "England",
          postcode: "SE17 1JE",
          latitude: 51.48871,
          longitude: -0.096354
        },
        "cf76cdc8-7665-4627-a9c2-e9c9e8c08ef6" => {
          provider_name: "Applied Business Academy Limited",
          ukprn: "10062759",
          instid: "0432",
          name: "Entire HEP",
          country: "England",
          postcode: "E14 9RH",
          latitude: 51.49744,
          longitude: -0.014275
        },
        "82eacd04-c76e-4ff1-be88-9c4f98454e98" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Berlin",
          country: "Germany",
          latitude: 52.373008,
          longitude: -1.466384
        },
        "2efd96c4-0ce7-40d2-9703-73bacd360da6" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Birmingham",
          country: "England",
          postcode: "B5 4UA",
          latitude: 52.476224,
          longitude: -1.898516
        },
        "275085e6-ea83-44d4-923f-8ff9dfbb8fbe" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Ealing",
          country: "England",
          postcode: "W5 5SA",
          latitude: 51.512203,
          longitude: -0.309004
        },
        "431f879f-31cb-4190-8322-e41bf6ffa4cd" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Holborn",
          country: "England",
          postcode: "EC1N 2LX",
          latitude: 51.517609,
          longitude: -0.109519
        },
        "45bcd262-ebd7-4019-886a-1392c76eb523" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Islamabad",
          country: "Pakistan",
          latitude: 52.373008,
          longitude: -1.466384
        },
        "e2bac3b8-7784-48bc-8ef1-8b4e632e5060" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Lahore",
          country: "Pakistan",
          latitude: 52.373008,
          longitude: -1.466384
        },
        "9637d9bd-65c2-4075-995d-1023accb6da2" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Leeds",
          country: "England",
          postcode: "LS1 5HD",
          latitude: 53.797928,
          longitude: -1.54673
        },
        "fa4ad9d2-2adb-43ca-b183-44cd010b85f4" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Main campus",
          country: "England",
          postcode: "CV3 4FJ",
          latitude: 52.373008,
          longitude: -1.466384
        },
        "b3da5c0c-c953-4bf1-b5dc-0b960a155b2c" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Manchester",
          country: "England",
          postcode: "M1 4LF",
          latitude: 53.476179,
          longitude: -2.240634
        },
        "dd3aed21-f76e-4049-b6a0-695c1cc87f23" => {
          provider_name: "Arden University",
          ukprn: "10005451",
          instid: "0333",
          name: "Tower Hill",
          country: "England",
          postcode: "EC3N 4DX",
          latitude: 51.509939,
          longitude: -0.073608
        },
        "67e2843e-b27b-4958-8bf8-500a531a2e9f" => {
          provider_name: "Arts Educational Schools",
          ukprn: "10000381",
          instid: "0244",
          name: "Entire HEP",
          country: "England",
          postcode: "W4 1LY",
          latitude: 51.49596,
          longitude: -0.252435
        },
        "8568a0da-8e68-4694-a14d-82a430b51c0f" => {
          provider_name: "Arts University Plymouth",
          ukprn: "10005127",
          instid: "0230",
          name: "Entire HEP",
          country: "England",
          postcode: "PL4 8AT",
          latitude: 50.37341,
          longitude: -4.137411
        },
        "adbf8a65-4027-48ba-97b6-789f7490851e" => {
          provider_name: "Ashton Sixth Form College",
          ukprn: "10000409",
          instid: "1180",
          name: "Main campus",
          country: "England",
          postcode: "OL6 9RL",
          latitude: 53.492067,
          longitude: -2.075504
        },
        "b310d187-947b-44f5-878b-cfc3282cd785" => {
          provider_name: "Askham Bryan College",
          ukprn: "10000415",
          instid: "1179",
          name: "Main campus",
          country: "England",
          postcode: "YO23 3FR",
          latitude: 53.920657,
          longitude: -1.161491
        },
        "06fab8b8-c56b-4926-8f01-242a757c5651" => {
          provider_name: "Aston University",
          ukprn: "10007759",
          instid: "0108",
          name: "Entire HEP",
          country: "England",
          postcode: "B4 7ET",
          latitude: 52.486637,
          longitude: -1.890952
        },
        "f0148b4b-f106-4708-9ef4-c4e83b47a9c3" => {
          provider_name: "Aylesbury College",
          ukprn: "10000473",
          instid: "1178",
          name: "Main campus",
          country: "England",
          postcode: "HP21 8PD",
          latitude: 51.813857,
          longitude: -0.822655
        },
        "68c61a57-46b8-4f80-a9e9-bbe623df9478" => {
          provider_name: "Ballet West",
          ukprn: "10042364",
          instid: "0324",
          name: "Main campus",
          country: "Scotland",
          postcode: "PA35 1HP",
          latitude: 56.426118,
          longitude: -5.226522
        },
        "f476185c-239b-415f-86a5-de3e9da6ab99" => {
          provider_name: "Bangor University",
          ukprn: "10007857",
          instid: "0178",
          name: "CSUFT",
          country: "China",
          latitude: 53.229193,
          longitude: -4.129437
        },
        "3c7be73c-49b1-483a-a584-0a21a74e914f" => {
          provider_name: "Bangor University",
          ukprn: "10007857",
          instid: "0178",
          name: "London Centre",
          country: "England",
          postcode: "EC2A 2EW",
          latitude: 51.52106,
          longitude: -0.080057
        },
        "5695eb63-0f6c-4448-a7f7-4c6995510f79" => {
          provider_name: "Bangor University",
          ukprn: "10007857",
          instid: "0178",
          name: "Main campus",
          country: "Wales",
          postcode: "LL57 2DG",
          latitude: 53.229193,
          longitude: -4.129437
        },
        "d0841864-959c-413d-ba15-25daa1b66d46" => {
          provider_name: "Bangor University",
          ukprn: "10007857",
          instid: "0178",
          name: "Wrexham",
          country: "Wales",
          postcode: "LL13 7YP",
          latitude: 53.048988,
          longitude: -3.01411
        },
        "b19cb3f7-676c-4d5a-9021-c1e7d1543157" => {
          provider_name: "Barking and Dagenham College",
          ukprn: "10000528",
          instid: "1177",
          name: "Main campus",
          country: "England",
          postcode: "RM7 0XU",
          latitude: 51.56033,
          longitude: 0.174564
        },
        "84679cd1-71e5-4015-b60b-0a162fc405b2" => {
          provider_name: "Barnet & Southgate College",
          ukprn: "10000533",
          instid: "1174",
          name: "Main campus",
          country: "England",
          postcode: "EN5 4AZ",
          latitude: 51.652379,
          longitude: -0.2003
        },
        "6122562b-1b98-4a8a-98a1-567720b4ea54" => {
          provider_name: "Barnfield College",
          ukprn: "10000534",
          instid: "1176",
          name: "Main campus",
          country: "England",
          postcode: "LU2 7BF",
          latitude: 51.90603,
          longitude: -0.421883
        },
        "5dee1bde-07b6-4872-b368-5e21edbc8402" => {
          provider_name: "Barnsley College",
          ukprn: "10000536",
          instid: "1175",
          name: "Main campus",
          country: "England",
          postcode: "S70 2AX",
          latitude: 53.556624,
          longitude: -1.482572
        },
        "c6432784-5f75-41f4-a7d4-013dbd4c473f" => {
          provider_name: "Basingstoke College of Technology",
          ukprn: "10000560",
          instid: "1173",
          name: "Main campus",
          country: "England",
          postcode: "RG21 8TN",
          latitude: 51.26336,
          longitude: -1.095958
        },
        "7b072311-0310-4385-831c-39b556074aea" => {
          provider_name: "Bath College",
          ukprn: "10001465",
          instid: "1172",
          name: "Main campus",
          country: "England",
          postcode: "BA1 1UP",
          latitude: 51.379717,
          longitude: -2.362652
        },
        "9fcb0c8f-c728-4293-a57d-4fcbf5cb1e06" => {
          provider_name: "Bath Spa University",
          ukprn: "10000571",
          instid: "0048",
          name: "BSULONDON",
          country: "England",
          postcode: "N1 6HQ",
          latitude: 51.530733,
          longitude: -0.079304
        },
        "821ed15d-4235-4937-b276-b632ffb16db2" => {
          provider_name: "Bath Spa University",
          ukprn: "10000571",
          instid: "0048",
          name: "Main campus",
          country: "England",
          postcode: "BA2 9BN",
          latitude: 51.373209,
          longitude: -2.440912
        },
        "7535318c-3463-43c8-9a53-62ba5480e9fc" => {
          provider_name: "BCNO Limited",
          ukprn: "10000911",
          instid: "0400",
          name: "European School of Osteopathy",
          country: "England",
          postcode: "ME14 3DZ",
          latitude: 51.305512,
          longitude: 0.544507
        },
        "e7f0330a-fe8e-48bd-8fb4-9077d76213ca" => {
          provider_name: "BCNO Limited",
          ukprn: "10000911",
          instid: "0400",
          name: "Main campus",
          country: "England",
          postcode: "NW3 5RR",
          latitude: 51.547841,
          longitude: -0.179372
        },
        "9ae3fbaa-dfd6-4ea8-bf86-8cec0d6fed1b" => {
          provider_name: "Bedford College",
          ukprn: "10000610",
          instid: "1171",
          name: "Main campus",
          country: "England",
          postcode: "MK42 9AH",
          latitude: 52.133347,
          longitude: -0.468552
        },
        "66147f77-39fc-45c8-851f-fac400eecfb7" => {
          provider_name: "Belfast Metropolitan College",
          ukprn: "10020680",
          instid: "0345",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT3 9FQ",
          latitude: 54.604763,
          longitude: -5.911865
        },
        "4a502bae-c683-4e91-8c29-45695a68163a" => {
          provider_name: "Bell College",
          ukprn: "10007809",
          instid: "0198",
          name: "Crichton Campus, Dumfries",
          country: "Scotland",
          postcode: "DG1 4ZN",
          latitude: 55.049484,
          longitude: -3.589292
        },
        "9a831396-7b78-47c7-a6d8-8dbc87fd9a10" => {
          provider_name: "Bell College",
          ukprn: "10007809",
          instid: "0198",
          name: "Main campus",
          country: "Scotland",
          postcode: "ML3 0JB",
          latitude: 55.780129,
          longitude: -4.047587
        },
        "26da9c92-668e-4af3-84b2-03f1a4c69d7f" => {
          provider_name: "Bexhill College",
          ukprn: "10000670",
          instid: "1188",
          name: "Main campus",
          country: "England",
          postcode: "TN40 2JG",
          latitude: 50.847112,
          longitude: 0.490934
        },
        "2618434c-4a20-434b-9f73-2f8cb2de10f3" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Berlin",
          country: "Germany",
          latitude: 50.820995,
          longitude: -0.139682
        },
        "51ff885a-5a15-4992-91e3-8742fd701cc9" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Birmingham",
          country: "England",
          postcode: "B5 5SR",
          latitude: 52.476504,
          longitude: -1.883993
        },
        "103b866f-34c8-46a0-b88f-1ded086db4ad" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Brighton",
          country: "England",
          postcode: "BN3 1EL",
          latitude: 50.824512,
          longitude: -0.160357
        },
        "e35c377f-164f-4630-99af-9742704e87ce" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Bristol",
          country: "England",
          postcode: "BS2 8JN",
          latitude: 51.461371,
          longitude: -2.59175
        },
        "2b092e97-e623-4671-9ae9-717aa0256c1a" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Dublin",
          country: "Ireland",
          latitude: 50.820995,
          longitude: -0.139682
        },
        "a75de7f2-f0fb-4cb1-8154-35d6f87bff86" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Hamburg",
          country: "Germany",
          latitude: 50.820995,
          longitude: -0.139682
        },
        "ca017591-696e-4e12-8bf9-db232b1bc214" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM London",
          country: "England",
          postcode: "SW6 1EN",
          latitude: 51.479423,
          longitude: -0.1966
        },
        "0fcca434-b280-4191-b7b7-2d42ee2d6b8a" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "BIMM Manchester",
          country: "England",
          postcode: "M1 5NN",
          latitude: 53.472988,
          longitude: -2.241944
        },
        "a24c45e0-8118-43b2-908f-d3f8345aa9a8" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "ICT Brighton",
          country: "England",
          postcode: "BN1 4GW",
          latitude: 50.833404,
          longitude: -0.140339
        },
        "25db23c8-a174-4215-a6d0-8f7099edcf5e" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "ICT Manchester",
          country: "England",
          postcode: "M1 5QA",
          latitude: 53.472893,
          longitude: -2.23997
        },
        "ba710801-c3f4-455d-b892-9351c9f01271" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "Main campus",
          country: "England",
          postcode: "BN3 1EL",
          latitude: 50.824512,
          longitude: -0.160357
        },
        "2aa1f238-48c1-4f16-a364-0d8a623d5cbe" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "Performers College Birmingham",
          country: "England",
          postcode: "B5 5SR",
          latitude: 52.476504,
          longitude: -1.883993
        },
        "df59dc71-85b9-4ea3-936e-db2a99952b1d" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "Performers College Essex",
          country: "England",
          postcode: "SS17 8JS",
          latitude: 51.53502,
          longitude: 0.453436
        },
        "9bd87dec-784c-4aca-a118-b25f43ba0a2d" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "Performers College Rayleigh",
          country: "England",
          postcode: "SS6 7UY",
          latitude: 51.577803,
          longitude: 0.605258
        },
        "c3ccbc59-4cc0-4397-8d71-5f0b4d0aaedb" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "SFS Birmingham",
          country: "England",
          postcode: "B5 5SS",
          latitude: 52.47622,
          longitude: -1.883822
        },
        "0c838f65-c995-44b1-8d39-0bf17a4ca394" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "SFS Brighton",
          country: "England",
          postcode: "BN1 1NH",
          latitude: 50.820259,
          longitude: -0.138121
        },
        "ddb8e965-868d-4db4-8c57-3c2cef62bfbd" => {
          provider_name: "BIMM University",
          ukprn: "10037544",
          instid: "0232",
          name: "SFS Manchester",
          country: "England",
          postcode: "M3 3AN",
          latitude: 53.480628,
          longitude: -2.254871
        },
        "1d48e6f5-0d7f-4443-83c9-08788793da11" => {
          provider_name: "Bird College",
          ukprn: "10002011",
          instid: "0453",
          name: "Main campus",
          country: "England",
          postcode: "DA14 4ED",
          latitude: 51.431935,
          longitude: 0.105806
        },
        "aa9c9ce9-60a7-46df-80ec-70f0af7b9847" => {
          provider_name: "Birkbeck College",
          ukprn: "10007760",
          instid: "0127",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1E 7HX",
          latitude: 51.521891,
          longitude: -0.130359
        },
        "1c9d7b8f-44b5-4fc9-8993-c0bebaff8d24" => {
          provider_name: "Birmingham Christian College",
          ukprn: "10007810",
          instid: "0455",
          name: "Main campus",
          country: "England",
          postcode: "B29 6AJ",
          latitude: 52.434756,
          longitude: -1.949601
        },
        "a2272760-2537-4082-9dda-f28b6df02124" => {
          provider_name: "Birmingham City University",
          ukprn: "10007140",
          instid: "0052",
          name: "Birmingham City University UAE Ras Al Khaimah Camp",
          country: "United Arab Emirates",
          latitude: 52.481921,
          longitude: -1.888824
        },
        "ccf5917d-60f4-49e4-a883-0a31b3bf1340" => {
          provider_name: "Birmingham City University",
          ukprn: "10007140",
          instid: "0052",
          name: "City South Campus",
          country: "England",
          postcode: "B15 3TN",
          latitude: 52.468243,
          longitude: -1.926046
        },
        "e9f5cbd0-20ea-4e2e-841d-ecc7ab6097d0" => {
          provider_name: "Birmingham City University",
          ukprn: "10007140",
          instid: "0052",
          name: "Main campus",
          country: "England",
          postcode: "B4 7AP",
          latitude: 52.482793,
          longitude: -1.885955
        },
        "b989c8bd-7af3-487f-9344-4330e57b3c8b" => {
          provider_name: "Birmingham City University",
          ukprn: "10007140",
          instid: "0052",
          name: "School of Art",
          country: "England",
          postcode: "B3 3BX",
          latitude: 52.481092,
          longitude: -1.903261
        },
        "89063e36-ba42-493e-95b3-e2cba7c0af04" => {
          provider_name: "Birmingham City University",
          ukprn: "10007140",
          instid: "0052",
          name: "School of Jewellery",
          country: "England",
          postcode: "B1 3PA",
          latitude: 52.486429,
          longitude: -1.91151
        },
        "5f0b7e19-c894-4a8a-b8c9-50331cbc1603" => {
          provider_name: "Birmingham Metropolitan College",
          ukprn: "10006442",
          instid: "1169",
          name: "Main campus",
          country: "England",
          postcode: "B4 7PS",
          latitude: 52.48321,
          longitude: -1.889341
        },
        "bd3c557b-5a97-4992-ac2f-e8388589771a" => {
          provider_name: "Birmingham Newman University",
          ukprn: "10007832",
          instid: "0028",
          name: "Entire HEP",
          country: "England",
          postcode: "B32 3NT",
          latitude: 52.434122,
          longitude: -1.995028
        },
        "a1778a57-a12b-4ad4-9b3a-3038bfe19d34" => {
          provider_name: "Bishop Auckland College",
          ukprn: "10000720",
          instid: "1168",
          name: "Main campus",
          country: "England",
          postcode: "DL14 6JZ",
          latitude: 54.65052,
          longitude: -1.69652
        },
        "1f289439-7761-45d9-af9f-6c3ad7d0ee13" => {
          provider_name: "Bishop Burton College",
          ukprn: "10000721",
          instid: "1167",
          name: "Main campus",
          country: "England",
          postcode: "HU17 8QG",
          latitude: 53.848058,
          longitude: -0.503445
        },
        "c59a23e7-e552-4e6a-a914-716c33ae4e4e" => {
          provider_name: "Blackburn College",
          ukprn: "10000747",
          instid: "1166",
          name: "Main campus",
          country: "England",
          postcode: "BB2 1LH",
          latitude: 53.748575,
          longitude: -2.489745
        },
        "7dad2c4b-2408-4e05-a76f-03da1f153805" => {
          provider_name: "Blackpool and the Fylde College",
          ukprn: "10000754",
          instid: "1165",
          name: "Main campus",
          country: "England",
          postcode: "FY2 0HB",
          latitude: 53.859387,
          longitude: -3.026295
        },
        "ccfd5a3c-9a83-4365-93c6-b7abfc8e9eac" => {
          provider_name: "Bloomsbury Institute",
          ukprn: "10004061",
          instid: "0238",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1B 3RA",
          latitude: 51.51948,
          longitude: -0.129063
        },
        "31f88bf0-3d2c-47bc-a2a4-831062b79919" => {
          provider_name: "BMC (Brooksby Melton College)",
          ukprn: "10000952",
          instid: "1154",
          name: "Main campus",
          country: "England",
          postcode: "LE13 0HJ",
          latitude: 52.766397,
          longitude: -0.891705
        },
        "afe946a0-fc33-47d4-9fde-0616e0191761" => {
          provider_name: "Bolton College",
          ukprn: "10000794",
          instid: "1164",
          name: "Main campus",
          country: "England",
          postcode: "BL3 5BG",
          latitude: 53.574721,
          longitude: -2.437096
        },
        "893e5801-d3e5-4318-a4b1-e2756086f23e" => {
          provider_name: "Boston College",
          ukprn: "10000812",
          instid: "1163",
          name: "Main campus",
          country: "England",
          postcode: "PE21 6JF",
          latitude: 52.973254,
          longitude: -0.014959
        },
        "30261338-807b-47fd-92e9-00da2d7e0fec" => {
          provider_name: "Bournemouth University",
          ukprn: "10000824",
          instid: "0050",
          name: "Entire HEP",
          country: "England",
          postcode: "BH12 5BB",
          latitude: 50.742979,
          longitude: -1.897168
        },
        "1fe05421-96b8-4bcc-a05a-7b962365589c" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Abingdon",
          country: "England",
          postcode: "OX14 1BZ",
          latitude: 51.670421,
          longitude: -1.305384
        },
        "34d1f5e5-7ffc-484e-9864-dbf02b54785b" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Basingstoke and North Hampshire Hospital",
          country: "England",
          postcode: "RG24 9NA",
          latitude: 51.280633,
          longitude: -1.109918
        },
        "a6f56c2c-0a63-4dac-943f-e7203431afbd" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Birmingham",
          country: "England",
          postcode: "B4 6BN",
          latitude: 52.483014,
          longitude: -1.895521
        },
        "bc3aa15f-0da1-4298-b12c-0c6728793e32" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "BPP University - London Waterloo",
          country: "England",
          postcode: "SE1 9NN",
          latitude: 51.505838,
          longitude: -0.110641
        },
        "b43f190f-b8d1-4aae-8b67-07634f7e334c" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Bristol",
          country: "England",
          postcode: "BS1 4QY",
          latitude: 51.449584,
          longitude: -2.595051
        },
        "b7017b37-823b-4b1a-b090-ce9abe62fade" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Cambridge",
          country: "England",
          postcode: "CB2 3NA",
          latitude: 52.204785,
          longitude: 0.120979
        },
        "e581fa3e-e0c8-4969-9b50-1eb24111c098" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Fitzwilliam House",
          country: "England",
          postcode: "EC3A 8BF",
          latitude: 51.514484,
          longitude: -0.080463
        },
        "a8f16f5c-07ce-4b52-8a2b-223307258d06" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Kettering General Hospital NHS Foundation Trust",
          country: "England",
          postcode: "NN16 8UZ",
          latitude: 52.402783,
          longitude: -0.741293
        },
        "462b20e4-3b02-4a46-be34-af6db5b38018" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Leeds",
          country: "England",
          postcode: "LS1 4HR",
          latitude: 53.795568,
          longitude: -1.552064
        },
        "f6d61455-2942-4e30-8be9-3afbf2341853" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "London King's Cross",
          country: "England",
          postcode: "N1 9JY",
          latitude: 51.531164,
          longitude: -0.120207
        },
        "eec07358-a1bb-42fe-bb0a-a8ceb285f8fd" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "London Portsoken Street",
          country: "England",
          postcode: "E1 8BT",
          latitude: 51.511646,
          longitude: -0.073521
        },
        "f4fda27d-4875-4264-b1d8-e3556cabb0e8" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Main campus",
          country: "England",
          postcode: "EC2M 5PD",
          latitude: 51.516956,
          longitude: -0.085865
        },
        "dd69cb06-50f6-4694-acd8-781e269cb350" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Manchester St James",
          country: "England",
          postcode: "M1 6FQ",
          latitude: 53.475586,
          longitude: -2.241402
        },
        "b9168d50-a76e-4c92-9dba-5c1e0e734ebb" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Red Lion Street",
          country: "England",
          postcode: "WC1R 4NY",
          latitude: 51.518652,
          longitude: -0.117317
        },
        "45ba0d8b-10f0-48cf-bac5-f625b90c132d" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Rotherham Doncaster and South Humber NHS Foundatio",
          country: "England",
          postcode: "DN4 8QN",
          latitude: 53.494823,
          longitude: -1.145978
        },
        "c7e08e03-458d-4bdf-88d5-5b0c46e52d9f" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Shepherd's Bush",
          country: "England",
          postcode: "W12 8AW",
          latitude: 51.505317,
          longitude: -0.22284
        },
        "39960289-865a-4ddf-9591-e91a745ccedf" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Southampton",
          country: "England",
          postcode: "SO14 0TB",
          latitude: 50.910466,
          longitude: -1.400648
        },
        "b465b87c-aa21-47fb-9b0b-edbb627e17fd" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "University Hospital Southampton NHS Foundation Tru",
          country: "England",
          postcode: "SO16 6YD",
          latitude: 50.933019,
          longitude: -1.435104
        },
        "9ed8ea8c-25d6-44ca-ae6a-3c0825ba4453" => {
          provider_name: "BPP University",
          ukprn: "10031982",
          instid: "0214",
          name: "Waterloo",
          country: "England",
          postcode: "SE1 9NN",
          latitude: 51.505838,
          longitude: -0.110641
        },
        "287d4a11-eee9-4ab0-9205-d7533ac20123" => {
          provider_name: "Bracknell and Wokingham College",
          ukprn: "10000833",
          instid: "1192",
          name: "Bracknell and Wokingham College",
          country: "England",
          postcode: "RG12 1DJ",
          latitude: 51.416324,
          longitude: -0.744655
        },
        "6f13c55d-a663-4d61-a284-80afb17ade11" => {
          provider_name: "Bradford College",
          ukprn: "10000840",
          instid: "1161",
          name: "Main campus",
          country: "England",
          postcode: "BD7 1AY",
          latitude: 53.791677,
          longitude: -1.768111
        },
        "75d9cb3b-83b7-43d8-b8b3-7c9fd3707332" => {
          provider_name: "Bridgwater and Taunton College",
          ukprn: "10000878",
          instid: "1158",
          name: "Main campus",
          country: "England",
          postcode: "TA1 5AX",
          latitude: 51.016061,
          longitude: -3.118879
        },
        "c985eb93-f539-48ce-92c2-90f6db9b5129" => {
          provider_name: "Brighton and Sussex Medical School",
          ukprn: "99999999",
          instid: "7006",
          name: "Main campus",
          country: "England",
          postcode: "BN1 9PX",
          latitude: 50.864249,
          longitude: -0.085693
        },
        "d6c178c5-9e9a-4226-a004-ad207cbc44da" => {
          provider_name: "Bristol Baptist College",
          ukprn: "10000894",
          instid: "0287",
          name: "Entire HEP",
          country: "England",
          postcode: "BS8 3NJ",
          latitude: 51.460494,
          longitude: -2.625879
        },
        "a425ca42-da52-4b8d-b809-f23f44cac2d5" => {
          provider_name: "Brit College",
          ukprn: "10028216",
          instid: "0280",
          name: "Entire HEP",
          country: "England",
          postcode: "E14 7HS",
          latitude: 51.512369,
          longitude: -0.035142
        },
        "07d8016d-386d-4f86-a352-3dd8a9803b4d" => {
          provider_name: "British Academy of Jewellery Limited",
          ukprn: "10038772",
          instid: "0427",
          name: "Leicester",
          country: "England",
          postcode: "LE1 1WB",
          latitude: 52.636431,
          longitude: -1.127621
        },
        "7660a800-03d7-454a-b94f-fef648c08cfd" => {
          provider_name: "British Academy of Jewellery Limited",
          ukprn: "10038772",
          instid: "0427",
          name: "Main campus",
          country: "England",
          postcode: "EC1A 2AT",
          latitude: 51.516738,
          longitude: -0.104006
        },
        "ccb63833-7155-47b6-97ce-ae4a404e2da5" => {
          provider_name: "Brockenhurst College",
          ukprn: "10000944",
          instid: "1157",
          name: "Main campus",
          country: "England",
          postcode: "SO42 7ZE",
          latitude: 50.821457,
          longitude: -1.569931
        },
        "af8235bc-01a7-4609-8b0c-cc9241446ec6" => {
          provider_name: "Bromley College of Further and Higher Education",
          ukprn: "10000948",
          instid: "1155",
          name: "Main campus",
          country: "England",
          postcode: "BR2 8HE",
          latitude: 51.38666,
          longitude: 0.034796
        },
        "51481094-fbd0-44be-b716-d9a9b3f40bc0" => {
          provider_name: "Brooklands College",
          ukprn: "10000950",
          instid: "1156",
          name: "Main campus",
          country: "England",
          postcode: "KT13 8TT",
          latitude: 51.362672,
          longitude: -0.465522
        },
        "1bbce75c-4f54-4ed1-98c8-014a678ea6e4" => {
          provider_name: "Brunel University London",
          ukprn: "10000961",
          instid: "0113",
          name: "Entire HEP",
          country: "England",
          postcode: "UB8 3PH",
          latitude: 51.532838,
          longitude: -0.472856
        },
        "57a8f917-472f-47de-9975-09adfc02616a" => {
          provider_name: "Buckinghamshire New University",
          ukprn: "10000975",
          instid: "0009",
          name: "Main campus",
          country: "England",
          postcode: "HP11 2JZ",
          latitude: 51.627509,
          longitude: -0.752036
        },
        "f5e187b7-5015-4633-87c7-4cdeef15e0a2" => {
          provider_name: "Buckinghamshire New University",
          ukprn: "10000975",
          instid: "0009",
          name: "Uxbridge campus",
          country: "England",
          postcode: "UB8 1NA",
          latitude: 51.549977,
          longitude: -0.483229
        },
        "6b71c966-6832-4d90-b2ea-6bf327758188" => {
          provider_name: "Burnley College",
          ukprn: "10001000",
          instid: "1152",
          name: "Main campus",
          country: "England",
          postcode: "BB12 0AN",
          latitude: 53.793909,
          longitude: -2.24807
        },
        "7a3b51c8-4177-4008-9160-4a2effe35191" => {
          provider_name: "Burton and South Derbyshire College",
          ukprn: "10001004",
          instid: "1153",
          name: "Main campus",
          country: "England",
          postcode: "DE14 3RL",
          latitude: 52.799693,
          longitude: -1.631174
        },
        "1274cf76-6c0e-4dca-af73-93ad28d374d7" => {
          provider_name: "Bury College",
          ukprn: "10001005",
          instid: "1151",
          name: "Main campus",
          country: "England",
          postcode: "BL9 0BG",
          latitude: 53.587602,
          longitude: -2.296091
        },
        "e32386e8-d88a-41cc-a3c9-f5878409fbbc" => {
          provider_name: "Calderdale College",
          ukprn: "10001093",
          instid: "1150",
          name: "Main campus",
          country: "England",
          postcode: "HX1 3UZ",
          latitude: 53.719527,
          longitude: -1.874416
        },
        "bfaca731-ee2b-4855-b476-e0684b5f1ec2" => {
          provider_name: "Cambridge Arts and Sciences Limited",
          ukprn: "10010308",
          instid: "0332",
          name: "Entire HEP",
          country: "England",
          postcode: "CB5 8AD",
          latitude: 52.208783,
          longitude: 0.1189
        },
        "be5cb66d-1f46-41d7-b3dd-968da433b931" => {
          provider_name: "Cambridge Regional College",
          ukprn: "10001116",
          instid: "1149",
          name: "Main campus",
          country: "England",
          postcode: "CB4 2QT",
          latitude: 52.235278,
          longitude: 0.13434
        },
        "ab7907ec-450b-4494-9433-25287650a2d2" => {
          provider_name: "Canterbury Christ Church University",
          ukprn: "10001143",
          instid: "0012",
          name: "Broadstairs campus",
          country: "England",
          postcode: "CT10 2WA",
          latitude: 51.359903,
          longitude: 1.40698
        },
        "75005339-35bb-4371-afad-7549d6e2220b" => {
          provider_name: "Canterbury Christ Church University",
          ukprn: "10001143",
          instid: "0012",
          name: "Folkestone campus",
          country: "England",
          postcode: "CT20 1JG",
          latitude: 51.081539,
          longitude: 1.1823
        },
        "f0514df2-e285-4e08-883c-7c3a2027ce6a" => {
          provider_name: "Canterbury Christ Church University",
          ukprn: "10001143",
          instid: "0012",
          name: "Main campus",
          country: "England",
          postcode: "CT1 1QU",
          latitude: 51.279643,
          longitude: 1.089364
        },
        "67cd7f51-15b3-46aa-93f6-61376cb1a7d0" => {
          provider_name: "Canterbury Christ Church University",
          ukprn: "10001143",
          instid: "0012",
          name: "Medway campus",
          country: "England",
          postcode: "ME4 4AW",
          latitude: 51.397199,
          longitude: 0.540105
        },
        "66da637a-4de7-4637-b3ed-de0ef78b0cf4" => {
          provider_name: "Canterbury Christ Church University",
          ukprn: "10001143",
          instid: "0012",
          name: "Salomons campus",
          country: "England",
          postcode: "TN3 0TG",
          latitude: 51.152357,
          longitude: 0.241168
        },
        "18408cce-9f4c-4685-91f9-fdfdda8741cb" => {
          provider_name: "Canterbury College",
          ukprn: "10001144",
          instid: "1148",
          name: "Main campus",
          country: "England",
          postcode: "CT1 3AJ",
          latitude: 51.276098,
          longitude: 1.090619
        },
        "bb590933-36c1-4698-b844-f898de1423a2" => {
          provider_name: "Cardiff and Vale College",
          ukprn: "10034450",
          instid: "1199",
          name: "Main campus",
          country: "Wales",
          postcode: "CF10 5FE",
          latitude: 51.469695,
          longitude: -3.172884
        },
        "a24b91e0-f2d0-441c-ac3c-65fb80d76da7" => {
          provider_name: "Cardiff Metropolitan University",
          ukprn: "10007854",
          instid: "0089",
          name: "Entire HEP",
          country: "Wales",
          postcode: "CF5 2YB",
          latitude: 51.495831,
          longitude: -3.21211
        },
        "a2424186-5945-448d-9324-3dc7d8d48164" => {
          provider_name: "Cardiff University",
          ukprn: "10007814",
          instid: "0179",
          name: "Main campus",
          country: "Wales",
          postcode: "CF10 3AT",
          latitude: 51.489014,
          longitude: -3.179717
        },
        "0ba8cf45-de9a-4309-aa32-19fe42d30c90" => {
          provider_name: "Cardiff University",
          ukprn: "10007814",
          instid: "0179",
          name: "National Software Academy",
          country: "Wales",
          postcode: "NP20 4AX",
          latitude: 51.589588,
          longitude: -2.998604
        },
        "2ba1cbf5-a15b-4f4c-9abc-03d64428304b" => {
          provider_name: "Cardinal Newman Catholic Sixth Form College",
          ukprn: "10001165",
          instid: "1147",
          name: "Main campus",
          country: "England",
          postcode: "PR1 4HD",
          latitude: 53.757096,
          longitude: -2.688869
        },
        "6baf13ee-5b3e-4784-af43-c5273137e9fe" => {
          provider_name: "Caspian School of Academics",
          ukprn: "10086359",
          instid: "0454",
          name: "Main campus",
          country: "England",
          postcode: "IG1 1BA",
          latitude: 51.557886,
          longitude: 0.07167
        },
        "31ee96b6-3789-4167-a6a7-e9c285a4b522" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Aston",
          country: "England",
          postcode: "B4 7ET",
          latitude: 52.486637,
          longitude: -1.890952
        },
        "86832e88-d43c-4d0d-811c-10d1fad292b9" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Birkbeck",
          country: "England",
          postcode: "WC1E 7HX",
          latitude: 51.521891,
          longitude: -0.130359
        },
        "971e4eb9-05a3-44d2-9f85-b5c3b2fb427f" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Coventry",
          country: "England",
          postcode: "CV1 5FB",
          latitude: 52.194361,
          longitude: 0.135318
        },
        "3e843e43-f3a3-46c3-9576-a02861067ab6" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Hull",
          country: "England",
          postcode: "HU6 7RX",
          latitude: 53.771778,
          longitude: -0.366384
        },
        "19d98132-06b1-429b-9ce6-66b7285634f6" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "LSBU",
          country: "England",
          postcode: "SE1 6FE",
          latitude: 51.49855,
          longitude: -0.104257
        },
        "b7a5da90-a375-4ed5-98e7-115d9b6a62af" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Reading",
          country: "England",
          postcode: "RG1 5AQ",
          latitude: 51.450965,
          longitude: -0.962051
        },
        "f7a0b0b0-0d8c-402a-b882-3f5fce3a2008" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Southampton",
          country: "England",
          postcode: "SO15 2AT",
          latitude: 50.911534,
          longitude: -1.402014
        },
        "b0eafe7e-deef-494a-a1af-b2cf2ff834f0" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "Sunderland",
          country: "England",
          postcode: "SR6 0DD",
          latitude: 54.912338,
          longitude: -1.373431
        },
        "72296194-e44b-49ca-8dc8-6218ca7ee9c1" => {
          provider_name: "CEG UFP Limited",
          ukprn: "10057213",
          instid: "0431",
          name: "UK North",
          country: "England",
          postcode: "PR1 2XQ",
          latitude: 53.764063,
          longitude: -2.70993
        },
        "7b92d5a0-a3d4-4bd9-841e-9268cc3178e8" => {
          provider_name: "Central Bedfordshire College",
          ukprn: "10002061",
          instid: "1146",
          name: "Main campus",
          country: "England",
          postcode: "LU5 4HG",
          latitude: 51.890763,
          longitude: -0.518838
        },
        "96cddcb0-c189-4840-ac3f-5652973e7c77" => {
          provider_name: "Central Film School",
          ukprn: "10024024",
          instid: "0409",
          name: "Central Film School",
          country: "England",
          postcode: "SW9 9PH",
          latitude: 51.465704,
          longitude: -0.125789
        },
        "ab0e1de7-4644-400e-babd-9ea441f9c3bd" => {
          provider_name: "Central School of Ballet",
          ukprn: "10001264",
          instid: "0446",
          name: "Main campus",
          country: "England",
          postcode: "SE1 8DJ",
          latitude: 51.506389,
          longitude: -0.106788
        },
        "8136b78c-c18b-4e88-94d5-fab0cad07e4d" => {
          provider_name: "Centre for Alternative Technology",
          ukprn: "10021550",
          instid: "1196",
          name: "Main campus",
          country: "Wales",
          postcode: "SY20 9AZ"
        },
        "40899d45-9828-4add-8b5e-c59c9de72336" => {
          provider_name: "Cheshire College South and West",
          ukprn: "10005972",
          instid: "1142",
          name: "Main campus",
          country: "England",
          postcode: "CW2 8AB",
          latitude: 53.089011,
          longitude: -2.454971
        },
        "1800ebb0-4acb-4085-bdda-c7383e7e7cc9" => {
          provider_name: "Chesterfield College",
          ukprn: "10001378",
          instid: "1144",
          name: "Main campus",
          country: "England",
          postcode: "S41 7NG",
          latitude: 53.240256,
          longitude: -1.425048
        },
        "abaa1b24-6351-45c5-9b00-0e4809c0f774" => {
          provider_name: "Chichester College Group",
          ukprn: "10007817",
          instid: "1143",
          name: "Main campus",
          country: "England",
          postcode: "PO19 1SB",
          latitude: 50.83492,
          longitude: -0.787766
        },
        "a219e5e8-11c6-4239-8cba-6735d8e937e3" => {
          provider_name: "Chicken Shed Theatre Company",
          ukprn: "10001386",
          instid: "0284",
          name: "Entire HEP",
          country: "England",
          postcode: "N14 4PE",
          latitude: 51.644436,
          longitude: -0.145242
        },
        "12f683bd-29a8-41f2-a35b-349c9a5c5483" => {
          provider_name: "Christ the Redeemer College",
          ukprn: "10026921",
          instid: "0342",
          name: "Entire HEP",
          country: "England",
          postcode: "HA2 7LX",
          latitude: 51.577239,
          longitude: -0.370208
        },
        "0a4fba2c-7cc0-463e-bd5a-cdb6e2a30a2c" => {
          provider_name: "Christie's Education Limited",
          ukprn: "10001419",
          instid: "0291",
          name: "Entire HEP",
          country: "England",
          postcode: "W1B 1NB",
          latitude: 51.520167,
          longitude: -0.144559
        },
        "7a77550e-9b3f-40b9-9fd2-67880cd9497a" => {
          provider_name: "Cirencester College",
          ukprn: "10001446",
          instid: "1141",
          name: "Main campus",
          country: "England",
          postcode: "GL7 1XA",
          latitude: 51.71269,
          longitude: -1.986058
        },
        "3162c11e-ed42-4afd-b861-18a0aaf3642f" => {
          provider_name: "City and Guilds of London Art School",
          ukprn: "10039082",
          instid: "0292",
          name: "Entire HEP",
          country: "England",
          postcode: "SE11 4DJ",
          latitude: 51.486707,
          longitude: -0.10805
        },
        "dfff2a1d-a825-40f3-8f34-4a18d5b59639" => {
          provider_name: "City College Norwich",
          ukprn: "10004772",
          instid: "1072",
          name: "Main campus",
          country: "England",
          postcode: "NR2 2LJ",
          latitude: 52.618144,
          longitude: 1.286325
        },
        "c23baadb-39f8-4d67-9b49-ea53befaf0e6" => {
          provider_name: "City College Plymouth",
          ukprn: "10005128",
          instid: "1063",
          name: "Main campus",
          country: "England",
          postcode: "PL1 5QG",
          latitude: 50.373877,
          longitude: -4.167558
        },
        "7881557e-baec-44f9-a609-1e8ca9b9e308" => {
          provider_name: "City of Bristol College",
          ukprn: "10001467",
          instid: "1159",
          name: "Main campus",
          country: "England",
          postcode: "BS1 5UA",
          latitude: 51.450934,
          longitude: -2.60573
        },
        "162417c2-ac1d-4b21-b2f4-5d8dfef9bfe8" => {
          provider_name: "City of London College",
          ukprn: "10018361",
          instid: "0234",
          name: "Main campus",
          country: "England",
          postcode: "E1 7PL",
          latitude: 51.515863,
          longitude: -0.069697
        },
        "b8d59ff8-2b3f-4d5c-a6fd-1dfd09ed1b2a" => {
          provider_name: "City of Portsmouth College",
          ukprn: "10007945",
          instid: "1103",
          name: "Main campus",
          country: "England",
          postcode: "PO6 2SA",
          latitude: 50.837367,
          longitude: -1.062222
        },
        "876faef8-ecfb-4c49-beaf-25f4c5514bf0" => {
          provider_name: "City of Sunderland College",
          ukprn: "10001475",
          instid: "1029",
          name: "Main campus",
          country: "England",
          postcode: "SR3 4AH",
          latitude: 54.892128,
          longitude: -1.409322
        },
        "c3a6f19b-31d6-47bb-91ca-70cdf0fc75cf" => {
          provider_name: "City of Wolverhampton College",
          ukprn: "10007578",
          instid: "1005",
          name: "Main campus",
          country: "England",
          postcode: "WV6 0DU",
          latitude: 52.589175,
          longitude: -2.156804
        },
        "1ef5c302-42ea-4b46-8598-157305623d82" => {
          provider_name: "City St George's, University of London",
          ukprn: "10001478",
          instid: "0115",
          name: "Entire HEP",
          country: "England",
          postcode: "EC1V 0HB",
          latitude: 51.527903,
          longitude: -0.103099
        },
        "f94ac7f1-bfa9-4d61-9eb9-310069dfe7af" => {
          provider_name: "Cliff College",
          ukprn: "10007912",
          instid: "0293",
          name: "Entire HEP",
          country: "England",
          postcode: "S32 3XG",
          latitude: 53.262636,
          longitude: -1.62853
        },
        "fbc14953-80d1-4157-9f26-33cf99175ad3" => {
          provider_name: "Colchester Institute",
          ukprn: "10001535",
          instid: "1140",
          name: "Main campus",
          country: "England",
          postcode: "CO3 3LL",
          latitude: 51.893517,
          longitude: 0.888574
        },
        "ee9c7810-9e59-4ab2-a9c3-af66a4333a97" => {
          provider_name: "Coleg Cambria",
          ukprn: "10041295",
          instid: "1201",
          name: "Main campus",
          country: "Wales",
          postcode: "LL12 7AB"
        },
        "7c684466-1d0c-4c7c-b4e8-b1475d782975" => {
          provider_name: "Coleg Gwent",
          ukprn: "10008912",
          instid: "1200",
          name: "Main campus",
          country: "Wales",
          postcode: "NP15 1XJ"
        },
        "f605bd47-82a8-4478-b02f-cda7cd5f2c1d" => {
          provider_name: "Collective Acting Studio",
          ukprn: "10091065",
          instid: "0462",
          name: "Main campus",
          country: "England",
          postcode: "N7 7EE",
          latitude: 51.561335,
          longitude: -0.115959
        },
        "bc2dbfe0-ccca-43ec-a5ee-1cd950b1b75e" => {
          provider_name: "College of Legal Practice Limited",
          ukprn: "10082828",
          instid: "0436",
          name: "Entire HEP",
          country: "England",
          postcode: "LS1 5AB",
          latitude: 53.797194,
          longitude: -1.54687
        },
        "fba84557-8e75-48ea-ab66-020b7c99018d" => {
          provider_name: "College of Medicine and Dentistry",
          ukprn: "10083397",
          instid: "0460",
          name: "Main campus",
          country: "England",
          postcode: "B4 6BN",
          latitude: 52.483167,
          longitude: -1.895476
        },
        "c6293a95-ac26-4408-84a5-126e51f6676e" => {
          provider_name: "Commonwealth College of Excellence",
          ukprn: "10020038",
          instid: "0451",
          name: "Main campus",
          country: "England",
          postcode: "EC1V 2NX",
          latitude: 51.527304,
          longitude: -0.088894
        },
        "a065a82f-e09b-47d7-9bb2-c7bbaced4358" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Bristol Old Vic Theatre School",
          country: "England",
          postcode: "BS8 2XF",
          latitude: 51.465925,
          longitude: -2.619173
        },
        "d358f179-6823-4152-999e-ce96f4a83c05" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Central School of Ballet",
          country: "England",
          postcode: "SE1 8DJ",
          latitude: 51.506389,
          longitude: -0.106788
        },
        "c17ca3b6-ba26-465c-ab42-df1e85d16b04" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Conservatoire Central Office",
          country: "England",
          postcode: "W1F 8FL",
          latitude: 51.51508,
          longitude: -0.134097
        },
        "78594234-65df-41ee-888b-92a6fb82a960" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "LCDS",
          country: "England",
          postcode: "WC1H 9PY",
          latitude: 51.5273,
          longitude: -0.128984
        },
        "780e3f98-d848-41d1-8a6b-4612ce6399bd" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "London Academy of Music and Dramatic Art",
          country: "England",
          postcode: "W14 9DA",
          latitude: 51.490551,
          longitude: -0.21395
        },
        "a30e21b1-ed7e-4149-94c7-387fcfa87b06" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "London Contemporary Dance School",
          country: "England",
          postcode: "WC1H 9AT",
          latitude: 51.52727,
          longitude: -0.128599
        },
        "53a22653-a066-43fa-87a4-b4e66e42160b" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "National Centre for Circus Arts",
          country: "England",
          postcode: "N1 6HD",
          latitude: 51.527295,
          longitude: -0.082419
        },
        "f68277ea-2ef0-45ee-94c5-17cffb3aaef6" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Northern School of Contemporary Dance",
          country: "England",
          postcode: "LS7 4BH",
          latitude: 53.813069,
          longitude: -1.533471
        },
        "44e9174d-e72c-44ca-97bc-8e14d4837a4b" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Rambert School of Ballet and Contemporary Dance",
          country: "England",
          postcode: "TW1 1QN",
          latitude: 51.461274,
          longitude: -0.321879
        },
        "a94b8cf7-c7e0-483b-adcf-bc65ebb987b3" => {
          provider_name: "Conservatoire for Dance and Drama",
          ukprn: "10001653",
          instid: "0199",
          name: "Royal Academy of Dramatic Art",
          country: "England",
          postcode: "WC1E 6ED",
          latitude: 51.521704,
          longitude: -0.131577
        },
        "a2b729bf-c828-4184-b9b8-92d445aa2ed8" => {
          provider_name: "Corndel College London",
          ukprn: "10089288",
          instid: "0463",
          name: "Main campus",
          country: "England",
          postcode: "EC1V 9AZ",
          latitude: 51.524259,
          longitude: -0.094644
        },
        "0aa3f0a3-15eb-4abb-bb33-6cfb47941ac3" => {
          provider_name: "Cornwall College",
          ukprn: "10001696",
          instid: "1136",
          name: "Main campus",
          country: "England",
          postcode: "PL25 4DJ",
          latitude: 50.346492,
          longitude: -4.785002
        },
        "63f4143b-f1d9-472a-9e7b-992561811e79" => {
          provider_name: "Court Theatre Training Company Ltd",
          ukprn: "10034324",
          instid: "0326",
          name: "Main campus",
          country: "England",
          postcode: "N1 6EU",
          latitude: 51.527878,
          longitude: -0.083404
        },
        "5beb9ce3-5cba-414d-a310-beb4df10df58" => {
          provider_name: "Court Theatre Training Company Ltd",
          ukprn: "10034324",
          instid: "0326",
          name: "Pitfield Street",
          country: "England",
          postcode: "N1 6EU",
          latitude: 51.527878,
          longitude: -0.083404
        },
        "e3726016-a797-4958-95b2-0be8d732020b" => {
          provider_name: "Courtauld Institute of Art",
          ukprn: "10007761",
          instid: "0201",
          name: "Entire HEP",
          country: "England",
          postcode: "WC2R 0RN",
          latitude: 51.510732,
          longitude: -0.116938
        },
        "268f1ee1-f9a9-49e8-aacb-3d8187491e6c" => {
          provider_name: "Coventry College",
          ukprn: "10003010",
          instid: "1138",
          name: "Main campus",
          country: "England",
          postcode: "CV2 1ED",
          latitude: 52.432257,
          longitude: -1.468915
        },
        "9fe9d774-d772-46e6-85e0-1f5abbbb1b86" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "Coventry University London Campus",
          country: "England",
          postcode: "E1 7JF",
          latitude: 51.517946,
          longitude: -0.078805
        },
        "86a4ad2c-d862-474e-8d86-d6de8a2df29a" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "Coventry University Wroclaw",
          country: "Poland",
          latitude: 52.405314,
          longitude: -1.500063
        },
        "13f7d203-de18-45b0-8b99-60ab380e7f20" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "CU London (Dagenham)",
          country: "England",
          postcode: "RM10 7BN",
          latitude: 51.560878,
          longitude: 0.155589
        },
        "aa71f29a-98c8-499d-9c78-3caa2a07325c" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "CU London (Greenwich)",
          country: "England",
          postcode: "SE10 0ER",
          latitude: 51.500721,
          longitude: 0.00689
        },
        "4748f141-56ce-4aa8-840c-4a837c7ba6d4" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "CU Scarborough",
          country: "England",
          postcode: "YO11 2JW",
          latitude: 54.270706,
          longitude: -0.413503
        },
        "ddfb88e7-4760-484f-94d6-deb6eb596785" => {
          provider_name: "Coventry University",
          ukprn: "10001726",
          instid: "0056",
          name: "Main campus",
          country: "England",
          postcode: "CV1 5FB",
          latitude: 52.405314,
          longitude: -1.500063
        },
        "15849c7a-36b3-4c9c-9fd1-bd4764cbe4eb" => {
          provider_name: "Cranfield University",
          ukprn: "10007822",
          instid: "0002",
          name: "India",
          country: "India",
          latitude: -3.0,
          longitude: -3.0
        },
        "720691f5-3cad-4d67-a15d-cc8f57ab3dab" => {
          provider_name: "Cranfield University",
          ukprn: "10007822",
          instid: "0002",
          name: "Main campus",
          country: "England",
          postcode: "MK43 0AL",
          latitude: 52.069817,
          longitude: -0.630801
        },
        "ed374b7b-196f-46a7-b50b-a3fed8e71ada" => {
          provider_name: "Cranfield University",
          ukprn: "10007822",
          instid: "0002",
          name: "Milton Keynes",
          country: "England",
          postcode: "MK9 1LT",
          latitude: 52.038197,
          longitude: -0.769572
        },
        "e9f57785-7fbd-409c-b730-1b9e45341e7c" => {
          provider_name: "Cranfield University",
          ukprn: "10007822",
          instid: "0002",
          name: "Shrivenham",
          country: "England",
          postcode: "SN6 8LA",
          latitude: 51.6051,
          longitude: -1.636715
        },
        "b67357d3-39aa-4e6a-a04c-0bccf2521d94" => {
          provider_name: "Cranfield University",
          ukprn: "10007822",
          instid: "0002",
          name: "Shrivenham",
          country: "England",
          postcode: "SN6 8LA",
          latitude: 51.60539,
          longitude: -1.637896
        },
        "e3a690ea-d182-4c82-a11f-08542adf8e54" => {
          provider_name: "Cranfield University",
          ukprn: "10007822",
          instid: "0002",
          name: "Silsoe",
          country: "England",
          postcode: "MK45 4DT",
          latitude: 52.005309,
          longitude: -0.426858
        },
        "d91a3bae-df32-493a-b5b3-8bc1bac99a0c" => {
          provider_name: "Craven College",
          ukprn: "10001743",
          instid: "1137",
          name: "Main campus",
          country: "England",
          postcode: "BD23 1US",
          latitude: 53.963392,
          longitude: -2.036742
        },
        "2d2c45db-a7e3-482e-b254-cf143b0c2139" => {
          provider_name: "Croydon College",
          ukprn: "10001778",
          instid: "1135",
          name: "Main campus",
          country: "England",
          postcode: "CR9 1DX",
          latitude: 51.373414,
          longitude: -0.095181
        },
        "fc4cb371-5804-4b76-bc91-3649693f0a6e" => {
          provider_name: "Cumbria Institute of the Arts",
          ukprn: "10001802",
          instid: "0192",
          name: "Entire institution",
          country: "England",
          postcode: "CA3 9AY",
          latitude: 54.906107,
          longitude: -2.932036
        },
        "1a5fe34d-1715-4fcd-a844-451f8cfb27ff" => {
          provider_name: "Dartington College of Arts",
          ukprn: "10001856",
          instid: "0015",
          name: "Entire institution",
          country: "England",
          postcode: "TQ9 6EJ",
          latitude: 50.453089,
          longitude: -3.692208
        },
        "8d39d424-dadf-4928-a8bb-bf3014cddaad" => {
          provider_name: "Dartington Hall Trust (The)",
          ukprn: "10026767",
          instid: "0420",
          name: "Dartington Arts School",
          country: "England",
          postcode: "TQ9 6EL",
          latitude: 50.451829,
          longitude: -3.694149
        },
        "8748a6dd-399f-48e7-bd97-32a5d22cfc1b" => {
          provider_name: "Dartington Hall Trust (The)",
          ukprn: "10026767",
          instid: "0420",
          name: "Schumacher College",
          country: "England",
          postcode: "TQ9 6EA",
          latitude: 50.451309,
          longitude: -3.70911
        },
        "76c47b4b-dc4f-4a3c-9766-f157b4f5c5b4" => {
          provider_name: "David Game College Ltd",
          ukprn: "10015688",
          instid: "0419",
          name: "Entire HEP",
          country: "England",
          postcode: "EC3N 2ET",
          latitude: 51.513081,
          longitude: -0.076475
        },
        "d914a006-af40-46cd-acdf-6385720f4f19" => {
          provider_name: "DCG",
          ukprn: "10001919",
          instid: "1134",
          name: "Main campus",
          country: "England",
          postcode: "DE24 8JE",
          latitude: 52.916014,
          longitude: -1.459
        },
        "d7d80ff2-38d5-4459-8ad3-f2eb445cc613" => {
          provider_name: "De Montfort University",
          ukprn: "10001883",
          instid: "0068",
          name: "Bedford campus",
          country: "England",
          postcode: "MK40 2BZ",
          latitude: 52.141944,
          longitude: -0.478369
        },
        "4bb0ebf6-9689-426c-a7d4-4defbbf7940a" => {
          provider_name: "De Montfort University",
          ukprn: "10001883",
          instid: "0068",
          name: "Entire HEP",
          country: "England",
          postcode: "LE1 9BH",
          latitude: 52.629906,
          longitude: -1.137724
        },
        "5b779b2a-a693-4224-b3aa-1b4c1adce4cd" => {
          provider_name: "DN Colleges Group",
          ukprn: "10004695",
          instid: "1133",
          name: "Main campus",
          country: "England",
          postcode: "DN1 2RF",
          latitude: 53.529021,
          longitude: -1.135603
        },
        "cf4931fb-72b8-4da7-b042-4309dc42cdfd" => {
          provider_name: "Dudley College of Technology",
          ukprn: "10007924",
          instid: "1132",
          name: "Main campus",
          country: "England",
          postcode: "DY1 4AS",
          latitude: 52.514257,
          longitude: -2.082623
        },
        "fb772417-14ee-4444-830b-768b8afcb565" => {
          provider_name: "Dyson Technical Training Limited",
          ukprn: "10067355",
          instid: "0415",
          name: "Entire HEP",
          country: "England",
          postcode: "SN16 0RP",
          latitude: 51.594842,
          longitude: -2.103762
        },
        "cb4a1dc1-abf9-4d63-8d29-abff56957fce" => {
          provider_name: "Ealing, Hammersmith & West London College",
          ukprn: "10002094",
          instid: "1115",
          name: "Main campus",
          country: "England",
          postcode: "W14 9BL",
          latitude: 51.491865,
          longitude: -0.214029
        },
        "28f63b06-d174-4b94-aa56-9f1627acb26a" => {
          provider_name: "East End Computing and Business College Limited",
          ukprn: "10002113",
          instid: "0253",
          name: "Main campus",
          country: "England",
          postcode: "E1 1PX",
          latitude: 51.514954,
          longitude: -0.062529
        },
        "1df409dc-231b-4c47-9709-e36144e55639" => {
          provider_name: "East Riding College",
          ukprn: "10002126",
          instid: "1129",
          name: "Main campus",
          country: "England",
          postcode: "HU17 0GH",
          latitude: 53.840733,
          longitude: -0.421457
        },
        "324eb8b1-1c3d-4911-ad21-915fa706358e" => {
          provider_name: "East Surrey College",
          ukprn: "10002130",
          instid: "1128",
          name: "Main campus",
          country: "England",
          postcode: "RH1 2JX",
          latitude: 51.253587,
          longitude: -0.162874
        },
        "6507e94a-01d9-4b95-ac5c-2d6f0ec654c5" => {
          provider_name: "East Sussex College Group",
          ukprn: "10002923",
          instid: "1127",
          name: "Main campus",
          country: "England",
          postcode: "BN21 2UF",
          latitude: 50.788909,
          longitude: 0.272124
        },
        "6c289542-b939-4ec2-ad38-354eba3a6923" => {
          provider_name: "Eastleigh College",
          ukprn: "10002143",
          instid: "1130",
          name: "Main campus",
          country: "England",
          postcode: "SO50 5FS",
          latitude: 50.961591,
          longitude: -1.358838
        },
        "98b28ad1-1c67-47da-9324-da53dfb8c5a1" => {
          provider_name: "Easton and Otley College",
          ukprn: "10037344",
          instid: "1194",
          name: "Main campus",
          country: "England",
          postcode: "NR9 5DX",
          latitude: 52.57164,
          longitude: 1.110615
        },
        "054f48cf-f65c-4ccf-b9c9-8b17c208b85b" => {
          provider_name: "Edge Hill University",
          ukprn: "10007823",
          instid: "0016",
          name: "Entire HEP",
          country: "England",
          postcode: "L39 4QP",
          latitude: 53.559608,
          longitude: -2.873836
        },
        "79a8031b-8422-402b-ba23-3c5a4db4beab" => {
          provider_name: "Edinburgh College of Art",
          ukprn: "10007824",
          instid: "0096",
          name: "Entire institution",
          country: "Scotland",
          postcode: "EH3 9DF",
          latitude: 55.945839,
          longitude: -3.199604
        },
        "c529d445-e8af-49cf-a3a3-233ffb4444ac" => {
          provider_name: "Edinburgh Napier University",
          ukprn: "10007772",
          instid: "0107",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "EH14 1DJ",
          latitude: 55.917998,
          longitude: -3.239866
        },
        "48fea6ba-4946-4e03-b5ee-b6848e5b9acc" => {
          provider_name: "EKC GROUP",
          ukprn: "10006570",
          instid: "1187",
          name: "Main campus",
          country: "England",
          postcode: "CT10 1PN",
          latitude: 51.354162,
          longitude: 1.435027
        },
        "c6db5c93-0e83-4d83-b482-6db5660879ae" => {
          provider_name: "EM Normandie UK Ltd",
          ukprn: "10082026",
          instid: "0468",
          name: "Main campus",
          country: "England",
          postcode: "OX1 1SA",
          latitude: 51.749553,
          longitude: -1.264506
        },
        "4cd19acb-f65d-489b-bcb6-bfff67e0d389" => {
          provider_name: "Emmanuel Theological College",
          ukprn: "10032295",
          instid: "0473",
          name: "Main campus",
          country: "England",
          postcode: "WA4 4GE",
          latitude: 53.332053,
          longitude: -2.642147
        },
        "69f8a1e7-f812-437e-a693-c11691c3af5f" => {
          provider_name: "Empire College London Limited",
          ukprn: "10022047",
          instid: "0252",
          name: "Entire HEP",
          country: "England",
          postcode: "IG1 1BA",
          latitude: 51.557886,
          longitude: 0.07167
        },
        "35001e6e-75dc-49d4-a2b6-679dc04f9d69" => {
          provider_name: "Engineering College of Technology Limited",
          ukprn: "10089771",
          instid: "0461",
          name: "Main campus",
          country: "England",
          postcode: "KT4 7AT",
          latitude: 51.379252,
          longitude: -0.243883
        },
        "f130db2b-497f-46f6-9570-dd13b330dfe5" => {
          provider_name: "Escape Studios",
          ukprn: "10042570",
          instid: "0262",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1V 7BH",
          latitude: 51.516764,
          longitude: -0.122973
        },
        "8a6d8aec-cb74-435c-98cc-185f6cdc632b" => {
          provider_name: "ESCP Europe Business School",
          ukprn: "10002313",
          instid: "0410",
          name: "Entire HEP",
          country: "England",
          postcode: "NW3 7BG",
          latitude: 51.555586,
          longitude: -0.193924
        },
        "2d50499f-99a4-43bf-a6d6-1663dbec0068" => {
          provider_name: "EThames Graduate School Limited",
          ukprn: "10008229",
          instid: "0235",
          name: "Main campus",
          country: "England",
          postcode: "IG2 6NQ",
          latitude: 51.576272,
          longitude: 0.064279
        },
        "e49c1635-58a5-46f0-bddc-25da8db65f0a" => {
          provider_name: "European School of Osteopathy",
          ukprn: "10002344",
          instid: "7009",
          name: "Entire HEP",
          country: "England",
          postcode: "ME14 3DZ",
          latitude: 51.305512,
          longitude: 0.544507
        },
        "65730ec3-794d-4aaf-a1df-544d758614a7" => {
          provider_name: "Exeter College",
          ukprn: "10002370",
          instid: "1126",
          name: "Main campus",
          country: "England",
          postcode: "EX4 4JS",
          latitude: 50.728223,
          longitude: -3.538392
        },
        "fb303c3c-54f0-4521-a066-9beaaf8dea87" => {
          provider_name: "Fairfield School of Business Ltd",
          ukprn: "10033187",
          instid: "0254",
          name: "Main campus",
          country: "England",
          postcode: "CR0 1NX",
          latitude: 51.372569,
          longitude: -0.099081
        },
        "343bae15-6e47-40ec-9bb1-6c9844cbb6e4" => {
          provider_name: "Falmouth University",
          ukprn: "10008640",
          instid: "0017",
          name: "Dartington Campus",
          country: "England",
          postcode: "TQ9 6EJ",
          latitude: 50.453089,
          longitude: -3.692208
        },
        "6bef1d24-8a01-4a35-8733-694d7a05e690" => {
          provider_name: "Falmouth University",
          ukprn: "10008640",
          instid: "0017",
          name: "Main campus",
          country: "England",
          postcode: "TR11 4RH",
          latitude: 50.149625,
          longitude: -5.071079
        },
        "05b08a44-d9f3-42d9-a2e3-67f4af10046b" => {
          provider_name: "Falmouth University",
          ukprn: "10008640",
          instid: "0017",
          name: "Penryn",
          country: "England",
          postcode: "TR10 9FE",
          latitude: 50.17055,
          longitude: -5.125645
        },
        "34163390-9fca-426d-8840-a41edaa1054f" => {
          provider_name: "Farnborough College of Technology",
          ukprn: "10002412",
          instid: "1124",
          name: "Main campus",
          country: "England",
          postcode: "GU14 6SB",
          latitude: 51.285554,
          longitude: -0.751747
        },
        "1ff1b36e-3fc3-489a-bf6f-b7d1292380ac" => {
          provider_name: "ForMission Ltd",
          ukprn: "10038763",
          instid: "0248",
          name: "Main campus",
          country: "England",
          postcode: "B30 1HH",
          latitude: 52.422398,
          longitude: -1.938939
        },
        "682a0c87-de1d-4388-a270-fd2d5d59c759" => {
          provider_name: "Furness College",
          ukprn: "10002599",
          instid: "1123",
          name: "Main campus",
          country: "England",
          postcode: "LA14 2PJ",
          latitude: 54.116534,
          longitude: -3.242096
        },
        "97d883d4-338f-460f-bb87-c3ce2a35d301" => {
          provider_name: "Futureworks",
          ukprn: "10022087",
          instid: "0281",
          name: "Entire HEP",
          country: "England",
          postcode: "M3 5FS",
          latitude: 53.48266,
          longitude: -2.253721
        },
        "64a7c544-87e0-40f9-98f5-6f9d465a5032" => {
          provider_name: "Gateshead College",
          ukprn: "10002638",
          instid: "1122",
          name: "Main campus",
          country: "England",
          postcode: "NE8 3BE",
          latitude: 54.966557,
          longitude: -1.598114
        },
        "08fbbd79-4876-494e-a681-ae02b2884920" => {
          provider_name: "Glasgow Caledonian University",
          ukprn: "10007762",
          instid: "0106",
          name: "London Campus",
          country: "England",
          postcode: "E1 6PX",
          latitude: 51.518546,
          longitude: -0.072581
        },
        "363a6cdf-f49e-414d-9789-39028423efff" => {
          provider_name: "Glasgow Caledonian University",
          ukprn: "10007762",
          instid: "0106",
          name: "Main campus",
          country: "Scotland",
          postcode: "G4 0BA",
          latitude: 55.86729,
          longitude: -4.250057
        },
        "2c1afb3f-8fd8-4d6c-816f-aeaaf0bc73ac" => {
          provider_name: "Glasgow School of Art",
          ukprn: "10002681",
          instid: "0097",
          name: "FORRES",
          country: "Scotland",
          postcode: "IV36 2SH",
          latitude: 57.573965,
          longitude: -3.615153
        },
        "fa738f13-7a8c-450c-a932-f523501a3172" => {
          provider_name: "Glasgow School of Art",
          ukprn: "10002681",
          instid: "0097",
          name: "Main campus",
          country: "Scotland",
          postcode: "G3 6RQ",
          latitude: 55.865948,
          longitude: -4.263662
        },
        "a8e9dd7a-5abc-4b44-9a1c-61d7929b1c25" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Birmingham - Fazeley St",
          country: "England",
          postcode: "B5 5SE",
          latitude: 52.478249,
          longitude: -1.881918
        },
        "2a8fb55d-b934-4172-8ce6-20b78f345bc4" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Global Education House",
          country: "England",
          postcode: "E15 2JA",
          latitude: 51.537165,
          longitude: -0.003474
        },
        "ae936b05-8b2f-4dc4-9f99-678e131b1338" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Leeds",
          country: "England",
          postcode: "LS1 3DL",
          latitude: 53.801741,
          longitude: -1.553821
        },
        "a2d2d2bf-a052-440d-b593-513afd677c72" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "London - Greenford Road",
          country: "England",
          postcode: "UB6 0HE",
          latitude: 51.548314,
          longitude: -0.341603
        },
        "85f827f8-3678-4423-b892-94416207bcbc" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "London - Republic",
          country: "England",
          postcode: "E14 2BE",
          latitude: 51.510185,
          longitude: -0.0049
        },
        "8d6bdf3c-a08f-46fd-be85-487bb9784aed" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Main campus",
          country: "England",
          postcode: "E3 2SE",
          latitude: 51.528558,
          longitude: -0.019897
        },
        "e040c764-8396-400a-aa96-b0c54cece13e" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Manchester",
          country: "England",
          postcode: "M12 6JH",
          latitude: 53.470746,
          longitude: -2.214271
        },
        "e3d8132d-b0b1-4f8c-afb8-4f2521f12a5d" => {
          provider_name: "Global Banking School Limited",
          ukprn: "10042500",
          instid: "0363",
          name: "Stratford - Cam Road",
          country: "England",
          postcode: "E15 2SN",
          latitude: 51.536986,
          longitude: -0.00142
        },
        "b3fdd638-16f5-4769-a9cf-b734e0b21833" => {
          provider_name: "Gloucestershire College",
          ukprn: "10002696",
          instid: "1121",
          name: "Main campus",
          country: "England",
          postcode: "GL51 7SJ",
          latitude: 51.901613,
          longitude: -2.11819
        },
        "0e99f0b0-26be-4c02-91ff-f86bbc9cf947" => {
          provider_name: "Goldsmiths College",
          ukprn: "10002718",
          instid: "0131",
          name: "Entire HEP",
          country: "England",
          postcode: "SE14 6NW",
          latitude: 51.474144,
          longitude: -0.035401
        },
        "579b3080-f8a6-435f-bfd4-4c4d7d92252a" => {
          provider_name: "Gower College Swansea",
          ukprn: "10030408",
          instid: "0336",
          name: "Entire HEP",
          country: "Wales",
          postcode: "SA2 9EB",
          latitude: 51.622379,
          longitude: -3.983757
        },
        "4e29a6aa-94ea-4735-98cb-f2fc01e599ee" => {
          provider_name: "Grafton College",
          ukprn: "10002735",
          instid: "0245",
          name: "Main campus",
          country: "England",
          postcode: "W1D 2HY",
          latitude: 51.515727,
          longitude: -0.136304
        },
        "6269e7b2-232b-4a87-8f3e-36334df82865" => {
          provider_name: "Grantham College",
          ukprn: "10002743",
          instid: "1120",
          name: "Main campus",
          country: "England",
          postcode: "NG31 9AP",
          latitude: 52.912718,
          longitude: -0.63534
        },
        "0206f209-5ad5-42d7-8817-b5c7ccf8580e" => {
          provider_name: "Greater Brighton Metropolitan College",
          ukprn: "10004736",
          instid: "1160",
          name: "Main campus",
          country: "England",
          postcode: "BN1 4FA",
          latitude: 50.828269,
          longitude: -0.136979
        },
        "24de00a1-f400-4e77-be79-947c0b027ec9" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Abergele",
          country: "Wales",
          postcode: "LL22 7HT",
          latitude: 53.286219,
          longitude: -3.57654
        },
        "3cc2eab1-2f49-4d3a-ae20-93091541d4e2" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Bangor",
          country: "Wales",
          postcode: "LL57 2TP",
          latitude: 53.223007,
          longitude: -4.141519
        },
        "98ac51fc-3168-4b30-9701-9bd540041215" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Denbigh",
          country: "Wales",
          postcode: "LL16 3SY",
          latitude: 53.184343,
          longitude: -3.419654
        },
        "7182ee0e-c036-4e34-85c9-6d92ae679ea7" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Dolgellau",
          country: "Wales",
          postcode: "LL40 2SW",
          latitude: 52.744734,
          longitude: -3.897765
        },
        "c8659b3f-b2a4-495f-9c65-b00069b61548" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Glynllifon",
          country: "Wales",
          postcode: "LL54 5DU",
          latitude: 53.073078,
          longitude: -4.306898
        },
        "38245de9-5aa7-4872-8c11-54011bdf0fe7" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Llangefni",
          country: "Wales",
          postcode: "LL77 7HY",
          latitude: 53.256796,
          longitude: -4.296372
        },
        "7f5d22b3-e08d-420e-8628-94de4bfbcf1e" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Main campus",
          country: "Wales",
          postcode: "LL28 4HZ",
          latitude: 53.311403,
          longitude: -3.758251
        },
        "1209e97a-8316-4af0-a877-2423764fb8e5" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Parc Menai",
          country: "Wales",
          postcode: "LL57 4BN",
          latitude: 53.204945,
          longitude: -4.178628
        },
        "939d9c64-e239-4f21-a9fe-9d663d717e6d" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Pwllheli",
          country: "Wales",
          postcode: "LL53 5EB",
          latitude: 52.891833,
          longitude: -4.418496
        },
        "f21aa4dd-2483-4f3a-ba3a-e6ba7201e929" => {
          provider_name: "Grŵp Llandrillo Menai",
          ukprn: "10007820",
          instid: "0334",
          name: "Rhyl",
          country: "Wales",
          postcode: "LL18 2HG",
          latitude: 53.312715,
          longitude: -3.48454
        },
        "60dd14da-c97f-4fd7-a646-6d73c9272720" => {
          provider_name: "Grŵp NPTC Group",
          ukprn: "10009614",
          instid: "0335",
          name: "Afan Campus",
          country: "Wales",
          postcode: "SA13 2AL",
          latitude: 51.571547,
          longitude: -3.749645
        },
        "8a80ca64-2e4c-4406-a2a2-c568dfa86349" => {
          provider_name: "Grŵp NPTC Group",
          ukprn: "10009614",
          instid: "0335",
          name: "Brecon Beacons Campus",
          country: "Wales",
          postcode: "LD3 9SR",
          latitude: 51.951876,
          longitude: -3.382322
        },
        "d636174a-afef-4a7b-ab26-58a4a1a41dd2" => {
          provider_name: "Grŵp NPTC Group",
          ukprn: "10009614",
          instid: "0335",
          name: "Llandarcy",
          country: "Wales",
          postcode: "SA10 6JD",
          latitude: 51.639898,
          longitude: -3.858368
        },
        "82e2dd89-224c-4e49-b2ff-40067b7e10d7" => {
          provider_name: "Grŵp NPTC Group",
          ukprn: "10009614",
          instid: "0335",
          name: "Main campus",
          country: "Wales",
          postcode: "SA10 7RF",
          latitude: 51.666461,
          longitude: -3.81415
        },
        "e93b7a94-33d9-4982-b84b-43cb804fc785" => {
          provider_name: "Grŵp NPTC Group",
          ukprn: "10009614",
          instid: "0335",
          name: "Newtown Campus",
          country: "Wales",
          postcode: "SY16 4HU",
          latitude: 52.505257,
          longitude: -3.339249
        },
        "31f79c51-c191-4cbf-9f37-549b97cfc65a" => {
          provider_name: "GSM London",
          ukprn: "10007937",
          instid: "0215",
          name: "Greenford Campus",
          country: "England",
          postcode: "UB6 0HE",
          latitude: 51.550191,
          longitude: -0.340287
        },
        "05d18c24-23b5-4817-be87-7b4df666b4cc" => {
          provider_name: "GSM London",
          ukprn: "10007937",
          instid: "0215",
          name: "Main campus",
          country: "England",
          postcode: "SE1 4LG",
          latitude: 51.499761,
          longitude: -0.091341
        },
        "39ebc228-0acb-43a2-9462-27120beea330" => {
          provider_name: "Guildford College of Further and Higher Education",
          ukprn: "10002815",
          instid: "1118",
          name: "Main campus",
          country: "England",
          postcode: "GU1 1EZ",
          latitude: 51.246075,
          longitude: -0.569872
        },
        "e3ad9a5b-ac16-4591-8c97-1f3b80ea9653" => {
          provider_name: "Guildhall School of Music and Drama",
          ukprn: "10007825",
          instid: "0208",
          name: "Entire HEP",
          country: "England",
          postcode: "EC2Y 8DT",
          latitude: 51.519517,
          longitude: -0.092374
        },
        "9a91ddd8-a1aa-43d5-a889-4d12b0502932" => {
          provider_name: "Hadlow College",
          ukprn: "10002843",
          instid: "1117",
          name: "Main campus",
          country: "England",
          postcode: "TN11 0AL",
          latitude: 51.225228,
          longitude: 0.328911
        },
        "42d44b62-e6ca-4097-925f-b71e80841bf9" => {
          provider_name: "Halesowen College",
          ukprn: "10002852",
          instid: "1116",
          name: "Main campus",
          country: "England",
          postcode: "B63 3NA",
          latitude: 52.457161,
          longitude: -2.051979
        },
        "a66bcb50-afea-4449-a84c-82c735b7a694" => {
          provider_name: "Harlow College",
          ukprn: "10002899",
          instid: "1114",
          name: "Main campus",
          country: "England",
          postcode: "CM20 3EZ",
          latitude: 51.76932,
          longitude: 0.098238
        },
        "2d5ca19d-10c6-4580-849a-f27482d758ad" => {
          provider_name: "Harper Adams University",
          ukprn: "10040812",
          instid: "0018",
          name: "Entire HEP",
          country: "England",
          postcode: "TF10 8NB",
          latitude: 52.77991,
          longitude: -2.425557
        },
        "2b2dd1d1-7515-4c66-8501-4dd02ad817fd" => {
          provider_name: "Harper and Keele Veterinary School",
          ukprn: "90000451",
          instid: "0411",
          name: "Main campus",
          country: "England",
          postcode: "TF10 8NB",
          latitude: 52.77991,
          longitude: -2.425557
        },
        "a74f6a6d-123f-4fa7-9d63-80f735f7e7aa" => {
          provider_name: "Harrow, Richmond & Uxbridge College (HRUC)",
          ukprn: "10007193",
          instid: "1110",
          name: "Main campus",
          country: "England",
          postcode: "UB8 1NQ",
          latitude: 51.549947,
          longitude: -0.469124
        },
        "42b78019-c54d-478c-96f5-a0797aa9e39a" => {
          provider_name: "Hartpury College",
          ukprn: "10002919",
          instid: "1113",
          name: "Main campus",
          country: "England",
          postcode: "GL19 3BE",
          latitude: 51.904913,
          longitude: -2.310281
        },
        "6636587c-7c5f-4289-8f95-870d4b7c1988" => {
          provider_name: "Hartpury College of Further Education",
          ukprn: "10080810",
          instid: "1184",
          name: "Main campus",
          country: "England",
          postcode: "GL19 3BE",
          latitude: 51.904913,
          longitude: -2.310281
        },
        "50742a88-aa28-4f7e-a56b-2880ed8e687c" => {
          provider_name: "Hartpury University",
          ukprn: "10080811",
          instid: "0352",
          name: "Entire HEP",
          country: "England",
          postcode: "GL19 3BE",
          latitude: 51.904913,
          longitude: -2.310281
        },
        "50151379-4aea-4cc2-aaaa-2090d140186c" => {
          provider_name: "Havant and South Downs College",
          ukprn: "10005979",
          instid: "1112",
          name: "Main campus",
          country: "England",
          postcode: "PO7 8AA",
          latitude: 50.861598,
          longitude: -1.021127
        },
        "57471fae-dc67-4c44-898b-59abef1d5ef0" => {
          provider_name: "Havering College of Further and Higher Education",
          ukprn: "10002935",
          instid: "1111",
          name: "Main campus",
          country: "England",
          postcode: "RM11 2LL",
          latitude: 51.581596,
          longitude: 0.22125
        },
        "73bb1f6a-c139-438c-8ef7-2bc7cf117201" => {
          provider_name: "Health Sciences University",
          ukprn: "10000163",
          instid: "0213",
          name: "Entire HEP",
          country: "England",
          postcode: "BH5 2DF",
          latitude: 50.727261,
          longitude: -1.828772
        },
        "57d3746a-42f6-40bf-9753-6a01bdd21140" => {
          provider_name: "Heart of Worcestershire College",
          ukprn: "10007977",
          instid: "1004",
          name: "Main campus",
          country: "England",
          postcode: "WR1 2JF",
          latitude: 52.191537,
          longitude: -2.223534
        },
        "7c11754a-1ead-48b8-9c7a-4566ba749942" => {
          provider_name: "Heart of Yorkshire Education Group",
          ukprn: "10007289",
          instid: "1019",
          name: "Main campus",
          country: "England",
          postcode: "WF1 2DH",
          latitude: 53.685588,
          longitude: -1.503855
        },
        "278a7f64-9940-480c-89f8-f7100d079fbd" => {
          provider_name: "Hereford College of Arts",
          ukprn: "10003022",
          instid: "1108",
          name: "Main campus",
          country: "England",
          postcode: "HR1 1LT",
          latitude: 52.060873,
          longitude: -2.697601
        },
        "5fb27653-8d1e-4b87-8436-5fe32480881f" => {
          provider_name: "Herefordshire, Ludlow and North Shropshire College",
          ukprn: "10003023",
          instid: "1109",
          name: "Main campus",
          country: "England",
          postcode: "HR1 1LS",
          latitude: 52.061747,
          longitude: -2.697295
        },
        "2e3bff33-e7ca-4c21-820f-10b837b9bdc4" => {
          provider_name: "Heriot-Watt University",
          ukprn: "10007764",
          instid: "0171",
          name: "Dubai campus",
          country: "United Arab Emirates",
          latitude: 55.909385,
          longitude: -3.320682
        },
        "9d3996e8-9ed1-4968-a099-e04ea12e806d" => {
          provider_name: "Heriot-Watt University",
          ukprn: "10007764",
          instid: "0171",
          name: "Main campus",
          country: "Scotland",
          postcode: "EH14 4AS",
          latitude: 55.909385,
          longitude: -3.320682
        },
        "81fb2657-5c16-4fc3-9e34-9c952ad0ed7f" => {
          provider_name: "Heriot-Watt University",
          ukprn: "10007764",
          instid: "0171",
          name: "Malaysia campus",
          country: "Malaysia",
          latitude: 55.909385,
          longitude: -3.320682
        },
        "40e7037d-5744-42e2-a073-c0ed437ee7a3" => {
          provider_name: "Heriot-Watt University",
          ukprn: "10007764",
          instid: "0171",
          name: "Orkney campus",
          country: "Scotland",
          postcode: "KW16 3AN",
          latitude: 58.963829,
          longitude: -3.299353
        },
        "c7ed159b-874b-4d7c-b100-6a112a61ca31" => {
          provider_name: "Heriot-Watt University",
          ukprn: "10007764",
          instid: "0171",
          name: "Scottish Borders campus",
          country: "Scotland",
          postcode: "TD1 3HE",
          latitude: 55.607703,
          longitude: -2.783205
        },
        "7b41a9b0-fdce-46a5-b9e4-2dec6c3b17c8" => {
          provider_name: "Hertford Regional College",
          ukprn: "10003035",
          instid: "1107",
          name: "Main campus",
          country: "England",
          postcode: "SG12 9JF",
          latitude: 51.80769,
          longitude: -0.031549
        },
        "0b3dc270-7e92-4427-b3e0-c044218d3d82" => {
          provider_name: "Heythrop College",
          ukprn: "10007765",
          instid: "0205",
          name: "Entire HEP",
          country: "England",
          postcode: "W8 5HN",
          latitude: 51.499883,
          longitude: -0.190908
        },
        "6a4ab22f-aabc-427a-b14e-e9617acc9ffb" => {
          provider_name: "Higher Rhythm Limited",
          ukprn: "10020118",
          instid: "0457",
          name: "Main campus",
          country: "England",
          postcode: "DN1 2PG",
          latitude: 53.525589,
          longitude: -1.12943
        },
        "86209dbb-a60f-4f2d-9a50-ec4f1b5fbef3" => {
          provider_name: "Holborn College Limited",
          ukprn: "10042194",
          instid: "0273",
          name: "Main campus",
          country: "England",
          postcode: "SE1 1HR",
          latitude: 51.502853,
          longitude: -0.091788
        },
        "b376ab04-9b30-4ed1-9beb-03c6b291612d" => {
          provider_name: "Holy Cross College",
          ukprn: "10003128",
          instid: "1105",
          name: "Main campus",
          country: "England",
          postcode: "BL9 9BB",
          latitude: 53.584917,
          longitude: -2.298896
        },
        "de8de0f0-4a2c-4361-a78d-c1918b308ac3" => {
          provider_name: "Homerton College",
          ukprn: "10003138",
          instid: "0019",
          name: "Main campus",
          country: "England",
          postcode: "CB2 2PH",
          latitude: 0.13599,
          longitude: 52.186062
        },
        "39be3dc9-fd48-466d-88e7-08bddc052053" => {
          provider_name: "Hopwood Hall College",
          ukprn: "10003146",
          instid: "1104",
          name: "Main campus",
          country: "England",
          postcode: "M24 6XH",
          latitude: 53.569124,
          longitude: -2.188708
        },
        "f05d0ff9-b562-4d6b-bc04-55645b9a0fd9" => {
          provider_name: "Hugh Baird College",
          ukprn: "10003193",
          instid: "1102",
          name: "Main campus",
          country: "England",
          postcode: "L20 7EW",
          latitude: 53.445072,
          longitude: -2.989404
        },
        "5cd56cfb-2b75-4a10-bc42-054af5f92810" => {
          provider_name: "Hull College",
          ukprn: "10003200",
          instid: "1101",
          name: "Main campus",
          country: "England",
          postcode: "HU1 3DG",
          latitude: 53.746393,
          longitude: -0.331867
        },
        "eea1f6f0-09fc-4876-953e-5df9f7ee0efc" => {
          provider_name: "Hull York Medical School",
          ukprn: "99999998",
          instid: "7005",
          name: "Main campus",
          country: "England",
          postcode: "YO10 5DD",
          latitude: 53.948419,
          longitude: -1.053544
        },
        "afe07cb7-a7d3-469b-8385-f15a3c376cf6" => {
          provider_name: "Hult International Business School Ltd",
          ukprn: "10003212",
          instid: "0406",
          name: "London PG",
          country: "England",
          postcode: "WC1N 2AT",
          latitude: 51.521688,
          longitude: -0.115405
        },
        "bf3a3e78-d069-466e-b939-5d44063ab68d" => {
          provider_name: "Hult International Business School Ltd",
          ukprn: "10003212",
          instid: "0406",
          name: "Main campus",
          country: "England",
          postcode: "E1 1LD",
          latitude: 51.515125,
          longitude: -0.068433
        },
        "c63c9891-7a7c-480c-888e-e862e2493e01" => {
          provider_name: "ICOM",
          ukprn: "10023445",
          instid: "0297",
          name: "Main campus",
          country: "England",
          postcode: "RH19 1DZ",
          latitude: 51.130613,
          longitude: -0.016171
        },
        "b687a14e-c314-4bb5-bdb2-5fb86d6553de" => {
          provider_name: "ICON College of Technology and Management",
          ukprn: "10003239",
          instid: "0236",
          name: "Entire HEP",
          country: "England",
          postcode: "E1 1EG",
          latitude: 51.515495,
          longitude: -0.06755
        },
        "f83b2a42-a71a-46ec-9aec-9d5339362d58" => {
          provider_name: "IFS University College",
          ukprn: "10008289",
          instid: "0217",
          name: "Lovat Lane",
          country: "England",
          postcode: "EC3R 8EB",
          latitude: 51.509875,
          longitude: -0.083986
        },
        "809ace50-c8b8-45a3-8db3-9e07240663eb" => {
          provider_name: "IFS University College",
          ukprn: "10008289",
          instid: "0217",
          name: "Peninsular House",
          country: "England",
          postcode: "EC3R 8LJ",
          latitude: 51.509679,
          longitude: -0.085219
        },
        "dd6fa094-ab2c-4e06-8b0d-b86d3c8f6b9f" => {
          provider_name: "Imperial College of Science, Technology and Medicine",
          ukprn: "10003270",
          instid: "0132",
          name: "Entire HEP",
          country: "England",
          postcode: "SW7 2AZ",
          latitude: 51.498317,
          longitude: -0.176923
        },
        "78efc1e8-e747-47be-82fa-0f791c087941" => {
          provider_name: "Imperial College of Science, Technology and Medicine",
          ukprn: "10003270",
          instid: "0132",
          name: "Wye campus",
          country: "England",
          postcode: "TN25 5AH",
          latitude: 51.185533,
          longitude: 0.940715
        },
        "e163c942-4974-472e-abd8-00c88daa7aa3" => {
          provider_name: "Inchbald School of Design Limited",
          ukprn: "10003284",
          instid: "0439",
          name: "Entire HEP",
          country: "England",
          postcode: "SW1W 9BA",
          latitude: 51.494119,
          longitude: -0.155082
        },
        "7e35d45d-4a01-4ecf-8f15-64eebe294923" => {
          provider_name: "Inspire Education Group",
          ukprn: "10005077",
          instid: "1061",
          name: "Main campus",
          country: "England",
          postcode: "PE1 4DZ",
          latitude: 52.586783,
          longitude: -0.230191
        },
        "61959098-9bb7-4d82-ae0c-b864bb4d4b58" => {
          provider_name: "Institute of Art - London Limited",
          ukprn: "10013220",
          instid: "0405",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1B 3EE",
          latitude: 51.518668,
          longitude: -0.13124
        },
        "c99abf71-c6df-41aa-bb13-0f4d671173b2" => {
          provider_name: "Institute of Contemporary Music Performance",
          ukprn: "10035638",
          instid: "0220",
          name: "Entire HEP",
          country: "England",
          postcode: "NW6 7XG",
          latitude: 51.543792,
          longitude: -0.204155
        },
        "3693c9ed-4d7e-4ff9-b7b4-ddb66cd8865a" => {
          provider_name: "Institute of Education",
          ukprn: "10007766",
          instid: "0133",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1H 0AL",
          latitude: 51.522977,
          longitude: -0.127965
        },
        "fb195833-c1cb-44f5-8c04-64e6a892ee31" => {
          provider_name: "International Business College Manchester Limited",
          ukprn: "10042679",
          instid: "0341",
          name: "Entire HEP",
          country: "England",
          postcode: "M1 3UH"
        },
        "b1403a10-7277-41fc-af6f-51d41af51893" => {
          provider_name: "International College of Musical Theatre",
          ukprn: "10027603",
          instid: "0450",
          name: "Main campus",
          country: "England",
          postcode: "E9 5LH",
          latitude: 51.543773,
          longitude: -0.025583
        },
        "03e0e586-c2bb-4f09-9ba8-94c272d7a9ea" => {
          provider_name: "INTO University Partnerships Limited",
          ukprn: "10082728",
          instid: "0423",
          name: "INTO London",
          country: "England",
          postcode: "E1 7EZ",
          latitude: 51.516755,
          longitude: -0.076753
        },
        "8b49b095-1b59-428e-b31c-498ea5074784" => {
          provider_name: "INTO University Partnerships Limited",
          ukprn: "10082728",
          instid: "0423",
          name: "Main campus",
          country: "England",
          postcode: "M1 6LT",
          latitude: 53.475201,
          longitude: -2.240162
        },
        "35870d65-22da-443b-a0e0-8b0c7cd1fd8e" => {
          provider_name: "Istituto Marangoni Limited",
          ukprn: "10009527",
          instid: "0299",
          name: "Entire HEP",
          country: "England",
          postcode: "E1 6PX",
          latitude: 51.518546,
          longitude: -0.072581
        },
        "16767701-9692-4c5d-9d26-673edf5dac31" => {
          provider_name: "Itchen College",
          ukprn: "10003427",
          instid: "1195",
          name: "Main campus",
          country: "England",
          postcode: "SO19 7TB",
          latitude: 50.908661,
          longitude: -1.357172
        },
        "8659f508-cd62-4d34-8a82-110b89f9bac9" => {
          provider_name: "Joseph Chamberlain Sixth Form College",
          ukprn: "10003511",
          instid: "1186",
          name: "Main campus",
          country: "England",
          postcode: "B12 9FF",
          latitude: 52.462221,
          longitude: -1.885885
        },
        "df7bdef2-b3af-454f-a6d5-e17677907c5b" => {
          provider_name: "JSA Education Group Ltd.",
          ukprn: "10067601",
          instid: "0417",
          name: "Main Campus",
          country: "England",
          postcode: "W1S 3AS",
          latitude: 51.510249,
          longitude: -0.14075
        },
        "fe18e8ec-a68c-4f91-bfaa-eda3449ea098" => {
          provider_name: "JSA Education Group Ltd.",
          ukprn: "10067601",
          instid: "0417",
          name: "Mayfair campus",
          country: "England",
          postcode: "EC4A 4AS",
          latitude: 51.514551,
          longitude: -0.105005
        },
        "2522934d-ad7f-47ec-976c-f9a949191588" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "Bournemouth University International College",
          country: "England",
          postcode: "BH8 8GN",
          latitude: 50.723925,
          longitude: -1.864943
        },
        "f815d418-a81a-4882-848f-051ba5684591" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "Kaplan International College London",
          country: "England",
          postcode: "SE1 9DE",
          latitude: 51.50626,
          longitude: -0.090481
        },
        "a0526c42-8d8c-4baa-a52a-402e87621fa8" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "Nottingham Trent International College",
          country: "England",
          postcode: "NG1 5LT",
          latitude: 52.958227,
          longitude: -1.155955
        },
        "51f48e2a-0c45-4d68-aab7-fbe2deb1f49e" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "University of Brighton International College",
          country: "England",
          postcode: "BN2 4GJ",
          latitude: 50.844419,
          longitude: -0.11946
        },
        "64cc584a-0531-464c-ab4f-4177704a5fe9" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "University of Essex International College",
          country: "England",
          postcode: "CO4 3SQ",
          latitude: 51.87681,
          longitude: 0.946585
        },
        "f42c570c-9a8a-4489-b65f-f66a250f9afa" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "University of Liverpool International College",
          country: "England",
          postcode: "L7 3FA",
          latitude: 53.406937,
          longitude: -2.959951
        },
        "fbdca00a-56d9-4e34-a4ce-5a340955f53c" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "University of Nottingham International College",
          country: "England",
          postcode: "NG7 2RU",
          latitude: 52.936614,
          longitude: -1.18682
        },
        "632a990a-8c6b-443b-8f1e-32ee262754f0" => {
          provider_name: "Kaplan International Colleges U.K. Limited",
          ukprn: "10082570",
          instid: "0422",
          name: "University of West England, Bristol's Internationa",
          country: "England",
          postcode: "BS16 1QY",
          latitude: 51.501079,
          longitude: -2.547458
        },
        "47d1e510-752c-4ef9-a7a2-b661cb13062b" => {
          provider_name: "Kaplan Open Learning (Essex) Limited",
          ukprn: "10021682",
          instid: "0300",
          name: "Entire HEP",
          country: "England",
          postcode: "LS1 5AT",
          latitude: 53.796527,
          longitude: -1.544559
        },
        "b3622347-6f09-4ea8-bae5-a5b52614dedf" => {
          provider_name: "Keele University",
          ukprn: "10007767",
          instid: "0121",
          name: "Entire HEP",
          country: "England",
          postcode: "ST5 5BG",
          latitude: 53.003262,
          longitude: -2.273581
        },
        "b88f2518-61bb-4b65-b93a-01511edf0d4b" => {
          provider_name: "Kendal College",
          ukprn: "10003558",
          instid: "1100",
          name: "Main campus",
          country: "England",
          postcode: "LA9 5AY",
          latitude: 54.318001,
          longitude: -2.747034
        },
        "4d8753a1-8d0f-4550-9cae-7022646b632b" => {
          provider_name: "Kensington and Chelsea College",
          ukprn: "10003564",
          instid: "1145",
          name: "Main campus",
          country: "England",
          postcode: "SW10 0QS",
          latitude: 51.482012,
          longitude: -0.185989
        },
        "72f94036-73d2-4ef1-bab1-b987fb631381" => {
          provider_name: "Kensington College of Business",
          ukprn: "10003566",
          instid: "0237",
          name: "Main campus",
          country: "England",
          postcode: "W1G 9DJ",
          latitude: 51.517372,
          longitude: -0.144222
        },
        "0102a0ee-dd3c-4a01-aa3c-c94f5b2d7b72" => {
          provider_name: "Kent Institute of Art and Design",
          ukprn: "10003574",
          instid: "0020",
          name: "Main campus",
          country: "England",
          postcode: "ME16 8AG",
          latitude: 0.49798,
          longitude: 51.271232
        },
        "0514a5e7-c140-43d0-9f16-f4ff7fb96272" => {
          provider_name: "King Edward VI College Nuneaton",
          ukprn: "10003624",
          instid: "1131",
          name: "Main campus",
          country: "England",
          postcode: "CV11 4BE",
          latitude: 52.52217,
          longitude: -1.461657
        },
        "6f7fb6ba-a24b-4d8f-9350-f0c4d801cdba" => {
          provider_name: "King's College London",
          ukprn: "10003645",
          instid: "0134",
          name: "Main campus",
          country: "England",
          postcode: "WC2R 2LS",
          latitude: 51.511612,
          longitude: -0.116253
        },
        "3c137f3a-d34e-441d-9f54-ae4300b052e0" => {
          provider_name: "King's College London",
          ukprn: "10003645",
          instid: "0134",
          name: "Shrivenham",
          country: "England",
          postcode: "SN6 8LA",
          latitude: 51.6051,
          longitude: -1.636715
        },
        "b6a313b7-001b-489a-9f6c-5b0e68bcb243" => {
          provider_name: "Kingston Maurward College",
          ukprn: "10003676",
          instid: "1099",
          name: "Main campus",
          country: "England",
          postcode: "DT2 8PY",
          latitude: 50.71831,
          longitude: -2.404574
        },
        "d968e19a-9511-4a99-a47a-bfe9c21d0171" => {
          provider_name: "Kingston University",
          ukprn: "10003678",
          instid: "0063",
          name: "Entire HEP",
          country: "England",
          postcode: "KT1 2EE",
          latitude: 51.403273,
          longitude: -0.303163
        },
        "0a0ed6ad-6760-49d9-8de7-30081b6efedd" => {
          provider_name: "Kirklees College",
          ukprn: "10003189",
          instid: "1098",
          name: "Main campus",
          country: "England",
          postcode: "HD1 3LD",
          latitude: 53.641502,
          longitude: -1.786329
        },
        "555bf674-d304-434b-95a9-1d73598f110c" => {
          provider_name: "KLC School of Design",
          ukprn: "10008325",
          instid: "0301",
          name: "Entire HEP",
          country: "England",
          postcode: "SW10 0XF",
          latitude: 51.476339,
          longitude: -0.182695
        },
        "8bd26199-7058-4a31-b3b7-aefc65ebcf31" => {
          provider_name: "Kogan Academy of Dramatic Arts",
          ukprn: "10009285",
          instid: "0302",
          name: "Main campus",
          country: "England",
          postcode: "N19 5SS",
          latitude: 51.564153,
          longitude: -0.131338
        },
        "e612bb6e-ed21-4e4f-8b73-9d1665e23ddc" => {
          provider_name: "Laine Theatre Arts",
          ukprn: "10003746",
          instid: "0471",
          name: "Main campus",
          country: "England",
          postcode: "KT17 1HH",
          latitude: 51.334774,
          longitude: -0.263728
        },
        "ce3b5906-12f8-45b6-b179-ce3a0f1f5f64" => {
          provider_name: "Lakes College West Cumbria",
          ukprn: "10003753",
          instid: "1097",
          name: "Main campus",
          country: "England",
          postcode: "CA14 4JN",
          latitude: 54.606042,
          longitude: -3.531755
        },
        "5ba0859b-9e30-4a07-bf29-ada11bc4b9f7" => {
          provider_name: "LAMDA Limited",
          ukprn: "10003758",
          instid: "0401",
          name: "Entire HEP",
          country: "England",
          postcode: "W14 9DA",
          latitude: 51.490551,
          longitude: -0.21395
        },
        "45091516-9a68-4789-aa22-a670a474778f" => {
          provider_name: "Lancaster and Morecambe College",
          ukprn: "10003768",
          instid: "1086",
          name: "Main campus",
          country: "England",
          postcode: "LA1 2TY",
          latitude: 54.06264,
          longitude: -2.826276
        },
        "d9237491-921d-42c6-9dd0-324ef7c4abc2" => {
          provider_name: "LCCM AU UK Limited",
          ukprn: "10066551",
          instid: "0356",
          name: "Main campus",
          country: "England",
          postcode: "RH10 1JA",
          latitude: 51.112273,
          longitude: -0.185029
        },
        "556c3dfc-8778-4e72-bb70-20e6089d6c93" => {
          provider_name: "Le Cordon Bleu Limited",
          ukprn: "10003798",
          instid: "0362",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1A 2LS",
          latitude: 51.518829,
          longitude: -0.123854
        },
        "daf5f441-4caa-47c1-89f5-e34db16069ed" => {
          provider_name: "Leeds Arts University",
          ukprn: "10003854",
          instid: "0211",
          name: "Entire HEP",
          country: "England",
          postcode: "LS2 9AQ",
          latitude: 53.808429,
          longitude: -1.551775
        },
        "83a116fb-834d-44f4-b895-e6668a3dab50" => {
          provider_name: "Leeds Beckett University",
          ukprn: "10003861",
          instid: "0064",
          name: "Entire HEP",
          country: "England",
          postcode: "LS1 3HE",
          latitude: 53.80402,
          longitude: -1.548578
        },
        "0960e8a6-f9a6-4d57-a54d-287ddc237663" => {
          provider_name: "Leeds Beckett University",
          ukprn: "10003861",
          instid: "0064",
          name: "Harrogate College",
          country: "England",
          postcode: "HG2 8QT",
          latitude: 53.977472,
          longitude: -1.521854
        },
        "b2393954-7bed-4c63-951c-5a1210b96a7a" => {
          provider_name: "Leeds City College",
          ukprn: "10024962",
          instid: "1096",
          name: "Main campus",
          country: "England",
          postcode: "LS3 1AA",
          latitude: 53.800447,
          longitude: -1.559012
        },
        "d9592909-19a4-48f4-8e58-49d9535cbf3c" => {
          provider_name: "Leeds College of Building",
          ukprn: "10003855",
          instid: "1095",
          name: "Main campus",
          country: "England",
          postcode: "LS2 7QT",
          latitude: 53.802946,
          longitude: -1.535223
        },
        "78d2de3f-f25c-48ff-a6ea-89311aec1478" => {
          provider_name: "Leeds College of Music",
          ukprn: "10003856",
          instid: "0207",
          name: "Entire institution",
          country: "England",
          postcode: "LS2 7PD",
          latitude: 53.79823,
          longitude: -1.531252
        },
        "e09dcb02-2c90-42f9-ae80-9035cf88e654" => {
          provider_name: "Leeds Conservatoire",
          ukprn: "10034449",
          instid: "0351",
          name: "Entire HEP",
          country: "England",
          postcode: "LS2 7PD",
          latitude: 53.79823,
          longitude: -1.531252
        },
        "f1c2ed77-65db-4731-9727-3b30f8c2a2d7" => {
          provider_name: "Leeds Trinity University",
          ukprn: "10003863",
          instid: "0040",
          name: "Entire HEP",
          country: "England",
          postcode: "LS18 5HD",
          latitude: 53.84878,
          longitude: -1.64735
        },
        "c404ffc9-0d5e-44bd-9dc8-3e9f8ceb3793" => {
          provider_name: "Leicester College",
          ukprn: "10003867",
          instid: "1094",
          name: "Main campus",
          country: "England",
          postcode: "LE2 7LW",
          latitude: 52.622482,
          longitude: -1.133165
        },
        "6fae3773-bad3-4f4e-a95c-5049cf8327e2" => {
          provider_name: "Lincoln Bishop University",
          ukprn: "10007811",
          instid: "0007",
          name: "Entire HEP",
          country: "England",
          postcode: "LN1 3DY",
          latitude: 53.243563,
          longitude: -0.537139
        },
        "16d3b4c4-a602-4d59-b45b-f0f8adc46d55" => {
          provider_name: "Lincoln College",
          ukprn: "10003928",
          instid: "1092",
          name: "Main campus",
          country: "England",
          postcode: "LN2 5HQ",
          latitude: 53.231358,
          longitude: -0.532657
        },
        "e6de2644-af3a-487c-84b3-0d7024406a74" => {
          provider_name: "Liverpool Hope University",
          ukprn: "10003956",
          instid: "0023",
          name: "Entire HEP",
          country: "England",
          postcode: "L16 9JD",
          latitude: 53.391527,
          longitude: -2.891907
        },
        "d444aaf6-5e85-4f5b-9358-36383369f275" => {
          provider_name: "Liverpool Hope University",
          ukprn: "10003956",
          instid: "0023",
          name: "Everton",
          country: "England",
          postcode: "L3 8QB",
          latitude: 53.413428,
          longitude: -2.9689
        },
        "36e8e073-626c-4f49-a03a-ccbd4c359191" => {
          provider_name: "Liverpool John Moores University",
          ukprn: "10003957",
          instid: "0065",
          name: "Entire HEP",
          country: "England",
          postcode: "L3 5AH",
          latitude: 53.406561,
          longitude: -2.975332
        },
        "8a816113-f1d2-409a-be6d-e9a1f1b8f9f4" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "DRC",
          country: "Congo (Democratic Republic) [Congo (The Democratic Republic of the)]",
          latitude: 53.408563,
          longitude: -2.969135
        },
        "5db7b7e8-1d59-417c-9ae4-8f1e98cb6099" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "LSTM Kenya",
          country: "Kenya",
          latitude: 53.408563,
          longitude: -2.969135
        },
        "f252c0dc-b90a-49e5-9c53-3401048f3c26" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "LSTM Malawi",
          country: "Malawi",
          latitude: 53.408563,
          longitude: -2.969135
        },
        "62d20b45-fc3d-459c-8102-c69d0af30a74" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "LSTM MLW Lilongwe",
          country: "Malawi",
          latitude: 53.408563,
          longitude: -2.969135
        },
        "aa4d4356-babf-49ff-8786-798b619cf0d7" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "LSTM Nigeria",
          country: "Nigeria",
          latitude: 53.408563,
          longitude: -2.969135
        },
        "f8a361a7-8c0d-4b76-ada7-4b7caa99516b" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "LSTM Sierra Leone",
          country: "Sierra Leone",
          latitude: 53.408563,
          longitude: -2.969135
        },
        "95873a51-16c0-40e7-856a-8e7e66b4f684" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "Main campus",
          country: "England",
          postcode: "L3 5QA",
          latitude: 53.408563,
          longitude: -2.969135
        },
        "ca8421b8-a0dd-4eb8-86ee-1cd672421294" => {
          provider_name: "Liverpool School of Tropical Medicine",
          ukprn: "10003958",
          instid: "0228",
          name: "Uganda",
          country: "Uganda",
          latitude: 53.408563,
          longitude: -2.969135
        },
        "bca33fc3-8ec0-4239-b978-6500df6bba61" => {
          provider_name: "LMA",
          ukprn: "10031239",
          instid: "0458",
          name: "Main campus",
          country: "England",
          postcode: "L1 6DA",
          latitude: 53.406773,
          longitude: -2.985747
        },
        "5357d260-00a4-42b7-a4f0-8f6725b37850" => {
          provider_name: "London Bridge Business Academy",
          ukprn: "10013109",
          instid: "0282",
          name: "Entire HEP",
          country: "England",
          postcode: "EC1M 3JB",
          latitude: 51.520419,
          longitude: -0.106307
        },
        "cae81cba-e6b0-4234-9529-f5a8be1919d0" => {
          provider_name: "London Brookes College",
          ukprn: "10065543",
          instid: "1202",
          name: "Main campus",
          country: "England",
          postcode: "NW4 4AP",
          latitude: 51.586511,
          longitude: -0.229868
        },
        "ef8c216c-059d-4d64-8468-20575e8310a9" => {
          provider_name: "London Business School",
          ukprn: "10007769",
          instid: "0135",
          name: "Dubai campus",
          country: "United Arab Emirates",
          latitude: 51.526581,
          longitude: -0.161378
        },
        "e1df9b64-14d3-4814-8a40-d111c27189a9" => {
          provider_name: "London Business School",
          ukprn: "10007769",
          instid: "0135",
          name: "Main campus",
          country: "England",
          postcode: "NW1 4SA",
          latitude: 51.526581,
          longitude: -0.161378
        },
        "b6321367-3272-453b-aac5-a2dea244d192" => {
          provider_name: "London Centre of Contemporary Music",
          ukprn: "10004006",
          instid: "0277",
          name: "Main campus",
          country: "England",
          postcode: "SE1 1TD",
          latitude: 51.504046,
          longitude: -0.09436
        },
        "dcae18b7-b583-475d-95e0-633844ae1d87" => {
          provider_name: "London Churchill College Ltd",
          ukprn: "10030391",
          instid: "0250",
          name: "Barclay hall",
          country: "England",
          postcode: "E7 8JQ",
          latitude: 51.542945,
          longitude: 0.032242
        },
        "aa63aebe-dcfc-43ef-8446-28f3ff1215ba" => {
          provider_name: "London Churchill College Ltd",
          ukprn: "10030391",
          instid: "0250",
          name: "Main campus",
          country: "England",
          postcode: "E7 8JQ",
          latitude: 51.542945,
          longitude: 0.032242
        },
        "f1e84f3b-1e6a-49b9-929b-8d209cc7123a" => {
          provider_name: "London College of Business Sciences",
          ukprn: "10041974",
          instid: "0338",
          name: "Main campus",
          country: "England",
          postcode: "E16 1AH",
          latitude: 51.505982,
          longitude: 0.015769
        },
        "c00e2d87-f507-40cd-be65-7ee7742f25dd" => {
          provider_name: "London College of Business Studies",
          ukprn: "10019368",
          instid: "0255",
          name: "Main campus",
          country: "England",
          postcode: "IG1 4TG",
          latitude: 51.564185,
          longitude: 0.066259
        },
        "f4cfc100-fd93-4dda-892b-942f129ae950" => {
          provider_name: "London College of Creative Media Limited",
          ukprn: "10057951",
          instid: "0340",
          name: "Main campus",
          country: "England",
          postcode: "SE1 1TD",
          latitude: 51.504046,
          longitude: -0.09436
        },
        "4e811b4f-de94-43f0-84ec-77875f637518" => {
          provider_name: "London College of International Business Studies Ltd",
          ukprn: "10004023",
          instid: "0355",
          name: "Main campus",
          country: "England",
          postcode: "SE16 2XU",
          latitude: 51.49677,
          longitude: -0.051054
        },
        "79b41478-d21b-40ad-a211-9da0d447c377" => {
          provider_name: "London Film School Limited",
          ukprn: "10004036",
          instid: "0304",
          name: "Entire HEP",
          country: "England",
          postcode: "WC2H 9UB",
          latitude: 51.513549,
          longitude: -0.125454
        },
        "a9fa0408-2790-4442-836d-08d05f6ff22d" => {
          provider_name: "London Metropolitan University",
          ukprn: "10004048",
          instid: "0202",
          name: "Entire HEP",
          country: "England",
          postcode: "N7 8DB",
          latitude: 51.551471,
          longitude: -0.110381
        },
        "cc682f37-76f7-439e-b861-2ea9b892984a" => {
          provider_name: "London Metropolitan University",
          ukprn: "10004048",
          instid: "0202",
          name: "London City campus",
          country: "England",
          postcode: "EC3N 2EY",
          latitude: 51.51307,
          longitude: -0.076444
        },
        "bad5d98e-3623-4f1e-a939-04cb8fcf52b3" => {
          provider_name: "London Metropolitan University",
          ukprn: "10004048",
          instid: "0202",
          name: "London North campus",
          country: "England",
          postcode: "N7 8DB",
          latitude: 51.551471,
          longitude: -0.110381
        },
        "572f45a2-f908-40e7-88b7-fb8f92e93308" => {
          provider_name: "London School of Academics Ltd",
          ukprn: "10032594",
          instid: "0276",
          name: "Entire HEP",
          country: "England",
          postcode: "RM13 8EU",
          latitude: 51.517691,
          longitude: 0.171971
        },
        "88472870-6f7c-4e13-88dd-3e1fb6d214bd" => {
          provider_name: "London School of Business and Finance (UK) Limited",
          ukprn: "10004060",
          instid: "0279",
          name: "Main campus",
          country: "England",
          postcode: "EC1N 2LL",
          latitude: 51.517955,
          longitude: -0.11086
        },
        "108f7bc2-9a27-4869-b5b6-00356bf547b5" => {
          provider_name: "London School of Commerce & IT Limited",
          ukprn: "10023434",
          instid: "0328",
          name: "Entire HEP",
          country: "England",
          postcode: "E1 1EJ",
          latitude: 51.516058,
          longitude: -0.065569
        },
        "dcc19299-a9e8-41c6-b861-17fcedb77851" => {
          provider_name: "London School of Commerce & IT Limited",
          ukprn: "10023434",
          instid: "0328",
          name: "London School of Commerce & IT Limited",
          country: "England",
          postcode: "E1 1EJ",
          latitude: 51.516058,
          longitude: -0.065569
        },
        "dc3f4bb0-7441-47af-872a-6d2a8c91efb0" => {
          provider_name: "London School of Economics and Political Science",
          ukprn: "10004063",
          instid: "0137",
          name: "Entire HEP",
          country: "England",
          postcode: "WC2A 2AE",
          latitude: 51.514114,
          longitude: -0.116971
        },
        "802855ad-0608-42ed-a387-420c2b27d92b" => {
          provider_name: "London School of Hygiene and Tropical Medicine",
          ukprn: "10007771",
          instid: "0138",
          name: "Gambia",
          country: "Gambia, The",
          latitude: 51.520925,
          longitude: -0.130687
        },
        "cf807543-5d79-4310-b050-89487f12a9d7" => {
          provider_name: "London School of Hygiene and Tropical Medicine",
          ukprn: "10007771",
          instid: "0138",
          name: "Main campus",
          country: "England",
          postcode: "WC1E 7HT",
          latitude: 51.520925,
          longitude: -0.130687
        },
        "66315625-700c-4468-9c51-5a1ee06d4cbd" => {
          provider_name: "London School of Hygiene and Tropical Medicine",
          ukprn: "10007771",
          instid: "0138",
          name: "Uganda",
          country: "Uganda",
          latitude: 51.520925,
          longitude: -0.130687
        },
        "a322aa2d-1e0d-4fdf-b69a-ff4d99c64298" => {
          provider_name: "London School of Innovation Ltd",
          ukprn: "10091282",
          instid: "0472",
          name: "Main campus",
          country: "England",
          postcode: "SM1 2GD",
          latitude: 51.360512,
          longitude: -0.194771
        },
        "bbaa13ed-e773-40da-b452-a53024752222" => {
          provider_name: "London School of Jewish Studies",
          ukprn: "10029147",
          instid: "0464",
          name: "Main campus",
          country: "England",
          postcode: "NW4 2SJ",
          latitude: 51.588217,
          longitude: -0.213706
        },
        "593eadbe-0dac-4abd-80c8-013ee8ba6392" => {
          provider_name: "London School of Management Education",
          ukprn: "10022285",
          instid: "0256",
          name: "Entire HEP",
          country: "England",
          postcode: "IG2 6EY",
          latitude: 51.574883,
          longitude: 0.066035
        },
        "f75ed0e8-4ee3-4578-b6ac-c2ca425f8bcb" => {
          provider_name: "London School of Science and Technology Limited",
          ukprn: "10008362",
          instid: "0227",
          name: "Main campus",
          country: "England",
          postcode: "HA0 1EH",
          latitude: 51.539828,
          longitude: -0.301673
        },
        "5fe848d9-eea1-4dcb-a80c-39d3620c991c" => {
          provider_name: "London School of Theology",
          ukprn: "10004075",
          instid: "0257",
          name: "Entire HEP",
          country: "England",
          postcode: "HA6 2UW",
          latitude: 51.612946,
          longitude: -0.43175
        },
        "92595db1-9599-42f7-a9b8-48b70f23f12d" => {
          provider_name: "London South Bank University",
          ukprn: "10004078",
          instid: "0076",
          name: "Entire HEP",
          country: "England",
          postcode: "SE1 0AA",
          latitude: 51.498708,
          longitude: -0.101772
        },
        "6e206496-0e8c-48c0-8dd9-ad834f620cb8" => {
          provider_name: "London Studio Centre",
          ukprn: "10004079",
          instid: "0274",
          name: "Entire HEP",
          country: "England",
          postcode: "N12 0GA",
          latitude: 51.612964,
          longitude: -0.176294
        },
        "c3bef48c-0938-4ff2-a7d9-ddaeceed0a25" => {
          provider_name: "Loughborough College",
          ukprn: "10004112",
          instid: "1091",
          name: "Main campus",
          country: "England",
          postcode: "LE11 3BT",
          latitude: 52.767512,
          longitude: -1.220321
        },
        "d4ad1e73-6a0e-417a-89f6-f09c60e3bb96" => {
          provider_name: "Loughborough University",
          ukprn: "10004113",
          instid: "0152",
          name: "London Campus",
          country: "England",
          postcode: "E15 2GZ",
          latitude: 51.548246,
          longitude: -0.024755
        },
        "ef1d3313-a6cf-432b-84c9-1d6b9d4f1c8c" => {
          provider_name: "Loughborough University",
          ukprn: "10004113",
          instid: "0152",
          name: "Main campus",
          country: "England",
          postcode: "LE11 3TU",
          latitude: 52.764828,
          longitude: -1.22952
        },
        "b593c0b8-dbe5-487d-a817-15efe4185fba" => {
          provider_name: "Loughborough University",
          ukprn: "10004113",
          instid: "0152",
          name: "Singapore campus",
          country: "Singapore",
          latitude: 52.764828,
          longitude: -1.22952
        },
        "f7666ca9-6737-43d2-a3bd-d4f6f2b96df4" => {
          provider_name: "LTE Group",
          ukprn: "10023139",
          instid: "1090",
          name: "Main campus",
          country: "England",
          postcode: "M11 2WH",
          latitude: 53.471845,
          longitude: -2.187628
        },
        "2fac4ad6-fe44-4a69-b762-617692065218" => {
          provider_name: "Luther King House Educational Trust",
          ukprn: "10009612",
          instid: "0306",
          name: "Entire HEP",
          country: "England",
          postcode: "M14 5JP",
          latitude: 53.449904,
          longitude: -2.219182
        },
        "1001db57-bc2c-47ee-b6d0-55fa4e78b4fc" => {
          provider_name: "Macclesfield College",
          ukprn: "10004144",
          instid: "1089",
          name: "Main campus",
          country: "England",
          postcode: "SK11 8LF",
          latitude: 53.251493,
          longitude: -2.138236
        },
        "6ee37f2e-7e47-4a86-9de3-ef6483217321" => {
          provider_name: "Matrix College of Counselling and Psychotherapy Ltd",
          ukprn: "10023453",
          instid: "0320",
          name: "Entire HEP",
          country: "England",
          postcode: "NR18 0GU",
          latitude: 52.570444,
          longitude: 1.110958
        },
        "1a7aaa4b-5678-405c-8fd8-90a684044aec" => {
          provider_name: "Medway School of Pharmacy",
          ukprn: "99999997",
          instid: "7004",
          name: "Main campus",
          country: "England",
          postcode: "ME4 4TB",
          latitude: 51.397233,
          longitude: 0.539388
        },
        "9a5b6924-6fb0-4e90-b463-ed660a3dd5df" => {
          provider_name: "Met Film School Limited",
          ukprn: "10045476",
          instid: "0272",
          name: "Berlin",
          country: "Germany",
          latitude: 51.50881,
          longitude: -0.307005
        },
        "34191ef8-f02b-495b-9797-360e8c71ae7e" => {
          provider_name: "Met Film School Limited",
          ukprn: "10045476",
          instid: "0272",
          name: "Main campus",
          country: "England",
          postcode: "W5 5EP",
          latitude: 51.50881,
          longitude: -0.307005
        },
        "99ccdaaf-3647-43c5-91b9-2d7dc9571afd" => {
          provider_name: "Middlesbrough College",
          ukprn: "10004344",
          instid: "1185",
          name: "Main campus",
          country: "England",
          postcode: "TS2 1AD",
          latitude: 54.579944,
          longitude: -1.226811
        },
        "84283609-7514-4eca-b904-b457aff47339" => {
          provider_name: "Middlesex University",
          ukprn: "10004351",
          instid: "0067",
          name: "Dubai",
          country: "United Arab Emirates",
          latitude: 51.589833,
          longitude: -0.228945
        },
        "299062d8-362e-475c-b87d-25f54f015074" => {
          provider_name: "Middlesex University",
          ukprn: "10004351",
          instid: "0067",
          name: "Main campus",
          country: "England",
          postcode: "NW4 4BT",
          latitude: 51.589833,
          longitude: -0.228945
        },
        "188e9e57-2ab9-49b5-97d3-f93c5fa343b7" => {
          provider_name: "Middlesex University",
          ukprn: "10004351",
          instid: "0067",
          name: "Malta",
          country: "Malta",
          latitude: 51.589833,
          longitude: -0.228945
        },
        "93f384e2-fb6c-4988-9a79-48fcc1da6c72" => {
          provider_name: "Middlesex University",
          ukprn: "10004351",
          instid: "0067",
          name: "Mauritius",
          country: "Mauritius",
          latitude: 51.589833,
          longitude: -0.228945
        },
        "a080949f-7678-452f-844a-2b561fee4188" => {
          provider_name: "Mid-Kent College",
          ukprn: "10004340",
          instid: "1087",
          name: "Main campus",
          country: "England",
          postcode: "ME7 1FN",
          latitude: 51.393598,
          longitude: 0.541529
        },
        "bed0608a-36dc-477a-af7f-81db9596c433" => {
          provider_name: "Millennium Performing Arts Ltd",
          ukprn: "10004365",
          instid: "0339",
          name: "Main campus",
          country: "England",
          postcode: "SE18 6HU",
          latitude: 51.490547,
          longitude: 0.066039
        },
        "82aa449e-da4f-4d83-a6e6-71cd15433436" => {
          provider_name: "Milton Keynes College",
          ukprn: "10004375",
          instid: "1088",
          name: "Main campus",
          country: "England",
          postcode: "MK6 5LP",
          latitude: 52.027987,
          longitude: -0.752148
        },
        "89ec5763-e631-4439-8dc8-1db87814899f" => {
          provider_name: "Missio Dei",
          ukprn: "10020416",
          instid: "0225",
          name: "Entire HEP",
          country: "England",
          postcode: "M3 7BE",
          latitude: 53.484297,
          longitude: -2.253974
        },
        "653214c3-5c97-41f3-9b88-947abf30e792" => {
          provider_name: "MLA College",
          ukprn: "10049370",
          instid: "0440",
          name: "MLA College Ltd",
          country: "England",
          postcode: "PL1 2AX",
          latitude: 50.368792,
          longitude: -4.139102
        },
        "1fe800b8-7bd8-4c77-a234-b0ad5f4ae813" => {
          provider_name: "Mont Rose College of Management and Sciences Limited",
          ukprn: "10023777",
          instid: "0246",
          name: "Entire HEP",
          country: "England",
          postcode: "IG2 6NQ",
          latitude: 51.576272,
          longitude: 0.064279
        },
        "a5f6a45b-7bd3-4c08-984b-45eb5b306daa" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "Main campus",
          country: "England",
          postcode: "BH23 7AT",
          latitude: 50.770543,
          longitude: -1.777002
        },
        "7d3599a3-879d-420f-950b-87a84e21e2df" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "Midlands",
          country: "England",
          postcode: "B29 6QX",
          latitude: 52.43599,
          longitude: -1.948591
        },
        "93b67d75-5958-4d15-b0fd-a3dbd5306202" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "Midlands",
          country: "England",
          postcode: "B61 0RA",
          latitude: 52.394642,
          longitude: -2.048252
        },
        "b7ced9d4-4123-4f4b-a41e-7af90f057511" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "Northern Ireland",
          country: "Northern Ireland",
          postcode: "BT12 7DY",
          latitude: 54.597514,
          longitude: -5.974878
        },
        "81c05569-82e9-47c1-904c-466a932e4b07" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "South West",
          country: "England",
          postcode: "EX35 6JJ",
          latitude: 51.227829,
          longitude: -3.866307
        },
        "4d4f200b-8ed6-439b-b338-34aa180e529e" => {
          provider_name: "Moorlands College",
          ukprn: "10023454",
          instid: "0221",
          name: "South West",
          country: "England",
          postcode: "TQ1 4SF",
          latitude: 50.501507,
          longitude: -3.525357
        },
        "cdd0bfde-b7ee-4cbd-8c2d-79219a59c182" => {
          provider_name: "Morley College Limited",
          ukprn: "10004432",
          instid: "1189",
          name: "Main campus",
          country: "England",
          postcode: "SE1 7HT",
          latitude: 51.497878,
          longitude: -0.109976
        },
        "a6f8e1cf-e16f-40ed-a7e3-1704d1c53bd7" => {
          provider_name: "Moulton College",
          ukprn: "10004442",
          instid: "1085",
          name: "Main campus",
          country: "England",
          postcode: "NN3 7RR",
          latitude: 52.289955,
          longitude: -0.857756
        },
        "172d38c2-b04f-4e38-ae4e-8e20bd0101c9" => {
          provider_name: "Mountview Academy of Theatre Arts",
          ukprn: "10004450",
          instid: "0239",
          name: "Entire HEP",
          country: "England",
          postcode: "SE15 5JT",
          latitude: 51.475175,
          longitude: -0.069312
        },
        "06fd35b9-be59-4a2f-a010-1bc1e4396d96" => {
          provider_name: "Multiverse",
          ukprn: "10055902",
          instid: "0447",
          name: "Main campus",
          country: "England",
          postcode: "W1U 6RL",
          latitude: 51.520362,
          longitude: -0.156948
        },
        "af641463-95df-4122-a460-e4fe4b9c8047" => {
          provider_name: "Myerscough College",
          ukprn: "10004478",
          instid: "1084",
          name: "Main campus",
          country: "England",
          postcode: "PR3 0RY",
          latitude: 53.853081,
          longitude: -2.763081
        },
        "36607307-791e-4f22-9d38-7ae043efd1ac" => {
          provider_name: "National Centre for Circus Arts",
          ukprn: "10001444",
          instid: "0445",
          name: "Main campus",
          country: "England",
          postcode: "N1 6HD",
          latitude: 51.527295,
          longitude: -0.082419
        },
        "4f5ecc1d-1568-491b-92ea-b43ef793813b" => {
          provider_name: "National Institute of Teaching",
          ukprn: "10090839",
          instid: "0470",
          name: "Main campus",
          country: "England",
          postcode: "WF1 2PF",
          latitude: 53.707715,
          longitude: -1.512461
        },
        "304adc78-85f6-43c8-82c5-dac092301e4b" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "BCUIC",
          country: "England",
          postcode: "B5 5JU",
          latitude: 52.481921,
          longitude: -1.888824
        },
        "0e90ea05-ce4d-4ecb-9808-207519de7005" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "CRIC",
          country: "England",
          postcode: "CM1 1SQ",
          latitude: 51.741381,
          longitude: 0.474495
        },
        "89393f6b-5262-44a2-9c17-285ba2f48b08" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "HIC",
          country: "England",
          postcode: "AL10 9AB",
          latitude: 51.752882,
          longitude: -0.242179
        },
        "abe15532-2f88-45fa-9311-9bcdcd39314a" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "ICP",
          country: "England",
          postcode: "PO1 2PR",
          latitude: 50.795721,
          longitude: -1.095364
        },
        "bf5c4223-57da-4f30-8925-f0dafb563894" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "ICRGU",
          country: "Scotland",
          postcode: "AB10 7QE",
          latitude: 57.118925,
          longitude: -2.13878
        },
        "13fa3372-8e36-4e52-85b6-66beeb83433f" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "LGSC",
          country: "England",
          postcode: "LE1 1SW",
          latitude: 52.632453,
          longitude: -1.125861
        },
        "6a735b03-73ef-450c-b6f8-5bd2f36e0eba" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "Main campus",
          country: "England",
          postcode: "UB8 3PH",
          latitude: 51.532838,
          longitude: -0.472856
        },
        "fe87fbf4-2bce-42ae-afc0-6f0cb74dbdf3" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "TCSU",
          country: "Wales",
          postcode: "SA1 8EN",
          latitude: 51.6188,
          longitude: -3.879405
        },
        "e2934614-ebe7-4cdc-b205-a13c9b60983d" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "UNIC",
          country: "England",
          postcode: "NN2 6JD",
          latitude: 52.252077,
          longitude: -0.890693
        },
        "5d87e29f-7cae-4e9f-8ba7-18f40676fd31" => {
          provider_name: "Navitas UK Holdings Limited",
          ukprn: "10053304",
          instid: "0413",
          name: "UPIC",
          country: "England",
          postcode: "PL4 6DX",
          latitude: 50.376003,
          longitude: -4.141199
        },
        "47f8202e-61b6-4c61-933f-66e0d5a6be82" => {
          provider_name: "Nazarene Theological College",
          ukprn: "10004538",
          instid: "0240",
          name: "Entire HEP",
          country: "England",
          postcode: "M20 2GU",
          latitude: 53.416415,
          longitude: -2.239922
        },
        "a72ab1f4-2cd7-4286-a6c4-43336103e512" => {
          provider_name: "NCG",
          ukprn: "10004599",
          instid: "1078",
          name: "Main campus",
          country: "England",
          postcode: "NE4 7SA",
          latitude: 54.966418,
          longitude: -1.627186
        },
        "d89eb90c-c76d-4455-9956-143c6bdd1d7e" => {
          provider_name: "Nelson and Colne College",
          ukprn: "10004552",
          instid: "1083",
          name: "Main campus",
          country: "England",
          postcode: "BB9 7YT",
          latitude: 53.84442,
          longitude: -2.221148
        },
        "dac98f41-9aa6-4c20-8c79-c30669bc1c2c" => {
          provider_name: "Nelson College London Ltd",
          ukprn: "10030129",
          instid: "0260",
          name: "Gants Hill Campus",
          country: "England",
          postcode: "IG2 6NQ",
          latitude: 51.576272,
          longitude: 0.064279
        },
        "fac9ced7-1ad2-4f68-aa4a-4e59785a0d72" => {
          provider_name: "Nelson College London Ltd",
          ukprn: "10030129",
          instid: "0260",
          name: "Main campus",
          country: "England",
          postcode: "IG1 1BA",
          latitude: 51.557886,
          longitude: 0.07167
        },
        "b3d06557-98a6-41c6-88fa-664f0c344f72" => {
          provider_name: "New City College",
          ukprn: "10006963",
          instid: "1081",
          name: "Main campus",
          country: "England",
          postcode: "E14 0AF",
          latitude: 51.508545,
          longitude: -0.016975
        },
        "df201342-3edb-4352-8c36-029a6b20ee73" => {
          provider_name: "New College Durham",
          ukprn: "10004576",
          instid: "1082",
          name: "Main campus",
          country: "England",
          postcode: "DH1 5ES",
          latitude: 54.795913,
          longitude: -1.594398
        },
        "92cd59ad-5b22-4014-94cf-6b18770a6ac5" => {
          provider_name: "New College Pontefract",
          ukprn: "10004578",
          instid: "1070",
          name: "Main campus",
          country: "England",
          postcode: "WF8 4QR",
          latitude: 53.694241,
          longitude: -1.324789
        },
        "3f387f39-980d-42a5-8018-49747b2c89d2" => {
          provider_name: "New College Stamford",
          ukprn: "10006303",
          instid: "1037",
          name: "Main campus",
          country: "England",
          postcode: "PE9 1XA",
          latitude: 52.658967,
          longitude: -0.471523
        },
        "19c9a820-d526-467c-a313-0988b7239f85" => {
          provider_name: "New College Swindon",
          ukprn: "10004579",
          instid: "1069",
          name: "Main campus",
          country: "England",
          postcode: "SN3 1AH",
          latitude: 51.557469,
          longitude: -1.758301
        },
        "63248a0d-7657-4895-b414-cd5080f1c954" => {
          provider_name: "New Model Institute for Technology and Engineering (NMITE)",
          ukprn: "10067406",
          instid: "0421",
          name: "",
          country: "England",
          postcode: "HR4 9HS",
          latitude: 52.059531,
          longitude: -2.716004
        },
        "96864bbd-0efb-4ae1-83a5-0bb25f60c9c0" => {
          provider_name: "New Model Institute for Technology and Engineering (NMITE)",
          ukprn: "10067406",
          instid: "0421",
          name: "Entire HEP",
          country: "England",
          postcode: "HR4 9HS",
          latitude: 52.059565,
          longitude: -2.716296
        },
        "2c2971b2-657a-488c-adbb-6e619222f1ae" => {
          provider_name: "Newbold College",
          ukprn: "10023456",
          instid: "0361",
          name: "Entire HEP",
          country: "England",
          postcode: "RG42 4AN",
          latitude: 51.424788,
          longitude: -0.785862
        },
        "cc64342f-8083-4c15-bf3f-a420a11d136f" => {
          provider_name: "Newbury College",
          ukprn: "10004596",
          instid: "1079",
          name: "Main campus",
          country: "England",
          postcode: "RG14 7TD",
          latitude: 51.382452,
          longitude: -1.322942
        },
        "bc116f7e-3d1f-4a17-8c0b-986ff08eaaf3" => {
          provider_name: "Newcastle and Stafford Colleges Group",
          ukprn: "10004603",
          instid: "1038",
          name: "Main campus",
          country: "England",
          postcode: "ST5 2GB",
          latitude: 53.015303,
          longitude: -2.237988
        },
        "6220ff7e-670a-42f3-9fd9-6f5855408f69" => {
          provider_name: "Newcastle University",
          ukprn: "10007799",
          instid: "0154",
          name: "Main campus",
          country: "England",
          postcode: "NE1 7RU",
          latitude: 54.98032,
          longitude: -1.615713
        },
        "235d2f94-5d1f-428a-bf2a-7276b3646302" => {
          provider_name: "Newcastle University",
          ukprn: "10007799",
          instid: "0154",
          name: "Newcastle University London",
          country: "England",
          postcode: "E1 7EZ",
          latitude: 51.516755,
          longitude: -0.076753
        },
        "b6907b70-c78e-4d67-9d20-711f8fea5953" => {
          provider_name: "Newcastle University",
          ukprn: "10007799",
          instid: "0154",
          name: "Newcastle University Medicine Malaysia (NUMED)",
          country: "Malaysia",
          latitude: 54.98032,
          longitude: -1.615713
        },
        "3cab241b-8059-40cd-abcc-0f379405b9b1" => {
          provider_name: "Newham College of Further Education",
          ukprn: "10004607",
          instid: "1077",
          name: "Main campus",
          country: "England",
          postcode: "E6 6ER",
          latitude: 51.531751,
          longitude: 0.054842
        },
        "37e1a2f4-03b5-49b0-b668-b137cb01171d" => {
          provider_name: "Norland College",
          ukprn: "10008397",
          instid: "0247",
          name: "Main campus",
          country: "England",
          postcode: "BA2 3LB",
          latitude: 51.376612,
          longitude: -2.374063
        },
        "c9a96334-bdf1-4cc2-bd60-f02aaedb548f" => {
          provider_name: "Norland College",
          ukprn: "10008397",
          instid: "0247",
          name: "Second Campus YP",
          country: "England",
          postcode: "BA1 6AE",
          latitude: 51.39157,
          longitude: -2.352224
        },
        "fc03d8b2-d9ed-4fb7-ac60-ab88fcfdf164" => {
          provider_name: "North East Surrey College of Technology (NESCOT)",
          ukprn: "10004686",
          instid: "1080",
          name: "Main campus",
          country: "England",
          postcode: "KT17 3DS",
          latitude: 51.342566,
          longitude: -0.244678
        },
        "021f7807-e0c7-49e1-90a6-6cbbb0df7443" => {
          provider_name: "North Hertfordshire College",
          ukprn: "10004690",
          instid: "1076",
          name: "Main campus",
          country: "England",
          postcode: "SG1 1LA",
          latitude: 51.896806,
          longitude: -0.199659
        },
        "9e417e65-f909-4438-a879-09029853057b" => {
          provider_name: "North Kent College",
          ukprn: "10004721",
          instid: "1075",
          name: "Main campus",
          country: "England",
          postcode: "DA1 2JT",
          latitude: 51.431954,
          longitude: 0.204027
        },
        "bb04e9b8-b189-44f0-997b-cba92c3f9d3f" => {
          provider_name: "North Shropshire College",
          ukprn: "10007299",
          instid: "1191",
          name: "Main campus",
          country: "England",
          postcode: "SY11 4QB",
          latitude: 52.853995,
          longitude: -3.038071
        },
        "4646d7d1-a2b3-4182-9844-5df600241f1c" => {
          provider_name: "North Warwickshire and South Leicestershire College",
          ukprn: "10004718",
          instid: "1018",
          name: "Main campus",
          country: "England",
          postcode: "CV11 6BH",
          latitude: 52.530296,
          longitude: -1.449838
        },
        "fc592f86-7b56-4356-94b5-535d5ae7f4a9" => {
          provider_name: "North West Regional College",
          ukprn: "10020634",
          instid: "0349",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT48 7AL",
          latitude: 55.002893,
          longitude: -7.324363
        },
        "af1a6eae-9649-46a0-b74a-de821e71d6c8" => {
          provider_name: "Northampton College",
          ukprn: "10007011",
          instid: "1074",
          name: "Main campus",
          country: "England",
          postcode: "NN3 3RF",
          latitude: 52.263024,
          longitude: -0.849348
        },
        "db65e6e7-6550-493f-b3d6-970bac14d94e" => {
          provider_name: "Northeastern University London",
          ukprn: "10048199",
          instid: "0330",
          name: "Entire HEP",
          country: "England",
          postcode: "E1W 1LP",
          latitude: 51.506075,
          longitude: -0.070543
        },
        "3a82c711-1a5f-4b26-9ee8-cabe5faccf27" => {
          provider_name: "Northern College of Acupuncture",
          ukprn: "10004740",
          instid: "0261",
          name: "Entire HEP",
          country: "England",
          postcode: "YO1 6LJ",
          latitude: 53.957108,
          longitude: -1.088156
        },
        "43074e98-f550-4072-96d7-6a7e7bb57f01" => {
          provider_name: "Northern Regional College",
          ukprn: "10020372",
          instid: "0346",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT43 7DF",
          latitude: 54.868177,
          longitude: -6.267912
        },
        "a5ab610f-563a-49de-8cdf-e18fa28e5c8e" => {
          provider_name: "Northern School of Contemporary Dance",
          ukprn: "10008816",
          instid: "0191",
          name: "Main campus",
          country: "England",
          postcode: "LS7 4BH",
          latitude: -1.533471,
          longitude: 53.813069
        },
        "a465965f-cd47-42c4-9886-715f733ea68e" => {
          provider_name: "Northumberland College",
          ukprn: "10004760",
          instid: "1024",
          name: "Main campus",
          country: "England",
          postcode: "NE63 9RG",
          latitude: 55.173252,
          longitude: -1.557403
        },
        "7f97da12-aa50-4759-bfc8-0a4125334b8b" => {
          provider_name: "Norwich University of the Arts",
          ukprn: "10004775",
          instid: "0190",
          name: "Entire HEP",
          country: "England",
          postcode: "NR2 4SN",
          latitude: 52.630494,
          longitude: 1.297272
        },
        "84f8b80e-b21d-4c66-a55a-6ef4dcab68b5" => {
          provider_name: "Nottingham College",
          ukprn: "10004577",
          instid: "1071",
          name: "Main campus",
          country: "England",
          postcode: "NG7 2RU",
          latitude: 52.936614,
          longitude: -1.18682
        },
        "101584ef-c0e4-4041-a513-369dc6e854be" => {
          provider_name: "Nova College of Accounting and Business Ltd",
          ukprn: "10023130",
          instid: "0319",
          name: "Main campus",
          country: "England",
          postcode: "HA0 1EH",
          latitude: 51.539828,
          longitude: -0.301673
        },
        "48ef9451-c673-4f58-bf80-08b84072a7c8" => {
          provider_name: "Oak Hill College",
          ukprn: "10010227",
          instid: "0313",
          name: "Entire HEP",
          country: "England",
          postcode: "N14 4PS",
          latitude: 51.64054,
          longitude: -0.14641
        },
        "0f239fce-b1b9-4fbc-bb75-cee98635576d" => {
          provider_name: "Oaklands College",
          ukprn: "10004835",
          instid: "1068",
          name: "Main campus",
          country: "England",
          postcode: "AL4 0JA",
          latitude: 51.755525,
          longitude: -0.288188
        },
        "80d9f8f0-95ac-4138-9587-45cbbfeb0b2c" => {
          provider_name: "Open College of the Arts",
          ukprn: "10004879",
          instid: "0307",
          name: "Main campus",
          country: "England",
          postcode: "S75 1JN",
          latitude: 53.567767,
          longitude: -1.505446
        },
        "4e69e9f5-a461-4886-a2ac-828b674a45c5" => {
          provider_name: "Oxford Brookes University",
          ukprn: "10004930",
          instid: "0072",
          name: "Main campus",
          country: "England",
          postcode: "OX3 0BP",
          latitude: 51.75438,
          longitude: -1.2232
        },
        "2e3c0226-1cfd-4516-be65-e15a89fa58e2" => {
          provider_name: "Oxford Brookes University",
          ukprn: "10004930",
          instid: "0072",
          name: "Swindon Campus",
          country: "England",
          postcode: "SN5 7XQ",
          latitude: 51.560588,
          longitude: -1.817428
        },
        "9e02100c-fecf-4e88-9029-02505ed84049" => {
          provider_name: "Oxford Business College",
          ukprn: "10020439",
          instid: "0308",
          name: "Main campus",
          country: "England",
          postcode: "OX1 2BQ",
          latitude: 51.753319,
          longitude: -1.26288
        },
        "126a6ea9-1ae1-4c11-9a44-43484133bbc3" => {
          provider_name: "Oxford International Education Group",
          ukprn: "10064423",
          instid: "0466",
          name: "Main campus",
          country: "England",
          postcode: "SE10 8NB",
          latitude: 51.478937,
          longitude: -0.011378
        },
        "93e9437a-697e-4af6-818a-309fc2a755b9" => {
          provider_name: "Paris Dauphine International",
          ukprn: "10066143",
          instid: "0441",
          name: "Entire HEP",
          country: "England",
          postcode: "N1 9HF",
          latitude: 51.532182,
          longitude: -0.108166
        },
        "3db13972-91a7-48c0-b38d-6af6502a8155" => {
          provider_name: "Peking University HSBC Business School UK Campus",
          ukprn: "10083464",
          instid: "0449",
          name: "Main campus",
          country: "England",
          postcode: "OX1 5HR",
          latitude: 51.715267,
          longitude: -1.291395
        },
        "b4d8e8e6-e51b-446e-93ef-f26d9b6c11fa" => {
          provider_name: "Peter Symonds College",
          ukprn: "10005072",
          instid: "1065",
          name: "Main campus",
          country: "England",
          postcode: "SO22 6RX",
          latitude: 51.070701,
          longitude: -1.321775
        },
        "c2ad7cba-155f-41f5-b4b3-578dda440cd1" => {
          provider_name: "Petroc",
          ukprn: "10004676",
          instid: "1060",
          name: "Main campus",
          country: "England",
          postcode: "EX31 2BQ",
          latitude: 51.072452,
          longitude: -4.069473
        },
        "adc350e2-8f2c-49a4-af86-d367de114493" => {
          provider_name: "Plumpton College",
          ukprn: "10005124",
          instid: "1064",
          name: "Main campus",
          country: "England",
          postcode: "BN7 3AE",
          latitude: 50.904998,
          longitude: -0.069286
        },
        "981c3e1b-280e-4c7d-ab0f-f739c7b02239" => {
          provider_name: "Point Blank Music School",
          ukprn: "10019178",
          instid: "0309",
          name: "Entire HEP",
          country: "England",
          postcode: "N1 5DL",
          latitude: 51.535935,
          longitude: -0.085055
        },
        "a3ddf4c1-dbbe-4789-a054-e7bfd252b14f" => {
          provider_name: "Preston College",
          ukprn: "10005200",
          instid: "1062",
          name: "Main campus",
          country: "England",
          postcode: "PR2 8UR",
          latitude: 53.783867,
          longitude: -2.700493
        },
        "b801abfd-9245-47e4-be9f-f7e9be08a4ab" => {
          provider_name: "Prospects College of Advanced Technology",
          ukprn: "10046354",
          instid: "1193",
          name: "Main campus",
          country: "England",
          postcode: "SS14 3AY",
          latitude: 51.581497,
          longitude: 0.449399
        },
        "8e02f90e-4f09-40ce-b95c-8555c4592113" => {
          provider_name: "Queen Margaret University, Edinburgh",
          ukprn: "10005337",
          instid: "0100",
          name: "Craighall",
          country: "Scotland",
          postcode: "EH21 6UU",
          latitude: 55.931281,
          longitude: -3.073057
        },
        "1f9d9e64-bfb1-4e6d-a56c-ec1aaf4c1b49" => {
          provider_name: "Queen Margaret University, Edinburgh",
          ukprn: "10005337",
          instid: "0100",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "EH21 6UU",
          latitude: 55.931281,
          longitude: -3.073057
        },
        "2fda7acd-f44d-4a35-81b3-3b7a2cea081d" => {
          provider_name: "Queen Margaret University, Edinburgh",
          ukprn: "10005337",
          instid: "0100",
          name: "Gateway",
          country: "Scotland",
          postcode: "EH7 4AH",
          latitude: 55.959798,
          longitude: -3.18232
        },
        "36c50561-0f28-432b-a3d2-232f68ceba39" => {
          provider_name: "Queen Margaret University, Edinburgh",
          ukprn: "10005337",
          instid: "0100",
          name: "Halmyre Street",
          country: "Scotland",
          postcode: "EH6 6QD",
          latitude: 55.976175,
          longitude: -3.16766
        },
        "66db7de5-5f7b-4079-9d17-c2641b561d58" => {
          provider_name: "Queen Margaret University, Edinburgh",
          ukprn: "10005337",
          instid: "0100",
          name: "Leith",
          country: "Scotland",
          postcode: "EH6 8HF",
          latitude: 55.969429,
          longitude: -3.167376
        },
        "3365fcd9-cb21-42e0-98ca-07c9b0ca0c9f" => {
          provider_name: "Queen Mary University of London",
          ukprn: "10007775",
          instid: "0139",
          name: "Charterhouse Square",
          country: "England",
          postcode: "EC1M 6BQ",
          latitude: 51.521313,
          longitude: -0.098872
        },
        "2a7eff08-8378-4b08-afb3-901c90c10884" => {
          provider_name: "Queen Mary University of London",
          ukprn: "10007775",
          instid: "0139",
          name: "Lincolns Inn Fields",
          country: "England",
          postcode: "WC2A 3JB",
          latitude: 51.516663,
          longitude: -0.118898
        },
        "46b1be03-8e0c-4f8e-9191-96f1404445bb" => {
          provider_name: "Queen Mary University of London",
          ukprn: "10007775",
          instid: "0139",
          name: "Main campus",
          country: "England",
          postcode: "E1 4NS",
          latitude: 51.524636,
          longitude: -0.04071
        },
        "497d6616-217f-4a0d-9902-a552cb046596" => {
          provider_name: "Queen Mary University of London",
          ukprn: "10007775",
          instid: "0139",
          name: "West Smithfield",
          country: "England",
          postcode: "EC1A 7BE",
          latitude: 51.51775,
          longitude: -0.100404
        },
        "d1ba7d3a-569b-45df-9c3a-d560b7349cd9" => {
          provider_name: "Queen Mary University of London",
          ukprn: "10007775",
          instid: "0139",
          name: "Whitechapel",
          country: "England",
          postcode: "E1 2AD",
          latitude: 51.517774,
          longitude: -0.060694
        },
        "09dd63df-3330-4439-a23e-56eaa957f716" => {
          provider_name: "Queen's University Belfast",
          ukprn: "10005343",
          instid: "0184",
          name: "China Queen's College",
          country: "China",
          latitude: 54.584772,
          longitude: -5.934438
        },
        "c140e8d6-255a-4fe8-959a-b4b09a0c4d53" => {
          provider_name: "Queen's University Belfast",
          ukprn: "10005343",
          instid: "0184",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT7 1NN",
          latitude: 54.584772,
          longitude: -5.934438
        },
        "f138de8f-b97c-4a8e-9e3f-f9ea0ff34815" => {
          provider_name: "Raindance Educational Services Limited",
          ukprn: "10062833",
          instid: "0429",
          name: "Entire HEP",
          country: "England",
          postcode: "WC2N 5PE",
          latitude: 51.507631,
          longitude: -0.125395
        },
        "64c56e5a-2ea0-4647-ab69-ae576f897507" => {
          provider_name: "Rambert School",
          ukprn: "10005378",
          instid: "0443",
          name: "Main campus",
          country: "England",
          postcode: "TW1 1QN",
          latitude: 51.461274,
          longitude: -0.321879
        },
        "c606cc36-f368-404a-a9ce-c10184dd2404" => {
          provider_name: "Ravensbourne University London",
          ukprn: "10005389",
          instid: "0030",
          name: "Entire HEP",
          country: "England",
          postcode: "SE10 0EW",
          latitude: 51.501677,
          longitude: 0.005678
        },
        "fe679e5a-7879-4ebf-ac44-ee43db19266d" => {
          provider_name: "Ravensbourne University London",
          ukprn: "10005389",
          instid: "0030",
          name: "Institute for Creativity and Technology",
          country: "England",
          postcode: "SE10 0SQ",
          latitude: 51.501677,
          longitude: 0.005678
        },
        "a51f227a-c1da-458e-9968-e9d34804e506" => {
          provider_name: "Reaseheath College",
          ukprn: "10005404",
          instid: "1059",
          name: "Main campus",
          country: "England",
          postcode: "CW5 6DF",
          latitude: 53.083688,
          longitude: -2.526845
        },
        "d537e7b3-f7bf-4613-9352-8f6d8af30605" => {
          provider_name: "Redcliffe College",
          ukprn: "10005415",
          instid: "0223",
          name: "Entire HEP",
          country: "England",
          postcode: "GL1 2LX",
          latitude: 51.86746,
          longitude: -2.248446
        },
        "ab120610-97d6-459b-b88c-26e92420109a" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "HARROW CAMPUS",
          country: "England",
          postcode: "HA2 7HG",
          latitude: 51.576897,
          longitude: -0.369679
        },
        "c2b49a45-817f-4e77-9775-aa5e5822beb6" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "KINGSBURY CAMPUS",
          country: "England",
          postcode: "NW9 9NG",
          latitude: 51.58551,
          longitude: -0.273396
        },
        "1651dd2c-4752-4fbe-8ee6-ca5db406f1b9" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "Main campus",
          country: "England",
          postcode: "W1W 5BD",
          latitude: 51.521821,
          longitude: -0.142369
        },
        "2cde7b92-2528-491e-ad1a-cbdb880fb367" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "Regent House Campus",
          country: "England",
          postcode: "WC1R 4BH",
          latitude: 51.519955,
          longitude: -0.11673
        },
        "40cb3458-7155-4c56-8642-477010caa201" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "SOUTHALL CAMPUS",
          country: "England",
          postcode: "UB1 3HF",
          latitude: 51.51099,
          longitude: -0.372617
        },
        "eb9252e0-4a86-4598-86ca-b03fbfe4f64e" => {
          provider_name: "Regent College London",
          ukprn: "10008455",
          instid: "0278",
          name: "WEMBLEY CAMPUS",
          country: "England",
          postcode: "HA9 7EX",
          latitude: 51.551922,
          longitude: -0.294665
        },
        "15b535c1-09e8-4014-adb8-f877cded0443" => {
          provider_name: "Regents Theological College",
          ukprn: "10008457",
          instid: "0264",
          name: "Entire HEP",
          country: "England",
          postcode: "NULL"
        },
        "4d0f7c81-eb70-4049-ad84-d38d8cb8eb46" => {
          provider_name: "Regents Theological College",
          ukprn: "10021100",
          instid: "0327",
          name: "Entire HEP",
          country: "England",
          postcode: "WR14 4AY",
          latitude: 52.117084,
          longitude: -2.346061
        },
        "8f4d496c-39ac-4a5f-9332-9806d337a1b1" => {
          provider_name: "Regent's University London",
          ukprn: "10003331",
          instid: "0216",
          name: "Entire HEP",
          country: "England",
          postcode: "NW1 4NS",
          latitude: 51.525745,
          longitude: -0.15566
        },
        "3c23a633-ba30-49a1-a79c-8afff2d75a83" => {
          provider_name: "Regent's University London Limited",
          ukprn: "10086591",
          instid: "0425",
          name: "Entire HEP",
          country: "England",
          postcode: "NW1 4NS",
          latitude: 51.525745,
          longitude: -0.15566
        },
        "cf811877-c333-47da-9567-1dd93e48b6c8" => {
          provider_name: "Results Consortium Limited",
          ukprn: "10023871",
          instid: "0416",
          name: "Main campus",
          country: "England",
          postcode: "RM10 7FN",
          latitude: 51.545907,
          longitude: 0.165728
        },
        "e36cef47-788f-4728-bbf7-8c4bd24e81fa" => {
          provider_name: "Results Consortium Limited",
          ukprn: "10023871",
          instid: "0416",
          name: "Northampton",
          country: "England",
          postcode: "NN1 2BN",
          latitude: 52.238692,
          longitude: -0.889973
        },
        "a5dc56b7-82d6-48f6-93c2-0fef7aff222d" => {
          provider_name: "Richard Huish College",
          ukprn: "10005465",
          instid: "1057",
          name: "Main campus",
          country: "England",
          postcode: "TA1 3DZ",
          latitude: 51.007985,
          longitude: -3.092401
        },
        "cb1eed59-2d9d-489f-948f-4401a578cd9b" => {
          provider_name: "Richmond and Hillcroft Adult and Community College",
          ukprn: "10003088",
          instid: "1106",
          name: "Main campus",
          country: "England",
          postcode: "TW9 2RE",
          latitude: 51.464375,
          longitude: -0.303021
        },
        "d00d3adf-a63c-4a1d-b6ec-3ff33dc659d3" => {
          provider_name: "Richmond upon Thames College",
          ukprn: "10005469",
          instid: "1058",
          name: "Main campus",
          country: "England",
          postcode: "TW2 7SJ",
          latitude: 51.451431,
          longitude: -0.342367
        },
        "2a4811dd-f4d4-44e8-acf2-49e358368693" => {
          provider_name: "Richmond, The American International University in London",
          ukprn: "10005470",
          instid: "0219",
          name: "Kensington",
          country: "England",
          postcode: "W8 5ED",
          latitude: 51.502066,
          longitude: -0.189515
        },
        "6a8dd321-06b1-4625-9586-a97ea5fd00e1" => {
          provider_name: "Richmond, The American International University in London",
          ukprn: "10005470",
          instid: "0219",
          name: "Leeds",
          country: "England",
          postcode: "LS6 3QB",
          latitude: 53.82468,
          longitude: -1.587074
        },
        "66403ea7-aa2e-4ca6-9491-eaa9bc0f36e4" => {
          provider_name: "Richmond, The American International University in London",
          ukprn: "10005470",
          instid: "0219",
          name: "Main campus",
          country: "England",
          postcode: "W4 5AN",
          latitude: 51.493215,
          longitude: -0.274068
        },
        "cac1b3e1-e466-41ba-816b-5a8d5c6dc1b3" => {
          provider_name: "Riverside College Halton",
          ukprn: "10002863",
          instid: "1056",
          name: "Main campus",
          country: "England",
          postcode: "WA8 7QQ",
          latitude: 53.363962,
          longitude: -2.734745
        },
        "774a4960-a0cb-4b7c-96ba-f6af54a19a16" => {
          provider_name: "RNN Group",
          ukprn: "10005534",
          instid: "1055",
          name: "Main campus",
          country: "England",
          postcode: "S65 1EG",
          latitude: 53.431593,
          longitude: -1.353222
        },
        "7665d5ac-9e2d-4888-9708-e19af6f69772" => {
          provider_name: "Robert Gordon University",
          ukprn: "10005500",
          instid: "0104",
          name: "City Centre campus - Schoolhill",
          country: "Scotland",
          postcode: "AB10 1FR",
          latitude: 57.148372,
          longitude: -2.10116
        },
        "e3419c94-ddbb-4616-91f4-83d57fcd51d2" => {
          provider_name: "Robert Gordon University",
          ukprn: "10005500",
          instid: "0104",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "AB10 7QB",
          latitude: 57.118346,
          longitude: -2.145044
        },
        "e01011f4-3c01-47ac-a403-d8dc2ee64234" => {
          provider_name: "Robert Gordon University",
          ukprn: "10005500",
          instid: "0104",
          name: "Garthdee campus",
          country: "Scotland",
          postcode: "AB10 7QB",
          latitude: 57.118346,
          longitude: -2.145044
        },
        "8db782f4-a004-4540-bec6-be99c8916b08" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "Birmingham QA",
          country: "England",
          postcode: "B5 4UA",
          latitude: 52.476224,
          longitude: -1.898516
        },
        "230fbc2b-97d4-4dc9-9bb0-9cb261aef1a6" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "Croydon",
          country: "England",
          postcode: "CR9 1DX",
          latitude: 51.373414,
          longitude: -0.095181
        },
        "eac223d1-7eb8-4ae7-a61a-2051393ac14f" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "IRIE",
          country: "England",
          postcode: "SE14 6LU",
          latitude: 51.478106,
          longitude: -0.036775
        },
        "d20d1690-b8ca-4232-a459-1b6956e39a6e" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "Main campus",
          country: "England",
          postcode: "SW15 5PJ",
          latitude: 51.456694,
          longitude: -0.24311
        },
        "ff82f5f8-a13a-4756-ba76-0cf6dbce174e" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "Manchester QA",
          country: "England",
          postcode: "M1 6FQ",
          latitude: 53.475586,
          longitude: -2.241402
        },
        "eae17f31-4d41-4900-829b-b9458eb78bc2" => {
          provider_name: "Roehampton University",
          ukprn: "10007776",
          instid: "0031",
          name: "Rosebery Ave London QA",
          country: "England",
          postcode: "EC1R 5HP",
          latitude: 51.524115,
          longitude: -0.110893
        },
        "1598f401-83eb-40e3-be64-39d06045d16a" => {
          provider_name: "Rose Bruford College of Theatre and Performance",
          ukprn: "10005523",
          instid: "0032",
          name: "London ALRA",
          country: "England",
          postcode: "SW18 3SX",
          latitude: 51.4533,
          longitude: -0.174557
        },
        "ce5ee4e9-6534-48f6-8ccd-90dcc72b9313" => {
          provider_name: "Rose Bruford College of Theatre and Performance",
          ukprn: "10005523",
          instid: "0032",
          name: "Main campus",
          country: "England",
          postcode: "DA15 9DF",
          latitude: 51.439376,
          longitude: 0.107096
        },
        "67384dbf-1c86-4085-9ddf-7c2f870372a0" => {
          provider_name: "Rose Bruford College of Theatre and Performance",
          ukprn: "10005523",
          instid: "0032",
          name: "Notting Hill Academy of Music",
          country: "England",
          postcode: "W11 3JQ",
          latitude: 51.509176,
          longitude: -0.194536
        },
        "14bbfc7a-3fc2-419f-98a3-902eeb710fc9" => {
          provider_name: "Rose Bruford College of Theatre and Performance",
          ukprn: "10005523",
          instid: "0032",
          name: "Wigan ALRA",
          country: "England",
          postcode: "WN3 4EF",
          latitude: 53.541119,
          longitude: -2.637748
        },
        "3d044fd8-13a9-4fe4-95e3-ee0028efafda" => {
          provider_name: "Royal Academy of Dance",
          ukprn: "10005544",
          instid: "0263",
          name: "Entire HEP",
          country: "England",
          postcode: "SW11 3JZ",
          latitude: 51.466481,
          longitude: -0.17955
        },
        "3f3c737b-7ab2-4dd4-a8a7-152f12550b69" => {
          provider_name: "Royal Academy of Dramatic Art",
          ukprn: "10009292",
          instid: "0402",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1E 6ED",
          latitude: 51.521704,
          longitude: -0.131577
        },
        "00680f9e-c207-4934-9414-4668500f6045" => {
          provider_name: "Royal Academy of Music",
          ukprn: "10007835",
          instid: "0033",
          name: "Entire HEP",
          country: "England",
          postcode: "NW1 5HT",
          latitude: 51.523497,
          longitude: -0.1517
        },
        "03f397f3-6ef7-4ccd-992c-a1b1b0662614" => {
          provider_name: "Royal Agricultural University",
          ukprn: "10005545",
          instid: "0195",
          name: "Entire HEP",
          country: "England",
          postcode: "GL7 6JS",
          latitude: 51.709508,
          longitude: -1.994916
        },
        "d4299ee1-879e-499a-81b3-a65d69b855a4" => {
          provider_name: "Royal College of Art",
          ukprn: "10007777",
          instid: "0003",
          name: "Battersea",
          country: "England",
          postcode: "SW11 4AN",
          latitude: 51.479629,
          longitude: -0.169863
        },
        "1ebf4b7a-1737-491a-9f73-40cef05644e8" => {
          provider_name: "Royal College of Art",
          ukprn: "10007777",
          instid: "0003",
          name: "Main campus",
          country: "England",
          postcode: "SW7 2EU",
          latitude: 51.501354,
          longitude: -0.178473
        },
        "16f709d3-7905-45b7-9197-7fe6f7b6bfa6" => {
          provider_name: "Royal College of Art",
          ukprn: "10007777",
          instid: "0003",
          name: "White City",
          country: "England",
          postcode: "W12 7FN",
          latitude: 51.513166,
          longitude: -0.228593
        },
        "0cb34bdb-3061-40e0-a2d2-3f4f1934d773" => {
          provider_name: "Royal College of Music",
          ukprn: "10007778",
          instid: "0034",
          name: "Entire HEP",
          country: "England",
          postcode: "SW7 2BS",
          latitude: 51.499279,
          longitude: -0.176913
        },
        "e035af5a-b4ac-4fdb-a4c2-c6bab3b4830e" => {
          provider_name: "Royal Conservatoire of Scotland",
          ukprn: "10005561",
          instid: "0101",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "G2 3DB",
          latitude: 55.865813,
          longitude: -4.257595
        },
        "87fdc17c-8092-4e73-b538-a9d7e44409a9" => {
          provider_name: "Royal Holloway and Bedford New College",
          ukprn: "10005553",
          instid: "0141",
          name: "Bedford Square",
          country: "England",
          postcode: "WC1B 3RF",
          latitude: 51.51989,
          longitude: -0.129475
        },
        "41f36db6-6c10-438b-a9de-96cd78016663" => {
          provider_name: "Royal Holloway and Bedford New College",
          ukprn: "10005553",
          instid: "0141",
          name: "Main campus",
          country: "England",
          postcode: "TW20 0EX",
          latitude: 51.424814,
          longitude: -0.566745
        },
        "a391c44f-be43-40a9-87f1-d90103af5d06" => {
          provider_name: "Royal Northern College of Music",
          ukprn: "10007837",
          instid: "0035",
          name: "Entire HEP",
          country: "England",
          postcode: "M13 9RD",
          latitude: 53.468557,
          longitude: -2.236963
        },
        "83cfe5b8-2db0-4e34-95ee-f6743be4bd37" => {
          provider_name: "Royal School of Needlework (The)",
          ukprn: "10020436",
          instid: "0404",
          name: "Entire HEP",
          country: "England",
          postcode: "KT8 9AU",
          latitude: 51.403813,
          longitude: -0.33767
        },
        "8e1b3c9e-7b6d-4ba4-b521-035ee6a27b13" => {
          provider_name: "Royal Welsh College of Music and Drama",
          ukprn: "10007838",
          instid: "0182",
          name: "Entire institution",
          country: "Wales",
          postcode: "CF10 3ER",
          latitude: 51.485644,
          longitude: -3.183856
        },
        "6e1394b6-81d4-45d3-b1ad-4e8045974507" => {
          provider_name: "Runshaw College",
          ukprn: "10005575",
          instid: "1054",
          name: "Main campus",
          country: "England",
          postcode: "PR25 3DQ",
          latitude: 53.680997,
          longitude: -2.689595
        },
        "851814f1-871a-4668-8375-bf92499beba7" => {
          provider_name: "Ruskin College",
          ukprn: "10005583",
          instid: "1053",
          name: "Main campus",
          country: "England",
          postcode: "OX3 9BZ",
          latitude: 51.766077,
          longitude: -1.214914
        },
        "68b78070-75d4-4aab-8876-2e5e40d36498" => {
          provider_name: "S P Jain London School of Management Limited",
          ukprn: "10088214",
          instid: "0448",
          name: "Main campus",
          country: "England",
          postcode: "WC2B 5AH",
          latitude: 51.515942,
          longitude: -0.120892
        },
        "cdae7ccc-430b-4b66-bedd-7a549bcc45e9" => {
          provider_name: "SAE Education Limited",
          ukprn: "10007839",
          instid: "0265",
          name: "GLASGOW",
          country: "Scotland",
          postcode: "G41 1EJ",
          latitude: 55.851552,
          longitude: -4.282013
        },
        "89f10646-0e48-4dd7-8344-b7a0cb011c10" => {
          provider_name: "SAE Education Limited",
          ukprn: "10007839",
          instid: "0265",
          name: "LIVERPOOL",
          country: "England",
          postcode: "L3 6AL",
          latitude: 53.41025,
          longitude: -2.990264
        },
        "52fc0128-2481-45b5-ad85-15a95af96b13" => {
          provider_name: "SAE Education Limited",
          ukprn: "10007839",
          instid: "0265",
          name: "Main campus",
          country: "England",
          postcode: "E8 4DD",
          latitude: 51.537074,
          longitude: -0.077064
        },
        "6cc2daa8-e2ca-4042-b33a-3a29c1175c6c" => {
          provider_name: "SAE Education Limited",
          ukprn: "10007839",
          instid: "0265",
          name: "OXFORD",
          country: "England",
          postcode: "OX4 4FY",
          latitude: 51.717148,
          longitude: -1.224606
        },
        "e06b6cf0-20c4-4fcf-a7fa-bd24ebee792d" => {
          provider_name: "Salford City College",
          ukprn: "10005032",
          instid: "1052",
          name: "Main campus",
          country: "England",
          postcode: "M50 3SR",
          latitude: 53.468842,
          longitude: -2.283558
        },
        "839e8165-12e2-4bfe-b347-b042c38acf61" => {
          provider_name: "Sandwell College",
          ukprn: "10005669",
          instid: "1051",
          name: "Main campus",
          country: "England",
          postcode: "B70 6AW",
          latitude: 52.515086,
          longitude: -1.992087
        },
        "e9d623ab-ec76-4833-a0cc-52839dcda0a5" => {
          provider_name: "Selby College",
          ukprn: "10005741",
          instid: "1047",
          name: "Main campus",
          country: "England",
          postcode: "YO8 8AT",
          latitude: 53.775065,
          longitude: -1.051545
        },
        "c4c3c45d-95ae-4d4e-ad1a-90274be8ef5c" => {
          provider_name: "Sheffield Hallam University",
          ukprn: "10005790",
          instid: "0075",
          name: "Entire HEP",
          country: "England",
          postcode: "S1 1WB",
          latitude: 53.379194,
          longitude: -1.465255
        },
        "b16df4c4-1b7c-4079-95c8-b3654baf0616" => {
          provider_name: "Shrewsbury Colleges Group",
          ukprn: "10005822",
          instid: "1042",
          name: "Main campus",
          country: "England",
          postcode: "SY2 6PR",
          latitude: 52.697225,
          longitude: -2.721409
        },
        "fe3ca82f-2933-4167-81be-979c9d016254" => {
          provider_name: "Slough Borough Council",
          ukprn: "10005916",
          instid: "0266",
          name: "Main campus",
          country: "England",
          postcode: "SL2 5AY",
          latitude: 51.518757,
          longitude: -0.589032
        },
        "baef7241-419f-4176-9676-14beae1fb6fc" => {
          provider_name: "SOAS University of London",
          ukprn: "10007780",
          instid: "0146",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1H 0XG",
          latitude: 51.52235,
          longitude: -0.129259
        },
        "83efe39f-512c-4d96-91e6-a2bdaf0d775d" => {
          provider_name: "Solihull College and University Centre",
          ukprn: "10005946",
          instid: "1041",
          name: "Main campus",
          country: "England",
          postcode: "B91 1SB",
          latitude: 52.409568,
          longitude: -1.792148
        },
        "37d0cc11-3455-41e2-af88-6978aaaa9b0a" => {
          provider_name: "South & City College Birmingham",
          ukprn: "10005967",
          instid: "1050",
          name: "Main campus",
          country: "England",
          postcode: "B5 5SU",
          latitude: 52.475457,
          longitude: -1.885753
        },
        "d4157013-47d1-4336-9259-589b697d8d07" => {
          provider_name: "South Devon College",
          ukprn: "10005977",
          instid: "1049",
          name: "Main campus",
          country: "England",
          postcode: "TQ4 7EJ",
          latitude: 50.414646,
          longitude: -3.587847
        },
        "91750d30-c6d1-4437-a62b-1de1406cb8c0" => {
          provider_name: "South Eastern Regional College",
          ukprn: "10020699",
          instid: "0348",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT27 4SU",
          latitude: 54.512585,
          longitude: -6.040698
        },
        "5433920a-17d8-4683-9b9f-423742cf3cef" => {
          provider_name: "South Essex College of Further and Higher Education",
          ukprn: "10005981",
          instid: "1046",
          name: "Main campus",
          country: "England",
          postcode: "SS1 1ND",
          latitude: 51.537958,
          longitude: 0.71191
        },
        "56d35d1c-4dec-400f-87e6-6a7af50a1e96" => {
          provider_name: "South Gloucestershire and Stroud College",
          ukprn: "10036143",
          instid: "1045",
          name: "Main campus",
          country: "England",
          postcode: "GL5 4AH",
          latitude: 51.74908,
          longitude: -2.228689
        },
        "9a67b4f0-aec2-4c09-b9fb-5ce9bc2b1e19" => {
          provider_name: "South Hampshire College Group",
          ukprn: "10007928",
          instid: "1125",
          name: "Main campus",
          country: "England",
          postcode: "PO14 1NH",
          latitude: 50.851085,
          longitude: -1.199216
        },
        "7afceb46-1b0d-4eb8-9688-23574780056e" => {
          provider_name: "South Thames Colleges Group",
          ukprn: "10003674",
          instid: "1035",
          name: "Main campus",
          country: "England",
          postcode: "KT1 2AQ",
          latitude: 51.406938,
          longitude: -0.305378
        },
        "b31844d4-c382-4e22-9a83-58831bf7de03" => {
          provider_name: "South West College",
          ukprn: "10020685",
          instid: "0350",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT71 6BQ",
          latitude: 54.508561,
          longitude: -6.763163
        },
        "161021be-cd40-4efd-a0e1-70616860c752" => {
          provider_name: "Southampton City College",
          ukprn: "10006020",
          instid: "1044",
          name: "Main campus",
          country: "England",
          postcode: "SO14 1AR",
          latitude: 50.903441,
          longitude: -1.39513
        },
        "f91fe12c-a556-409e-977c-3194c3b5ce2e" => {
          provider_name: "Southampton Solent University",
          ukprn: "10006022",
          instid: "0037",
          name: "Main campus",
          country: "England",
          postcode: "SO14 0YN",
          latitude: 50.90759,
          longitude: -1.401021
        },
        "0421de6f-2850-47d2-aeaa-bf533716af60" => {
          provider_name: "Southern Regional College",
          ukprn: "10020633",
          instid: "0347",
          name: "Main campus",
          country: "Northern Ireland",
          postcode: "BT32 4AY",
          latitude: 54.350092,
          longitude: -6.262465
        },
        "c8c96e71-f284-4722-8fc7-443053cdef60" => {
          provider_name: "Southport Education Group",
          ukprn: "10006038",
          instid: "1039",
          name: "Main campus",
          country: "England",
          postcode: "PR9 0TT",
          latitude: 53.647816,
          longitude: -2.997609
        },
        "109a6247-bd3a-4d30-b5fa-990bf0f4ccd2" => {
          provider_name: "Sparsholt College",
          ukprn: "10006050",
          instid: "1040",
          name: "Main campus",
          country: "England",
          postcode: "SO21 2NF",
          latitude: 51.08468,
          longitude: -1.394883
        },
        "5e1d7967-5e75-4f5c-af1e-f244abe01ce6" => {
          provider_name: "Spurgeon's College",
          ukprn: "10006093",
          instid: "0310",
          name: "Entire HEP",
          country: "England",
          postcode: "SE25 6DJ",
          latitude: 51.406433,
          longitude: -0.086228
        },
        "4775810e-80c2-431f-840a-6e3ac7783745" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Aberdeen",
          country: "Scotland",
          postcode: "AB21 9TR",
          latitude: 57.188564,
          longitude: -2.210537
        },
        "587456f3-ab96-4834-aeb7-f9077264af44" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Auchincruive",
          country: "Scotland",
          postcode: "KA6 5HW",
          latitude: 55.479684,
          longitude: -4.566706
        },
        "9a4116f9-0e39-4298-a9db-7a2874153113" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Barony",
          country: "Scotland",
          postcode: "DG1 3NE",
          latitude: 55.16751,
          longitude: -3.530496
        },
        "90081e8e-087e-4254-81dd-7ad1d07e15a9" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Bush and Edinburgh Farms",
          country: "Scotland",
          postcode: "EH26 0PE",
          latitude: 55.864496,
          longitude: -3.213473
        },
        "0c4667e6-7c05-484d-a3c8-318478b359d8" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "China",
          country: "China",
          latitude: 55.921623,
          longitude: -3.176228
        },
        "905b7547-b921-4f8c-9e4f-98957e60cdd5" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Crichton Royal Farm",
          country: "Scotland",
          postcode: "DG1 4ZZ",
          latitude: 55.049454,
          longitude: -3.593311
        },
        "9c9070da-fc45-4f81-920a-56b9e9e5f734" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Edinburgh",
          country: "Scotland",
          postcode: "EH9 3JG",
          latitude: 55.921623,
          longitude: -3.176228
        },
        "6b1aeffa-a9ad-4617-949f-4352090c268b" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Elmwood",
          country: "Scotland",
          postcode: "KY15 4JB",
          latitude: 56.319294,
          longitude: -3.031792
        },
        "1d978302-eaab-4b6d-a105-77d9072325cf" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Glasgow Queenspark",
          country: "Scotland",
          postcode: "G42 8QR",
          latitude: 55.833627,
          longitude: -4.269399
        },
        "15630963-f384-4279-b9a3-18261915a420" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Kirkton and Auchtertyre",
          country: "Scotland",
          postcode: "FK20 8RU",
          latitude: 56.410215,
          longitude: -4.655473
        },
        "20229f44-3e3e-498d-b4c2-013dbdd85f09" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Oatridge",
          country: "Scotland",
          postcode: "EH52 6NH",
          latitude: 55.946462,
          longitude: -3.516069
        },
        "1a3222b6-7ba6-4cfe-8297-93b895630ab6" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "RIB Easter Bush",
          country: "Scotland",
          postcode: "EH25 9RE",
          latitude: 55.867927,
          longitude: -3.19565
        },
        "46e1e9ba-bf18-4822-93bf-cc78a1dbcfad" => {
          provider_name: "SRUC",
          ukprn: "10005700",
          instid: "0175",
          name: "Riverside Campus",
          country: "Scotland",
          postcode: "KA8 0SX",
          latitude: 55.458036,
          longitude: -4.615296
        },
        "a247ad34-f1e8-410b-8e5e-08198bcd0a53" => {
          provider_name: "St George's, University of London",
          ukprn: "10007782",
          instid: "0145",
          name: "Entire HEP",
          country: "England",
          postcode: "SW17 0RE",
          latitude: 51.427798,
          longitude: -0.175228
        },
        "e929af2a-b00e-45a5-a194-631f4952d30b" => {
          provider_name: "St Helens College",
          ukprn: "10006174",
          instid: "1034",
          name: "Main campus",
          country: "England",
          postcode: "WA10 1PP",
          latitude: 53.452648,
          longitude: -2.74147
        },
        "c1be71c4-7626-4dd8-a927-6377ae4796b3" => {
          provider_name: "St Hild College",
          ukprn: "10004747",
          instid: "0467",
          name: "Main campus",
          country: "England",
          postcode: "WF14 0BW",
          latitude: 53.682081,
          longitude: -1.71306
        },
        "6cdbebce-f2a6-467f-9560-551f5068b972" => {
          provider_name: "St Mary's College",
          ukprn: "10006226",
          instid: "1033",
          name: "Main campus",
          country: "England",
          postcode: "BB1 8DX",
          latitude: 53.760106,
          longitude: -2.486935
        },
        "ba1ed66d-bd44-4f46-99a9-ee2e0cfa6a02" => {
          provider_name: "St Mary's University College",
          ukprn: "10008026",
          instid: "0194",
          name: "Entire HEP",
          country: "Northern Ireland",
          postcode: "BT12 6FE",
          latitude: 54.593162,
          longitude: -5.961323
        },
        "c177bc29-d2e7-480e-904b-22666c66cdad" => {
          provider_name: "St Mary's University, Twickenham",
          ukprn: "10007843",
          instid: "0039",
          name: "Entire HEP",
          country: "England",
          postcode: "TW1 4SX",
          latitude: 51.436152,
          longitude: -0.335907
        },
        "381470f8-f191-4c0c-9ae4-5c4460a6a566" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "Chelmsford",
          country: "England",
          postcode: "CM1 1TY",
          latitude: 51.735578,
          longitude: 0.473787
        },
        "7f34e0f8-33a6-4666-91cc-232bf582d6cc" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "East Midlands (Leicester)",
          country: "England",
          postcode: "LE1 5PZ",
          latitude: 52.634421,
          longitude: -1.138019
        },
        "96d152f5-b35f-459a-9bac-1a91a97e3c2e" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "LIverpool",
          country: "England",
          postcode: "L1 7AZ",
          latitude: 53.397447,
          longitude: -2.973214
        },
        "03110355-925a-443c-bbed-2a27bb70bc9f" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "Main campus",
          country: "England",
          postcode: "SW5 0LX",
          latitude: 51.493625,
          longitude: -0.188044
        },
        "cd21c653-9a99-43d0-b0d8-224b7cebd640" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "Nottingham",
          country: "England",
          postcode: "NG1 3HX",
          latitude: 52.964264,
          longitude: -1.151924
        },
        "b25ae7c5-7a9e-4038-9626-46801c570572" => {
          provider_name: "St Mellitus College",
          ukprn: "10030776",
          instid: "0258",
          name: "Plymouth",
          country: "England",
          postcode: "PL4 8HF",
          latitude: 50.377815,
          longitude: -4.135346
        },
        "9577fe35-32ff-41b8-9678-15eb1233c2f3" => {
          provider_name: "St Nicholas Montessori Training Limited",
          ukprn: "10045289",
          instid: "0311",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1A 2RP",
          latitude: 51.534439,
          longitude: -0.181478
        },
        "388804be-31e2-432d-94e4-69b6bf0679a0" => {
          provider_name: "St Padarn's Institute",
          ukprn: "10090767",
          instid: "1197",
          name: "Main campus",
          country: "Wales",
          postcode: "CF10 5BT"
        },
        "d0bb5de2-a94b-40ab-a4b3-d435d560989f" => {
          provider_name: "St Patrick's International College",
          ukprn: "10006243",
          instid: "0283",
          name: "Main campus",
          country: "England",
          postcode: "E15 2JB",
          latitude: 51.537851,
          longitude: -0.003141
        },
        "5269f4ef-5ff4-4448-9c9b-8676e69452c6" => {
          provider_name: "Stephenson College",
          ukprn: "10006322",
          instid: "1032",
          name: "Main campus",
          country: "England",
          postcode: "LE67 3TN",
          latitude: 52.737048,
          longitude: -1.372555
        },
        "a42a8d23-bc8e-4f15-a2a5-7b215b9a0719" => {
          provider_name: "Stockport College",
          ukprn: "10006331",
          instid: "1036",
          name: "Main campus",
          country: "England",
          postcode: "SK1 3UQ",
          latitude: 53.404275,
          longitude: -2.158962
        },
        "b64bf731-84af-4ef4-b2af-58d7c48721d2" => {
          provider_name: "Stranmillis University College",
          ukprn: "10008010",
          instid: "0193",
          name: "Entire HEP",
          country: "Northern Ireland",
          postcode: "BT9 5DY",
          latitude: 54.572355,
          longitude: -5.939164
        },
        "ee07aede-e0f7-4f52-9cb3-37188dc45ddc" => {
          provider_name: "Stratford College London (SCL)",
          ukprn: "10022944",
          instid: "0241",
          name: "Main campus",
          country: "England",
          postcode: "E15 4PH",
          latitude: 51.539455,
          longitude: 0.004181
        },
        "e3480eec-f6d2-4eff-b7eb-87c574ca4f27" => {
          provider_name: "Stratford-upon-Avon College",
          ukprn: "10006002",
          instid: "1030",
          name: "Main campus",
          country: "England",
          postcode: "CV37 9QR",
          latitude: 52.192858,
          longitude: -1.718214
        },
        "79e3502b-e3bb-4540-a8e9-92ccb7f3c11a" => {
          provider_name: "Strode College",
          ukprn: "10006378",
          instid: "1031",
          name: "Main campus",
          country: "England",
          postcode: "BA16 0AB",
          latitude: 51.130495,
          longitude: -2.734039
        },
        "1adc764d-9117-429a-b20f-902f10b3d9bd" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Bellerbys College - Brighton",
          country: "England",
          postcode: "BN1 4LF",
          latitude: 50.832036,
          longitude: -0.140833
        },
        "b5f86cc1-f291-4041-bbd6-9a47e0c1f724" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Bellerbys College - London",
          country: "England",
          postcode: "SE8 3DE",
          latitude: 51.481545,
          longitude: -0.02198
        },
        "ab190a5d-b627-4fc5-b140-ffde4576e53b" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Cardiff University International Study Centre",
          country: "Wales",
          postcode: "CF10 3QN",
          latitude: 51.488406,
          longitude: -3.177461
        },
        "a065db60-6820-4d31-a44a-b65d835efb86" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Durham University International Study Centre",
          country: "England",
          postcode: "TS17 6BH",
          latitude: 54.563169,
          longitude: -1.296768
        },
        "6e5c3fec-a3d6-490b-80bd-ce2a9852ed13" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Holland International Study Centre",
          country: "Netherlands",
          latitude: 50.832036,
          longitude: -0.140833
        },
        "393b679a-9df0-42cb-a00e-14963faf93fe" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Kingston University International Study Centre",
          country: "England",
          postcode: "KT2 7LB",
          latitude: 51.429011,
          longitude: -0.265195
        },
        "baca6bc5-0f3f-49cb-881e-5f6952e54ea7" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Lancaster University International Study Centre",
          country: "England",
          postcode: "LA1 4YX",
          latitude: 54.007637,
          longitude: -2.786948
        },
        "93908626-c5af-4428-b835-e3ef7b24e8bf" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Leeds International Study Centre",
          country: "England",
          postcode: "LS6 3BR",
          latitude: 53.816081,
          longitude: -1.580617
        },
        "1c092a1b-9d56-4931-94ea-b1e00d1933b5" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Liverpool John Moores University International Stu",
          country: "England",
          postcode: "L3 5UX",
          latitude: 53.403685,
          longitude: -2.973176
        },
        "4be2910e-cfec-42ae-88fd-5f23d610bbbe" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Main campus",
          country: "England",
          postcode: "TS1 3BX",
          latitude: 54.570387,
          longitude: -1.236999
        },
        "504b6237-1054-4db3-bddf-753a107e0d16" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "Royal Holloway International Study Centre",
          country: "England",
          postcode: "TW20 0EX",
          latitude: 51.424814,
          longitude: -0.566745
        },
        "52331c20-dfec-4c8c-9efb-9fa57885c2cc" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University College Dublin International Study Cent",
          country: "Ireland",
          latitude: 50.832036,
          longitude: -0.140833
        },
        "fa33285c-2ccf-4e26-9708-6adb94f2d729" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Aberdeen International Study Centre",
          country: "Scotland",
          postcode: "AB24 3FX",
          latitude: 57.164841,
          longitude: -2.100236
        },
        "8892cda2-84bc-45c7-a77d-40c369428040" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Huddersfield International Study Cen",
          country: "England",
          postcode: "HD1 3DH",
          latitude: 53.643678,
          longitude: -1.778726
        },
        "806ec1a5-c8dc-49c3-87bb-fe7e02c15c66" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Sheffield International College",
          country: "England",
          postcode: "S1 4DE",
          latitude: 53.384374,
          longitude: -1.473985
        },
        "196c55d6-d1f9-4455-9257-4b6f9df8b9d6" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Strathclyde International Study Cent",
          country: "Scotland",
          postcode: "G1 1QE",
          latitude: 55.860777,
          longitude: -4.241546
        },
        "45aa8cd9-9933-4bb0-b84a-f35313626e97" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Surrey International Study Centre",
          country: "England",
          postcode: "GU2 7XH",
          latitude: 51.242685,
          longitude: -0.587936
        },
        "7ce0b8e3-df6f-4647-8669-9977c069605b" => {
          provider_name: "Study Group",
          ukprn: "10008098",
          instid: "0403",
          name: "University of Sussex International Study Centre",
          country: "England",
          postcode: "BN1 9SP",
          latitude: 50.866498,
          longitude: -0.08516
        },
        "f719fd29-e4d9-46ee-ac11-b572c01264ab" => {
          provider_name: "Sussex Downs College",
          ukprn: "10006432",
          instid: "1028",
          name: "Main campus",
          country: "England",
          postcode: "BN21 2UF",
          latitude: 50.788909,
          longitude: 0.272124
        },
        "331c78b7-de61-4fd4-9890-dc62d18db4cc" => {
          provider_name: "Swansea Metropolitan University",
          ukprn: "10007846",
          instid: "0091",
          name: "Entire institution",
          country: "Wales",
          postcode: "SA1 6ED",
          latitude: 51.624654,
          longitude: -3.949428
        },
        "a81b7118-bbfd-41fb-a3ff-41c1dc6afe3b" => {
          provider_name: "Swansea University",
          ukprn: "10007855",
          instid: "0180",
          name: "Entire HEP",
          country: "Wales",
          postcode: "SA2 8PP",
          latitude: 51.609627,
          longitude: -3.980616
        },
        "5a1f09cf-a703-4547-bccf-78185ccfe540" => {
          provider_name: "Swindon College",
          ukprn: "10006463",
          instid: "1027",
          name: "Main campus",
          country: "England",
          postcode: "SN2 1DY",
          latitude: 51.568405,
          longitude: -1.787517
        },
        "7f093e57-afe6-4eb6-ab00-81cd5d31c8bf" => {
          provider_name: "Sysco Business Skills Academy Limited",
          ukprn: "10013122",
          instid: "0469",
          name: "Main campus",
          country: "England",
          postcode: "L3 2BA",
          latitude: 53.409927,
          longitude: -2.984706
        },
        "58281093-33dc-4be0-9e47-0af1b99a2ad8" => {
          provider_name: "Tameside College",
          ukprn: "10006494",
          instid: "1026",
          name: "Main campus",
          country: "England",
          postcode: "OL6 6NX",
          latitude: 53.487938,
          longitude: -2.080771
        },
        "11f62820-4bbe-45f9-92a4-916b0fa6eb1e" => {
          provider_name: "Tavistock and Portman NHS Foundation Trust",
          ukprn: "10020381",
          instid: "0433",
          name: "Belfast campus",
          country: "Northern Ireland",
          postcode: "BT15 2GB",
          latitude: 54.612422,
          longitude: -5.929368
        },
        "8de59bbe-9881-4d6d-8878-296b02a17267" => {
          provider_name: "Tavistock and Portman NHS Foundation Trust",
          ukprn: "10020381",
          instid: "0433",
          name: "Birmingham campus",
          country: "England",
          postcode: "B9 4AA",
          latitude: 52.475429,
          longitude: -1.884163
        },
        "1a0fb4ec-06db-4c1f-aa20-feeb0b8e8e78" => {
          provider_name: "Tavistock and Portman NHS Foundation Trust",
          ukprn: "10020381",
          instid: "0433",
          name: "Bristol campus",
          country: "England",
          postcode: "BS5 0AX",
          latitude: 51.45626,
          longitude: -2.563674
        },
        "31f4a8d4-55cf-4bdb-abd9-7b94444e7484" => {
          provider_name: "Tavistock and Portman NHS Foundation Trust",
          ukprn: "10020381",
          instid: "0433",
          name: "Leeds campus",
          country: "England",
          postcode: "LS12 1AW",
          latitude: 53.791187,
          longitude: -1.561314
        },
        "db4ccc88-d5ea-4519-b80a-43b3447dd09d" => {
          provider_name: "Tavistock and Portman NHS Foundation Trust",
          ukprn: "10020381",
          instid: "0433",
          name: "Main campus",
          country: "England",
          postcode: "NW3 5BA",
          latitude: 51.546898,
          longitude: -0.175443
        },
        "f35ae629-78b3-4bfe-9d64-5b116d96f96c" => {
          provider_name: "TEC Partnership",
          ukprn: "10007938",
          instid: "1119",
          name: "Main campus",
          country: "England",
          postcode: "DN34 5BQ",
          latitude: 53.553451,
          longitude: -0.093352
        },
        "23652552-8437-4864-a0e4-a2d3efeb9998" => {
          provider_name: "Tech Music Schools",
          ukprn: "10032299",
          instid: "0242",
          name: "Main campus",
          country: "England",
          postcode: "W3 7SZ",
          latitude: 51.504817,
          longitude: -0.25654
        },
        "5ff396e0-8775-48d9-a405-fa62cce2fdf7" => {
          provider_name: "Teesside University",
          ukprn: "10007161",
          instid: "0079",
          name: "Main campus",
          country: "England",
          postcode: "TS1 3BX",
          latitude: 54.570387,
          longitude: -1.236999
        },
        "572bee79-90e9-441c-96a6-42b82b638b67" => {
          provider_name: "Teesside University",
          ukprn: "10007161",
          instid: "0079",
          name: "Teesside University Darlington",
          country: "England",
          postcode: "DL1 1JW",
          latitude: 54.527866,
          longitude: -1.543342
        },
        "efdbea92-b3d6-4f4f-9562-b39285293898" => {
          provider_name: "Telford College",
          ukprn: "10006549",
          instid: "1025",
          name: "Main campus",
          country: "England",
          postcode: "TF1 2NP",
          latitude: 52.697329,
          longitude: -2.498607
        },
        "f72f77bb-5af5-4f0d-a6bf-455e289ceace" => {
          provider_name: "The Academy of Contemporary Music",
          ukprn: "10013357",
          instid: "0251",
          name: "Main campus",
          country: "England",
          postcode: "GU1 4SB",
          latitude: 51.236455,
          longitude: -0.578092
        },
        "6296cf0b-987b-40fc-a594-8bd7e5a11b84" => {
          provider_name: "The Arts University Bournemouth",
          ukprn: "10000385",
          instid: "0197",
          name: "Drama Cente at Bournemouth Pavilion",
          country: "England",
          postcode: "BH1 2BU",
          latitude: 50.717535,
          longitude: -1.875155
        },
        "e0e11c75-bc1c-4725-9f64-7c4957cfad00" => {
          provider_name: "The Arts University Bournemouth",
          ukprn: "10000385",
          instid: "0197",
          name: "Entire HEP",
          country: "England",
          postcode: "BH12 5HH",
          latitude: 50.741808,
          longitude: -1.897728
        },
        "1fcb6941-8836-40c7-8c6c-d9466f176bcd" => {
          provider_name: "The Arts University Bournemouth",
          ukprn: "10000385",
          instid: "0197",
          name: "Film Studio - Elliott Road",
          country: "England",
          postcode: "BH11 8JZ",
          latitude: 50.757037,
          longitude: -1.923762
        },
        "46904127-4cca-4a19-b05a-0d03a5d8b06a" => {
          provider_name: "The Ashridge (Bonar Law Memorial) Trust",
          ukprn: "10008899",
          instid: "0438",
          name: "Entire HEP",
          country: "England",
          postcode: "HP4 1NS",
          latitude: 51.799461,
          longitude: -0.560016
        },
        "73aacc42-ada3-434c-80f4-00b22646db47" => {
          provider_name: "The Berkshire College of Agriculture (BCA)",
          ukprn: "10000654",
          instid: "1170",
          name: "Main campus",
          country: "England",
          postcode: "SL6 6QR",
          latitude: 51.529697,
          longitude: -0.799839
        },
        "8e562f06-d8b1-4bfc-beb3-3edbedec7d28" => {
          provider_name: "The Bournemouth and Poole College",
          ukprn: "10000820",
          instid: "1162",
          name: "Main campus",
          country: "England",
          postcode: "BH14 0LS",
          latitude: 50.724709,
          longitude: -1.961881
        },
        "a1dd413b-cb63-4614-94c3-2cd52d5ffaf6" => {
          provider_name: "The Cambridge Theological Federation",
          ukprn: "10032072",
          instid: "0288",
          name: "Main campus",
          country: "England",
          postcode: "CB3 0BJ",
          latitude: 52.211302,
          longitude: 0.111335
        },
        "5e38f79c-1891-4c3e-96aa-fa7f12e9a5c4" => {
          provider_name: "The Cambridge Theological Federation",
          ukprn: "10032072",
          instid: "0288",
          name: "Ridley Hall",
          country: "England",
          postcode: "CB3 9HG",
          latitude: 52.19994,
          longitude: 0.111339
        },
        "81eea351-2ee2-48a5-8c0e-f829df0e65be" => {
          provider_name: "The Cambridge Theological Federation",
          ukprn: "10032072",
          instid: "0288",
          name: "St Andrew's Church Enfield",
          country: "England",
          postcode: "EN1 3EG",
          latitude: 51.652893,
          longitude: -0.081344
        },
        "958e32b9-36fe-4201-bae1-d38ef2a73268" => {
          provider_name: "The Cambridge Theological Federation",
          ukprn: "10032072",
          instid: "0288",
          name: "Westcott House",
          country: "England",
          postcode: "CB5 8BP",
          latitude: 52.208396,
          longitude: 0.122688
        },
        "9df002a6-63d9-4eab-ba0c-fb823ae27ba5" => {
          provider_name: "The Cambridge Theological Federation",
          ukprn: "10032072",
          instid: "0288",
          name: "Westminster College",
          country: "England",
          postcode: "CB3 0AA",
          latitude: 52.210537,
          longitude: 0.112119
        },
        "4ec75489-a17d-4bcc-8c8c-9ab26ce00e78" => {
          provider_name: "The City College",
          ukprn: "10010213",
          instid: "0271",
          name: "Entire HEP",
          country: "England",
          postcode: "N1 6AH",
          latitude: 51.528636,
          longitude: -0.087843
        },
        "cd13da62-c69d-453a-b1d8-0a35988b9161" => {
          provider_name: "The City of Liverpool College",
          ukprn: "10003955",
          instid: "1139",
          name: "Main campus",
          country: "England",
          postcode: "L3 5TP",
          latitude: 53.404377,
          longitude: -2.973191
        },
        "dac37c31-cbbb-4f7d-8800-f29f7836875d" => {
          provider_name: "The College of Health Ltd",
          ukprn: "10066502",
          instid: "0430",
          name: "Main campus",
          country: "England",
          postcode: "OX14 1BZ",
          latitude: 51.670421,
          longitude: -1.305384
        },
        "699988e3-d0c0-44b8-869f-06c3464ec1b5" => {
          provider_name: "The College of Health Ltd",
          ukprn: "10066502",
          instid: "0430",
          name: "Manchester",
          country: "England",
          postcode: "M1 6FQ",
          latitude: 53.475586,
          longitude: -2.241402
        },
        "d6b0af31-bebb-48c0-b895-63f2ca608bdd" => {
          provider_name: "The College of Integrated Chinese Medicine",
          ukprn: "10001546",
          instid: "0270",
          name: "Entire HEP",
          country: "England",
          postcode: "RG1 7SB",
          latitude: 51.453395,
          longitude: -0.974575
        },
        "e9f0e507-a07a-4f77-ab4a-443efd053a1d" => {
          provider_name: "The College of Osteopaths",
          ukprn: "10023442",
          instid: "0424",
          name: "Main campus",
          country: "England",
          postcode: "WD6 2DG",
          latitude: 51.654768,
          longitude: -0.275839
        },
        "8b0a1eb7-e408-4db4-80b3-5434eecd68d3" => {
          provider_name: "The College of Osteopaths",
          ukprn: "10023442",
          instid: "0424",
          name: "Stoke-on-Trent",
          country: "England",
          postcode: "ST4 7NY",
          latitude: 53.008345,
          longitude: -2.204149
        },
        "d44baf24-cc8f-4eb8-967a-662ad38ae3d3" => {
          provider_name: "The Council of the Inns of Court",
          ukprn: "10081618",
          instid: "0412",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1R 5JD",
          latitude: 51.520051,
          longitude: -0.112604
        },
        "8118366d-719f-4924-a712-2fc60b3f3a97" => {
          provider_name: "The Engineering and Design Institute London",
          ukprn: "10083403",
          instid: "0435",
          name: "Entire HEP",
          country: "England",
          postcode: "SE16 7LG",
          latitude: 51.496915,
          longitude: -0.041859
        },
        "165fdc64-646f-4555-a623-6f8d774675d3" => {
          provider_name: "The Film Education Training Trust Limited",
          ukprn: "10004035",
          instid: "0359",
          name: "Entire HEP",
          country: "England",
          postcode: "SW6 1QR",
          latitude: 51.482111,
          longitude: -0.197732
        },
        "68c3371c-a7b8-4924-a712-c3265e4baf2b" => {
          provider_name: "The Institute of Cancer Research",
          ukprn: "10003324",
          instid: "0188",
          name: "Entire HEP",
          country: "England",
          postcode: "SW7 3RP",
          latitude: 51.490783,
          longitude: -0.181646
        },
        "1c3a9549-6efe-4360-9099-11ffe0faae24" => {
          provider_name: "The Institute of Ismaili Studies",
          ukprn: "10067388",
          instid: "0360",
          name: "Entire HEP",
          country: "England",
          postcode: "N1C 4DN",
          latitude: 51.537412,
          longitude: -0.123972
        },
        "efd00288-169b-4800-a77c-aa3952d0bbd9" => {
          provider_name: "The Islamic College",
          ukprn: "10029682",
          instid: "0298",
          name: "Entire HEP",
          country: "England",
          postcode: "NW10 2SW",
          latitude: 51.546408,
          longitude: -0.230917
        },
        "6938c497-034d-42a4-9465-0ae71501f377" => {
          provider_name: "The King's Foundation",
          ukprn: "10083476",
          instid: "0414",
          name: "Entire HEP",
          country: "England",
          postcode: "EC2A 3SG",
          latitude: 51.525785,
          longitude: -0.081401
        },
        "acf66a20-8912-4257-acf1-eabb0e74c508" => {
          provider_name: "The Liverpool Institute for Performing Arts",
          ukprn: "10003945",
          instid: "0209",
          name: "Entire HEP",
          country: "England",
          postcode: "L1 9HF",
          latitude: 53.399657,
          longitude: -2.972271
        },
        "7dc5797e-d2b0-4a22-a76e-43c9a3d1926c" => {
          provider_name: "The London College",
          ukprn: "10015506",
          instid: "0243",
          name: "Entire HEP",
          country: "England",
          postcode: "TW5 9QX",
          latitude: 51.478444,
          longitude: -0.409208
        },
        "2ded570d-ab09-43bb-8d51-a59573058d6a" => {
          provider_name: "The London Institute of Banking & Finance",
          ukprn: "10008289",
          instid: "0217",
          name: "Entire HEP",
          country: "England",
          postcode: "EC3R 8EB",
          latitude: 51.509976,
          longitude: -0.083999
        },
        "f937bec2-41eb-40aa-99c0-9026c7b39db5" => {
          provider_name: "The London Interdisciplinary School Ltd",
          ukprn: "10067623",
          instid: "0428",
          name: "Entire HEP",
          country: "England",
          postcode: "E1 1EW",
          latitude: 51.516738,
          longitude: -0.067671
        },
        "e93b6af8-9807-4031-8638-e5d9a176568b" => {
          provider_name: "The London School of Architecture",
          ukprn: "10062810",
          instid: "0354",
          name: "Entire HEP",
          country: "England",
          postcode: "N1 5RA",
          latitude: 51.536147,
          longitude: -0.078788
        },
        "0faf2df4-b3e0-4111-bb50-e5c57ab0ce1f" => {
          provider_name: "The Manchester Metropolitan University",
          ukprn: "10004180",
          instid: "0066",
          name: "Crewe campus",
          country: "England",
          postcode: "CW1 5DU",
          latitude: 53.092752,
          longitude: -2.422279
        },
        "79e307c2-35a7-465e-ad62-e2ee72d28bfd" => {
          provider_name: "The Manchester Metropolitan University",
          ukprn: "10004180",
          instid: "0066",
          name: "Entire HEP",
          country: "England",
          postcode: "M15 6BH",
          latitude: 53.470917,
          longitude: -2.239115
        },
        "4a4a6979-d142-4048-aa0c-c9dc21585280" => {
          provider_name: "The Markfield Institute of Higher Education",
          ukprn: "10023452",
          instid: "0331",
          name: "Main campus",
          country: "England",
          postcode: "LE67 9SY",
          latitude: 52.676482,
          longitude: -1.271644
        },
        "289287f5-310a-4ab4-99c8-eddbf76dc9cd" => {
          provider_name: "The Markfield Institute of Higher Education",
          ukprn: "10023452",
          instid: "0331",
          name: "MIHE-Birmingham",
          country: "England",
          postcode: "B6 4UX",
          latitude: 52.498461,
          longitude: -1.894075
        },
        "d3371131-1fa4-4bc4-bfe3-a541b65fe10f" => {
          provider_name: "The Markfield Institute of Higher Education",
          ukprn: "10023452",
          instid: "0331",
          name: "MIHE-LONDON",
          country: "England",
          postcode: "E1 1JQ",
          latitude: 51.517468,
          longitude: -0.065579
        },
        "98359900-6326-4dfb-a3bc-4d6bcad1a621" => {
          provider_name: "The Metanoia Institute",
          ukprn: "10004320",
          instid: "0314",
          name: "Engineer's House",
          country: "England",
          postcode: "BS8 3NB",
          latitude: 51.458721,
          longitude: -2.625829
        },
        "e579e17f-c268-4f1a-a8d7-c9631e796298" => {
          provider_name: "The Metanoia Institute",
          ukprn: "10004320",
          instid: "0314",
          name: "Gunnersbury Avenue",
          country: "England",
          postcode: "W5 3XD",
          latitude: 51.506276,
          longitude: -0.291032
        },
        "f1ea8f41-cbe1-4727-8970-f0bc1adbe033" => {
          provider_name: "The Metanoia Institute",
          ukprn: "10004320",
          instid: "0314",
          name: "Main campus",
          country: "England",
          postcode: "W5 2QB",
          latitude: 51.512626,
          longitude: -0.293576
        },
        "877e1463-36a7-4a2f-b4bd-1c5da7fda171" => {
          provider_name: "The Metanoia Institute",
          ukprn: "10004320",
          instid: "0314",
          name: "The Barn",
          country: "England",
          postcode: "SK9 4LD",
          latitude: 53.355998,
          longitude: -2.243744
        },
        "1a9d835d-eb49-4e06-bac8-61c613ad598b" => {
          provider_name: "The Minster Centre",
          ukprn: "10032277",
          instid: "0321",
          name: "Entire HEP",
          country: "England",
          postcode: "NW6 6RD",
          latitude: 51.537394,
          longitude: -0.203311
        },
        "de7e5950-c9d7-430a-bfd9-9f432c5a38b5" => {
          provider_name: "The National Film and Television School",
          ukprn: "10004511",
          instid: "0229",
          name: "Entire HEP",
          country: "England",
          postcode: "HP9 1LG",
          latitude: 51.60481,
          longitude: -0.638465
        },
        "8d0dd24a-93d9-4543-9002-8c6a244fd81c" => {
          provider_name: "The Northern School of Art",
          ukprn: "10001503",
          instid: "1073",
          name: "Main campus",
          country: "England",
          postcode: "TS24 7DJ",
          latitude: 54.686544,
          longitude: -1.205256
        },
        "a6a4f133-71f8-40dc-8d94-3180ec66d695" => {
          provider_name: "The Nottingham Trent University",
          ukprn: "10004797",
          instid: "0071",
          name: "Confetti Institute of Creative Technologies",
          country: "England",
          postcode: "NG1 3LL",
          latitude: 52.955621,
          longitude: -1.143472
        },
        "2b10f6a1-710a-4127-8d9a-58e20cbc029e" => {
          provider_name: "The Nottingham Trent University",
          ukprn: "10004797",
          instid: "0071",
          name: "Main campus",
          country: "England",
          postcode: "NG1 4BU",
          latitude: 52.956436,
          longitude: -1.152077
        },
        "b8555072-1953-4c84-aed9-cfd0e272e74a" => {
          provider_name: "The Oldham College",
          ukprn: "10006770",
          instid: "1067",
          name: "Main campus",
          country: "England",
          postcode: "OL1 1BB",
          latitude: 53.538441,
          longitude: -2.114091
        },
        "a4c4175d-fd02-4034-b747-f5879c628802" => {
          provider_name: "The Open University in England",
          ukprn: "10007773",
          instid: "0001",
          name: "Main campus",
          country: "England",
          postcode: "MK7 6AA",
          latitude: 52.024914,
          longitude: -0.709747
        },
        "0cc62fec-219b-4292-9d3e-f47381123c85" => {
          provider_name: "The Open University in England",
          ukprn: "10007773",
          instid: "0364",
          name: "Main campus",
          country: "England",
          postcode: "MK7 6AA",
          latitude: 52.024914,
          longitude: -0.709747
        },
        "33b78040-1d03-4285-87f0-06fbd40855be" => {
          provider_name: "The Open University in Northern Ireland",
          ukprn: "10007773",
          instid: "0001",
          name: "Northern Ireland (excl. PGRs)",
          country: "Northern Ireland",
          postcode: "BT1 3GN",
          latitude: 54.596824,
          longitude: -5.923568
        },
        "e37f66ea-cd33-44ee-86d0-1b9b75c0c6a1" => {
          provider_name: "The Open University in Northern Ireland",
          ukprn: "10007773",
          instid: "0365",
          name: "Northern Ireland (excl. PGRs)",
          country: "Northern Ireland",
          postcode: "BT1 3GN",
          latitude: 54.596824,
          longitude: -5.923568
        },
        "0839e718-ea49-4382-b084-130fd09d6032" => {
          provider_name: "The Open University in Scotland",
          ukprn: "10007773",
          instid: "0001",
          name: "Scotland (excl. PGRs)",
          country: "Scotland",
          postcode: "EH3 7QJ",
          latitude: 55.950635,
          longitude: -3.214038
        },
        "2dbb0309-e217-4824-84ea-cc5c1966c5d4" => {
          provider_name: "The Open University in Scotland",
          ukprn: "10007773",
          instid: "0366",
          name: "Scotland (excl. PGRs)",
          country: "Scotland",
          postcode: "EH3 7QJ",
          latitude: 55.950635,
          longitude: -3.214038
        },
        "0b4ec931-44e7-4b9e-8436-36c083f0060c" => {
          provider_name: "The Open University in Wales",
          ukprn: "10007773",
          instid: "0001",
          name: "Wales (excl. PGRs)",
          country: "Wales",
          postcode: "CF10 1AP",
          latitude: 51.476507,
          longitude: -3.175104
        },
        "59813173-a91b-4197-b10b-c6eb96307a0e" => {
          provider_name: "The Open University in Wales",
          ukprn: "10007773",
          instid: "0367",
          name: "Wales (excl. PGRs)",
          country: "Wales",
          postcode: "CF10 1AP",
          latitude: 51.476507,
          longitude: -3.175104
        },
        "f572061c-3edf-4be9-ad59-89e87544ea9f" => {
          provider_name: "The Place, London Contemporary Dance School (LCDS)",
          ukprn: "10004028",
          instid: "0444",
          name: "Main campus",
          country: "England",
          postcode: "WC1H 9PY",
          latitude: 51.5273,
          longitude: -0.128984
        },
        "7ee26788-6684-4827-997d-d8163d7ba592" => {
          provider_name: "The Queen's Foundation for Ecumenical Theological Education",
          ukprn: "10032282",
          instid: "0315",
          name: "Entire HEP",
          country: "England",
          postcode: "B15 2QH",
          latitude: 52.457494,
          longitude: -1.930979
        },
        "e98ed63f-6ab2-4d95-a2d0-80fea42ccf8b" => {
          provider_name: "The Royal Central School of Speech and Drama",
          ukprn: "10007816",
          instid: "0010",
          name: "Entire HEP",
          country: "England",
          postcode: "NW3 3HY",
          latitude: 51.544325,
          longitude: -0.174205
        },
        "fed1a582-d5e4-45a7-a907-ae6ba25632e8" => {
          provider_name: "The Royal College of Nursing",
          ukprn: "10007836",
          instid: "0006",
          name: "Entire institution",
          country: "England",
          postcode: "W1G 0RN",
          latitude: 51.516014,
          longitude: -0.145921
        },
        "6a512307-77f7-4577-9f58-990192a827d7" => {
          provider_name: "The Royal Veterinary College",
          ukprn: "10007779",
          instid: "0143",
          name: "Hawkshead campus",
          country: "England",
          postcode: "AL9 7TA",
          latitude: 51.713575,
          longitude: -0.210795
        },
        "aa57ff3f-a6c8-4be5-91be-0c4f0582b3fc" => {
          provider_name: "The Royal Veterinary College",
          ukprn: "10007779",
          instid: "0143",
          name: "Main campus",
          country: "England",
          postcode: "NW1 0TU",
          latitude: 51.536851,
          longitude: -0.133524
        },
        "1ba87bd0-c6d2-4d4c-9d06-1aa53756a566" => {
          provider_name: "The School of Information Risk Management",
          ukprn: "10057622",
          instid: "0459",
          name: "Main campus",
          country: "England",
          postcode: "IG1 2DR",
          latitude: 51.557835,
          longitude: 0.070415
        },
        "ee4d48a4-dd8d-4745-ac3b-e3d57135d33c" => {
          provider_name: "The School of Pharmacy",
          ukprn: "10007781",
          instid: "0147",
          name: "Entire institution",
          country: "England",
          postcode: "WC1N 1AX",
          latitude: 51.525083,
          longitude: -0.122458
        },
        "45dded18-8fed-4044-a7bf-f21b5b8f7304" => {
          provider_name: "The Sheffield College",
          ukprn: "10005788",
          instid: "1043",
          name: "Main campus",
          country: "England",
          postcode: "S2 2RL",
          latitude: 53.3726,
          longitude: -1.460137
        },
        "a8b57207-ec99-4281-b6ea-aa5fc98f25e1" => {
          provider_name: "The Sherwood Institute",
          ukprn: "10053279",
          instid: "0322",
          name: "Main campus",
          country: "England",
          postcode: "NG1 6FW",
          latitude: 52.951727,
          longitude: -1.154563
        },
        "cfb02b9e-a3cd-4f67-95ee-1337f7de8ea6" => {
          provider_name: "The Sherwood Psychotherapy Training Institute Limited",
          ukprn: "10023458",
          instid: "0407",
          name: "Entire HEP",
          country: "England",
          postcode: "NG7 1FW",
          latitude: 52.947393,
          longitude: -1.158175
        },
        "70ba5a33-ff74-408f-8d82-cca31b41c32a" => {
          provider_name: "The Trafford College Group",
          ukprn: "10005998",
          instid: "1023",
          name: "Main campus",
          country: "England",
          postcode: "WA14 5PQ",
          latitude: 53.405469,
          longitude: -2.349545
        },
        "7390af38-6be6-4a27-80aa-cdf60a22701f" => {
          provider_name: "The University College of Osteopathy",
          ukprn: "10000936",
          instid: "0337",
          name: "Entire HEP",
          country: "England",
          postcode: "SE1 1JE",
          latitude: 51.50008,
          longitude: -0.094339
        },
        "09f9603a-5025-4dd1-8085-9f50a6739fea" => {
          provider_name: "The University of Aberdeen",
          ukprn: "10007783",
          instid: "0170",
          name: "Doha Campus",
          country: "Qatar",
          latitude: 57.164841,
          longitude: -2.100236
        },
        "11fe6cf7-0e04-45ea-a9a8-4b8cf2377249" => {
          provider_name: "The University of Aberdeen",
          ukprn: "10007783",
          instid: "0170",
          name: "Main campus",
          country: "Scotland",
          postcode: "AB24 3FX",
          latitude: 57.164841,
          longitude: -2.100236
        },
        "e9ab949c-600c-429a-9c0a-31a47c48a2af" => {
          provider_name: "The University of Bath",
          ukprn: "10007850",
          instid: "0109",
          name: "Entire HEP",
          country: "England",
          postcode: "BA2 7AY",
          latitude: 51.379324,
          longitude: -2.327157
        },
        "44be2cec-1385-47c4-a5fc-91c94a6f06db" => {
          provider_name: "The University of Bath",
          ukprn: "10007850",
          instid: "0109",
          name: "Univ. of Bath in Swindon",
          country: "England",
          postcode: "SN3 3JR",
          latitude: 51.563796,
          longitude: -1.752151
        },
        "2bb81038-f100-422b-8c26-9176a0bf6a94" => {
          provider_name: "The University of Birmingham",
          ukprn: "10006840",
          instid: "0110",
          name: "Dubai",
          country: "United Arab Emirates",
          latitude: 52.453282,
          longitude: -1.92789
        },
        "38ed1de1-1f02-4f86-9c9d-45542af9d153" => {
          provider_name: "The University of Birmingham",
          ukprn: "10006840",
          instid: "0110",
          name: "Main campus",
          country: "England",
          postcode: "B15 2TT",
          latitude: 52.453282,
          longitude: -1.92789
        },
        "9efb7435-708f-43ac-bbee-74161eb03540" => {
          provider_name: "The University of Bradford",
          ukprn: "10007785",
          instid: "0111",
          name: "Entire HEP",
          country: "England",
          postcode: "BD7 1DP",
          latitude: 53.791584,
          longitude: -1.763774
        },
        "492264d2-52f9-48bd-976a-fa052c398f44" => {
          provider_name: "The University of Brighton",
          ukprn: "10000886",
          instid: "0051",
          name: "Eastbourne",
          country: "England",
          postcode: "BN20 7UR",
          latitude: 50.755482,
          longitude: 0.265471
        },
        "6f52ffe2-7485-46fd-a071-c77684232eec" => {
          provider_name: "The University of Brighton",
          ukprn: "10000886",
          instid: "0051",
          name: "Main campus",
          country: "England",
          postcode: "BN2 4GJ",
          latitude: 50.844419,
          longitude: -0.11946
        },
        "0288bdcf-9e93-4c73-95fc-2df228da0f96" => {
          provider_name: "The University of Bristol",
          ukprn: "10007786",
          instid: "0112",
          name: "Entire HEP",
          country: "England",
          postcode: "BS8 1TH",
          latitude: 51.459066,
          longitude: -2.603291
        },
        "01ca3bb5-a287-49ef-a688-db85034ffff7" => {
          provider_name: "The University of Buckingham",
          ukprn: "10007787",
          instid: "0203",
          name: "Crewe",
          country: "England",
          postcode: "CW1 5DU",
          latitude: 53.092752,
          longitude: -2.422279
        },
        "7bc839ea-10c9-46c4-93f2-5e663d734dc3" => {
          provider_name: "The University of Buckingham",
          ukprn: "10007787",
          instid: "0203",
          name: "Ealing Hospital",
          country: "England",
          postcode: "UB1 3HW",
          latitude: 51.507606,
          longitude: -0.345495
        },
        "8c730381-94d7-4e17-b95c-9f77e428d76d" => {
          provider_name: "The University of Buckingham",
          ukprn: "10007787",
          instid: "0203",
          name: "London",
          country: "England",
          postcode: "WC1E 6HJ",
          latitude: 51.521778,
          longitude: -0.132183
        },
        "b2b6747e-c388-46a7-8148-7964779e61e7" => {
          provider_name: "The University of Buckingham",
          ukprn: "10007787",
          instid: "0203",
          name: "Main campus",
          country: "England",
          postcode: "MK18 1EG",
          latitude: 51.995998,
          longitude: -0.991839
        },
        "bb7f4cb4-0934-4b65-8963-7e14d52f224b" => {
          provider_name: "The University of Cambridge",
          ukprn: "10007788",
          instid: "0114",
          name: "Entire HEP",
          country: "England",
          postcode: "CB2 1TN",
          latitude: 52.205105,
          longitude: 0.116179
        },
        "9d87a03f-b7c5-41f8-881b-e0bfec85cd9e" => {
          provider_name: "The University of Chichester",
          ukprn: "10007137",
          instid: "0082",
          name: "Entire HEP",
          country: "England",
          postcode: "PO19 6PE",
          latitude: 50.84431,
          longitude: -0.77501
        },
        "3e666902-b4c4-4577-84a3-ae4b2cc34977" => {
          provider_name: "The University of Chichester",
          ukprn: "10007137",
          instid: "0082",
          name: "Isle of Wight campus",
          country: "England",
          postcode: "PO30 5TA",
          latitude: 50.706435,
          longitude: -1.296665
        },
        "d7d797a3-ab44-47aa-b0ca-bada1490c744" => {
          provider_name: "The University of Dundee",
          ukprn: "10007852",
          instid: "0172",
          name: "Kirkcaldy",
          country: "Scotland",
          postcode: "KY2 5YS",
          latitude: 56.111331,
          longitude: -3.168743
        },
        "749d0817-fa3c-42fb-a313-915f7effb67c" => {
          provider_name: "The University of Dundee",
          ukprn: "10007852",
          instid: "0172",
          name: "Main campus",
          country: "Scotland",
          postcode: "DD1 4HN",
          latitude: 56.457345,
          longitude: -2.978269
        },
        "8b8dcb14-23c4-4e89-b657-5150b317cfb3" => {
          provider_name: "The University of Dundee",
          ukprn: "10007852",
          instid: "0172",
          name: "Ninewells",
          country: "Scotland",
          postcode: "DD1 9SY",
          latitude: 56.461679,
          longitude: -2.991415
        },
        "448672d4-9ff5-4cf5-91c7-d7a3be8b2cfe" => {
          provider_name: "The University of East Anglia",
          ukprn: "10007789",
          instid: "0117",
          name: "Entire HEP",
          country: "England",
          postcode: "NR4 7TJ",
          latitude: 52.622369,
          longitude: 1.241391
        },
        "63459412-2c39-4338-8f50-c4c74058b0df" => {
          provider_name: "The University of East Anglia",
          ukprn: "10007789",
          instid: "0117",
          name: "UEA LONDON",
          country: "England",
          postcode: "E1 7EZ",
          latitude: 51.516877,
          longitude: -0.076644
        },
        "5bd14b55-0651-4a01-bdcf-c4096a294683" => {
          provider_name: "The University of East London",
          ukprn: "10007144",
          instid: "0058",
          name: "Entire HEP",
          country: "England",
          postcode: "E16 2RD",
          latitude: 51.507567,
          longitude: 0.063234
        },
        "a06fb9b2-c00e-4187-b647-ef6de3887594" => {
          provider_name: "The University of Edinburgh",
          ukprn: "10007790",
          instid: "0167",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "EH8 9YL",
          latitude: 55.947691,
          longitude: -3.187347
        },
        "0833f692-7664-4718-b9f5-4fe56089596e" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Chimera",
          country: "England",
          postcode: "IP5 3RE",
          latitude: 52.058954,
          longitude: 1.279001
        },
        "4d4ebe78-3009-4a01-9611-eb067edae756" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Colchester Institute",
          country: "England",
          postcode: "CO3 3LL",
          latitude: 51.893517,
          longitude: 0.888574
        },
        "b44287e2-63b8-4747-a1e8-fdd6b9d863b1" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "East 15 (Loughton) campus",
          country: "England",
          postcode: "IG10 3RY",
          latitude: 51.649954,
          longitude: 0.076776
        },
        "a69f170b-9b64-4d5f-a0b5-bfd35de9775c" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Kaplan Open Learning",
          country: "England",
          postcode: "LS1 2RP",
          latitude: 53.798946,
          longitude: -1.553987
        },
        "9e05bb9e-1182-4f05-aec9-0a69d83c9ba6" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Main campus",
          country: "England",
          postcode: "CO4 3SQ",
          latitude: 51.87681,
          longitude: 0.946585
        },
        "7cb1623d-1698-4922-997e-ff03cf2a44f4" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "South East Essex College, Southend",
          country: "England",
          postcode: "SS1 1ND",
          latitude: 51.537958,
          longitude: 0.71191
        },
        "f4032402-77a5-490a-9f9f-05c8f2ae5e72" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Southend campus",
          country: "England",
          postcode: "SS1 1JE",
          latitude: 51.534837,
          longitude: 0.713873
        },
        "2355cfee-ffe2-4f2b-bcd7-510d84cd2ad9" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Tavistock and Portman NHS Trust",
          country: "England",
          postcode: "NW3 5BA",
          latitude: 51.546898,
          longitude: -0.175443
        },
        "0073325c-7889-4b42-a2c2-da0e85a0c6a2" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "University campus Suffolk",
          country: "England",
          postcode: "IP4 1LZ",
          latitude: 52.05555,
          longitude: 1.16342
        },
        "7ee770cb-dd3c-4470-a527-d6c9267cc54b" => {
          provider_name: "The University of Essex",
          ukprn: "10007791",
          instid: "0118",
          name: "Writtle campus",
          country: "England",
          postcode: "CM1 3RR",
          latitude: 51.737196,
          longitude: 0.428133
        },
        "2d99de17-4a53-4ae3-9fff-54750ac63896" => {
          provider_name: "The University of Exeter",
          ukprn: "10007792",
          instid: "0119",
          name: "Cornwall campus",
          country: "England",
          postcode: "TR10 9EZ",
          latitude: 50.168627,
          longitude: -5.125898
        },
        "15343b87-b62d-4e06-8139-a58707c24f1d" => {
          provider_name: "The University of Exeter",
          ukprn: "10007792",
          instid: "0119",
          name: "Main campus",
          country: "England",
          postcode: "EX4 4SB",
          latitude: 50.733253,
          longitude: -3.534064
        },
        "ad2e44bd-d61f-4d6a-a1b5-ad060f629fdc" => {
          provider_name: "The University of Glasgow",
          ukprn: "10007794",
          instid: "0168",
          name: "Dumfries",
          country: "Scotland",
          postcode: "DG1 4ZL",
          latitude: 55.048093,
          longitude: -3.589128
        },
        "b224feb2-b22d-44fd-a5be-77dd890fb134" => {
          provider_name: "The University of Glasgow",
          ukprn: "10007794",
          instid: "0168",
          name: "Garscube",
          country: "Scotland",
          postcode: "G20 0TH",
          latitude: 55.901983,
          longitude: -4.313033
        },
        "7e79e3ce-0f19-4d10-81d1-78afc88eac84" => {
          provider_name: "The University of Glasgow",
          ukprn: "10007794",
          instid: "0168",
          name: "Main campus",
          country: "Scotland",
          postcode: "G12 8QQ",
          latitude: 55.871751,
          longitude: -4.28836
        },
        "2e904b22-6c1a-4a46-8013-3756ef2d560d" => {
          provider_name: "The University of Glasgow",
          ukprn: "10007794",
          instid: "0168",
          name: "Singapore Institute of Technology",
          country: "Singapore",
          latitude: 55.871751,
          longitude: -4.28836
        },
        "e8eaf7dd-3862-40f4-8532-0ed838648e38" => {
          provider_name: "The University of Greenwich",
          ukprn: "10007146",
          instid: "0059",
          name: "Main campus",
          country: "England",
          postcode: "SE10 9LS",
          latitude: 51.484468,
          longitude: -0.004005
        },
        "10e77c12-366a-499d-8a51-015d584d3824" => {
          provider_name: "The University of Greenwich",
          ukprn: "10007146",
          instid: "0059",
          name: "Medway campus",
          country: "England",
          postcode: "ME4 4AW",
          latitude: 51.397199,
          longitude: 0.540105
        },
        "a3bf867e-9a96-4fe2-859e-933d56f399d3" => {
          provider_name: "The University of Huddersfield",
          ukprn: "10007148",
          instid: "0061",
          name: "Entire HEP",
          country: "England",
          postcode: "HD1 3DH",
          latitude: 53.643678,
          longitude: -1.778726
        },
        "460436da-badc-45b8-843b-8b617738653f" => {
          provider_name: "The University of Huddersfield",
          ukprn: "10007148",
          instid: "0061",
          name: "University Campus Barnsley",
          country: "England",
          postcode: "S70 2AN",
          latitude: 53.55485,
          longitude: -1.481928
        },
        "18750111-5699-460e-a499-1b16cb3df031" => {
          provider_name: "The University of Huddersfield",
          ukprn: "10007148",
          instid: "0061",
          name: "University Campus Oldham",
          country: "England",
          postcode: "OL1 1BB",
          latitude: 53.53847,
          longitude: -2.114138
        },
        "79139df3-db28-4030-96a4-645dcd0957e2" => {
          provider_name: "The University of Hull",
          ukprn: "10007149",
          instid: "0120",
          name: "Entire HEP",
          country: "England",
          postcode: "HU6 7RX",
          latitude: 53.771778,
          longitude: -0.366384
        },
        "7cf8d692-ab19-403c-9203-82877d795313" => {
          provider_name: "The University of Hull",
          ukprn: "10007149",
          instid: "0120",
          name: "Scarborough campus",
          country: "England",
          postcode: "YO11 3AZ",
          latitude: 54.262655,
          longitude: -0.394603
        },
        "a6960dd9-0696-4822-8722-66f3ae291600" => {
          provider_name: "The University of Kent",
          ukprn: "10007150",
          instid: "0122",
          name: "Brussels",
          country: "Belgium",
          latitude: 51.298503,
          longitude: 1.070975
        },
        "53a8a21b-29d7-4865-82a0-4d6bd99b9209" => {
          provider_name: "The University of Kent",
          ukprn: "10007150",
          instid: "0122",
          name: "Main campus",
          country: "England",
          postcode: "CT2 7NZ",
          latitude: 51.298503,
          longitude: 1.070975
        },
        "1af43ded-21af-4bd5-b748-a51b26e4bb05" => {
          provider_name: "The University of Kent",
          ukprn: "10007150",
          instid: "0122",
          name: "Medway",
          country: "England",
          postcode: "ME4 4AW",
          latitude: 51.397199,
          longitude: 0.540105
        },
        "6f72c951-922f-48f8-8b16-42effc90d1d0" => {
          provider_name: "The University of Kent",
          ukprn: "10007150",
          instid: "0122",
          name: "Paris",
          country: "France",
          latitude: 51.298503,
          longitude: 1.070975
        },
        "cac9981c-7a40-4f77-9163-7e70c262b5c2" => {
          provider_name: "The University of Lancaster",
          ukprn: "10007768",
          instid: "0123",
          name: "Entire HEP",
          country: "England",
          postcode: "LA1 4YW",
          latitude: 54.010418,
          longitude: -2.786451
        },
        "5d01d985-2fd5-4a99-98b9-7db336178770" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Berlin (GISMA)",
          country: "Germany",
          latitude: 51.521704,
          longitude: -0.089633
        },
        "c6254da6-02d4-43c7-bde5-cd998f8e6d3a" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Birmingham",
          country: "England",
          postcode: "B18 6AQ",
          latitude: 52.489093,
          longitude: -1.907406
        },
        "a4fca1aa-7dce-467c-89c7-e77d98e2b36d" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Bristol",
          country: "England",
          postcode: "BS1 6HG",
          latitude: 51.450822,
          longitude: -2.585193
        },
        "eec9d6c6-21e3-4712-b691-4e5d6e9c8313" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Chester",
          country: "England",
          postcode: "CH3 7AB",
          latitude: 53.185898,
          longitude: -2.842289
        },
        "428d228f-00a5-41d4-979f-2d3984051052" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Exeter",
          country: "England",
          postcode: "EX4 4RJ",
          latitude: 50.736517,
          longitude: -3.531407
        },
        "ce77b231-2d15-48ba-8055-d452592b98cf" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Guildford",
          country: "England",
          postcode: "GU3 1HA",
          latitude: 51.224159,
          longitude: -0.583024
        },
        "caca5905-3a80-420d-a027-a110e8a8c80b" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Hong Kong",
          country: "Hong Kong (Special Administrative Region of China) [Hong Kong]",
          latitude: 51.521704,
          longitude: -0.089633
        },
        "7931be95-b8d7-41e1-a6aa-2398ba5e7ac0" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "IE University",
          country: "Spain",
          latitude: 51.521704,
          longitude: -0.089633
        },
        "124fd22a-17c0-4fb7-b98c-885e1fb3dabb" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Leeds",
          country: "England",
          postcode: "LS1 5HD",
          latitude: 53.797928,
          longitude: -1.54673
        },
        "f69de733-5d5b-47df-a2d7-c09636adf12a" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Liverpool",
          country: "England",
          postcode: "L69 7ZR",
          latitude: 53.401661,
          longitude: -2.964526
        },
        "62c0c03b-64fb-4f78-b1a6-39a5cbc3d2f9" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "London Bloomsbury",
          country: "England",
          postcode: "WC1E 7DE",
          latitude: 51.520022,
          longitude: -0.131589
        },
        "743c069f-8206-4705-9e67-9a87957567cc" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "London Moorgate",
          country: "England",
          postcode: "EC1Y 8HQ",
          latitude: 51.521704,
          longitude: -0.089633
        },
        "493ee3a5-503b-4f00-8cb1-b68ab50b34ae" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Manchester",
          country: "England",
          postcode: "M1 4HJ",
          latitude: 53.480282,
          longitude: -2.239319
        },
        "7cb49a4e-7bf9-4e9d-a112-5110f6b1356b" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Newcastle",
          country: "England",
          postcode: "NE2 4HE",
          latitude: 54.982164,
          longitude: -1.610696
        },
        "d05495b6-900d-458b-82d1-ff5c934afb52" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Norwich",
          country: "England",
          postcode: "NR4 7TJ",
          latitude: 52.622369,
          longitude: 1.241391
        },
        "ad479074-f227-430c-8c53-90cf3142ea74" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Nottingham",
          country: "England",
          postcode: "NG1 6FS",
          latitude: 52.95183,
          longitude: -1.155397
        },
        "13215b39-8fb3-4131-908c-b9a396589f44" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Reading",
          country: "England",
          postcode: "RG1 5EX",
          latitude: 51.448594,
          longitude: -0.959221
        },
        "1aa02773-2af5-4d0a-9de1-e33190764089" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "Sheffield",
          country: "England",
          postcode: "S10 2TN",
          latitude: 53.381363,
          longitude: -1.48853
        },
        "ac27aa28-a953-43fa-b8d0-e4886353db9e" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "University of Chester",
          country: "England",
          postcode: "CH4 7AD",
          latitude: 53.185703,
          longitude: -2.882751
        },
        "86dcf7e6-43eb-4d8e-9159-f460723dc68f" => {
          provider_name: "The University of Law",
          ukprn: "10039956",
          instid: "0218",
          name: "York",
          country: "England",
          postcode: "YO23 2GA",
          latitude: 53.933334,
          longitude: -1.090457
        },
        "37effee5-3980-41f9-bd7a-99706ef71674" => {
          provider_name: "The University of Leeds",
          ukprn: "10007795",
          instid: "0124",
          name: "Bretton Hall",
          country: "England",
          postcode: "WF4 4LG",
          latitude: 53.607297,
          longitude: -1.563159
        },
        "b29a2e55-a759-491f-9380-ccfb3cfe5474" => {
          provider_name: "The University of Leeds",
          ukprn: "10007795",
          instid: "0124",
          name: "Entire HEP",
          country: "England",
          postcode: "LS2 9JT",
          latitude: 53.807958,
          longitude: -1.553329
        },
        "938d178f-979d-4dff-a21a-f7b86b6f4812" => {
          provider_name: "The University of Leeds",
          ukprn: "10007795",
          instid: "0124",
          name: "Wakefield",
          country: "England",
          postcode: "WF1 2DH",
          latitude: 53.685588,
          longitude: -1.503855
        },
        "d0132876-1c22-4aa0-8459-27ce9880942e" => {
          provider_name: "The University of Leicester",
          ukprn: "10007796",
          instid: "0125",
          name: "Entire HEP",
          country: "England",
          postcode: "LE1 7RH",
          latitude: 52.620665,
          longitude: -1.125526
        },
        "a45e56f4-93c4-4d97-8227-a081b0ddab10" => {
          provider_name: "The University of Lincoln",
          ukprn: "10007151",
          instid: "0062",
          name: "Holbeach",
          country: "England",
          postcode: "PE12 7PT",
          latitude: 52.809968,
          longitude: 0.01694
        },
        "fa4b2e5c-c41a-4724-8bcb-7f15cc60024f" => {
          provider_name: "The University of Lincoln",
          ukprn: "10007151",
          instid: "0062",
          name: "Hull campus",
          country: "England",
          postcode: "HU1 3BW",
          latitude: 53.746811,
          longitude: -0.3354
        },
        "5c1f0635-accf-490e-bd8d-9ccc82796b83" => {
          provider_name: "The University of Lincoln",
          ukprn: "10007151",
          instid: "0062",
          name: "Main campus",
          country: "England",
          postcode: "LN6 7TS",
          latitude: 53.228487,
          longitude: -0.547796
        },
        "e874de95-009d-4f54-a33c-e4fd8fcb9760" => {
          provider_name: "The University of Lincoln",
          ukprn: "10007151",
          instid: "0062",
          name: "Riseholme",
          country: "England",
          postcode: "LN2 2LG",
          latitude: 53.268445,
          longitude: -0.529737
        },
        "f0c93b84-8469-4323-bd66-e2af43bd57db" => {
          provider_name: "The University of Lincoln",
          ukprn: "10007151",
          instid: "0062",
          name: "Selborne",
          country: "England",
          postcode: "TQ6 0HJ",
          latitude: 50.357601,
          longitude: -3.583032
        },
        "0349a21f-5d6d-448f-8892-29fe3b34f2c1" => {
          provider_name: "The University of Liverpool",
          ukprn: "10006842",
          instid: "0126",
          name: "Entire HEP",
          country: "England",
          postcode: "L69 7ZX",
          latitude: 53.405779,
          longitude: -2.96662
        },
        "3009102b-adfe-4521-bb3b-6341390b820c" => {
          provider_name: "The University of Liverpool",
          ukprn: "10006842",
          instid: "0126",
          name: "London Campus",
          country: "England",
          postcode: "EC2A 1AG",
          latitude: 51.520916,
          longitude: -0.085428
        },
        "a68735ef-4b88-4dcb-9c10-150fe3c97981" => {
          provider_name: "The University of Manchester",
          ukprn: "10007798",
          instid: "0204",
          name: "Jodrell Bank Observatory",
          country: "England",
          postcode: "SK11 9DL",
          latitude: 53.236104,
          longitude: -2.306586
        },
        "0e50a415-e2de-4355-b480-b730a1c8b2bf" => {
          provider_name: "The University of Manchester",
          ukprn: "10007798",
          instid: "0204",
          name: "Main campus",
          country: "England",
          postcode: "M13 9PL",
          latitude: 53.466926,
          longitude: -2.233578
        },
        "18187f4f-d1eb-4ac2-9363-47a33f102cb4" => {
          provider_name: "The University of Northampton",
          ukprn: "10007138",
          instid: "0027",
          name: "Entire HEP",
          country: "England",
          postcode: "NN1 5PH",
          latitude: 52.231606,
          longitude: -0.890179
        },
        "5cf391ed-4452-478e-920b-d6b7eac51ad8" => {
          provider_name: "The University of Oxford",
          ukprn: "10007774",
          instid: "0156",
          name: "Kenya",
          country: "Kenya",
          latitude: 51.758038,
          longitude: -1.26201
        },
        "0bfe47a6-ba62-444c-8896-3d7ef6c6d8de" => {
          provider_name: "The University of Oxford",
          ukprn: "10007774",
          instid: "0156",
          name: "Main campus",
          country: "England",
          postcode: "OX1 2JD",
          latitude: 51.758038,
          longitude: -1.26201
        },
        "cb9edbfe-3a28-4cc2-905c-e3d929d44fd8" => {
          provider_name: "The University of Oxford",
          ukprn: "10007774",
          instid: "0156",
          name: "Thailand",
          country: "Thailand",
          latitude: 51.758038,
          longitude: -1.26201
        },
        "3a781bcb-23f6-4694-97ec-f2f8848334df" => {
          provider_name: "The University of Oxford",
          ukprn: "10007774",
          instid: "0156",
          name: "Vietnam",
          country: "Vietnam [Viet Nam]",
          latitude: 51.758038,
          longitude: -1.26201
        },
        "0e232be0-888f-47cb-8acd-5eb2a0aec4f7" => {
          provider_name: "The University of Portsmouth",
          ukprn: "10007155",
          instid: "0074",
          name: "Entire HEP",
          country: "England",
          postcode: "PO1 2UP",
          latitude: 50.795187,
          longitude: -1.093628
        },
        "aac26615-1fa6-4021-a004-7ec1bd9b19d5" => {
          provider_name: "The University of Reading",
          ukprn: "10007802",
          instid: "0157",
          name: "Greenlands Campus",
          country: "England",
          postcode: "RG9 3AU",
          latitude: 51.562956,
          longitude: -0.882567
        },
        "03873001-7ebb-49e6-9fb6-66b5857a807f" => {
          provider_name: "The University of Reading",
          ukprn: "10007802",
          instid: "0157",
          name: "Main campus",
          country: "England",
          postcode: "RG6 6AH",
          latitude: 51.457625,
          longitude: -0.945636
        },
        "89b67ccc-d4bf-42d9-8e2f-7c69d8c9c9df" => {
          provider_name: "The University of Reading",
          ukprn: "10007802",
          instid: "0157",
          name: "University of Reading Malaysia",
          country: "Malaysia",
          latitude: 51.457625,
          longitude: -0.945636
        },
        "06779957-20f5-4422-9c5e-29c41289fb57" => {
          provider_name: "The University of Salford",
          ukprn: "10007156",
          instid: "0158",
          name: "Entire HEP",
          country: "England",
          postcode: "M5 4WT",
          latitude: 53.483487,
          longitude: -2.270651
        },
        "c59b7098-d1cc-403f-8df3-7c31b247553a" => {
          provider_name: "The University of Sheffield",
          ukprn: "10007157",
          instid: "0159",
          name: "AMRC Cymru",
          country: "Wales",
          postcode: "CH4 0DH",
          latitude: 53.17338,
          longitude: -2.963467
        },
        "5cd0fb02-f17e-4f93-93c9-515417a17eaf" => {
          provider_name: "The University of Sheffield",
          ukprn: "10007157",
          instid: "0159",
          name: "AMRC North West",
          country: "England",
          postcode: "PR1 2UX",
          latitude: 53.760469,
          longitude: -2.706608
        },
        "3aa8770b-2560-44ce-b07e-74748aaffd04" => {
          provider_name: "The University of Sheffield",
          ukprn: "10007157",
          instid: "0159",
          name: "Main campus",
          country: "England",
          postcode: "S10 2TN",
          latitude: 53.381363,
          longitude: -1.48853
        },
        "67d847ba-b3b8-49ff-8912-fa57067ccf4a" => {
          provider_name: "The University of Sheffield",
          ukprn: "10007157",
          instid: "0159",
          name: "NAMRC Birkenhead",
          country: "England",
          postcode: "CH41 9BP",
          latitude: 53.383516,
          longitude: -3.0117
        },
        "2029008c-53bd-483a-84df-420ca487ed3f" => {
          provider_name: "The University of Sheffield",
          ukprn: "10007157",
          instid: "0159",
          name: "NAMRC Midlands",
          country: "England",
          postcode: "DE24 9FU",
          latitude: 52.876851,
          longitude: -1.467867
        },
        "6d349875-75fe-4d27-a1d1-7665d7a30252" => {
          provider_name: "The University of Southampton",
          ukprn: "10007158",
          instid: "0160",
          name: "Main campus",
          country: "England",
          postcode: "SO17 1BJ",
          latitude: 50.934099,
          longitude: -1.395714
        },
        "3b80a062-189c-4be2-9c47-3cecc8a0db17" => {
          provider_name: "The University of Southampton",
          ukprn: "10007158",
          instid: "0160",
          name: "USMC",
          country: "Malaysia",
          latitude: 50.934099,
          longitude: -1.395714
        },
        "d25c0fa2-11f3-4ccc-9c97-266fa6be14c3" => {
          provider_name: "The University of Southampton",
          ukprn: "10007158",
          instid: "0160",
          name: "Winchester",
          country: "England",
          postcode: "SO23 8DL",
          latitude: 51.065897,
          longitude: -1.309144
        },
        "abbdf519-ba71-4a1a-b356-7252c54d983b" => {
          provider_name: "The University of St. Andrews",
          ukprn: "10007803",
          instid: "0173",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "KY16 9AJ",
          latitude: 56.341239,
          longitude: -2.793287
        },
        "d7013f44-7ca2-463a-be58-db8c5cbcbbee" => {
          provider_name: "The University of Stirling",
          ukprn: "10007804",
          instid: "0174",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "FK9 4LA",
          latitude: 56.145463,
          longitude: -3.920023
        },
        "951b5465-c365-419a-82d8-9d7408aa1145" => {
          provider_name: "The University of Stirling",
          ukprn: "10007804",
          instid: "0174",
          name: "Inverness",
          country: "Scotland",
          postcode: "IV2 3JH",
          latitude: 57.476244,
          longitude: -4.191332
        },
        "8df80dd8-36ef-4efc-8c4e-da3880afb464" => {
          provider_name: "The University of Stirling",
          ukprn: "10007804",
          instid: "0174",
          name: "London",
          country: "England",
          postcode: "E1 4PB",
          latitude: 51.523329,
          longitude: -0.037264
        },
        "88323ee6-e895-4cab-8f5f-c70f2aef86c0" => {
          provider_name: "The University of Stirling",
          ukprn: "10007804",
          instid: "0174",
          name: "Stornoway",
          country: "Scotland",
          postcode: "HS1 2AF",
          latitude: 58.221088,
          longitude: -6.384411
        },
        "3162c486-bd9b-4900-9a85-bd6b1f4f3b4e" => {
          provider_name: "The University of Strathclyde",
          ukprn: "10007805",
          instid: "0169",
          name: "Entire HEP",
          country: "Scotland",
          postcode: "G1 1XQ",
          latitude: 55.86125,
          longitude: -4.244706
        },
        "423b76f2-ef7a-4c2d-bef8-f6b61445f7db" => {
          provider_name: "The University of Sunderland",
          ukprn: "10007159",
          instid: "0078",
          name: "Main campus",
          country: "England",
          postcode: "SR1 3SD",
          latitude: 54.904456,
          longitude: -1.390973
        },
        "565e1633-8b00-4a6e-b535-dcda0eeac647" => {
          provider_name: "The University of Sunderland",
          ukprn: "10007159",
          instid: "0078",
          name: "University of Sunderland in Hong Kong",
          country: "Hong Kong (Special Administrative Region of China) [Hong Kong]",
          latitude: 54.904456,
          longitude: -1.390973
        },
        "85964e69-b521-466b-bb3a-07b5043d5e87" => {
          provider_name: "The University of Sunderland",
          ukprn: "10007159",
          instid: "0078",
          name: "University of Sunderland in London",
          country: "England",
          postcode: "E14 9SG",
          latitude: 51.500703,
          longitude: -0.014822
        },
        "34dc52ae-52bc-494f-87e3-d219e4547de7" => {
          provider_name: "The University of Surrey",
          ukprn: "10007160",
          instid: "0161",
          name: "Entire HEP",
          country: "England",
          postcode: "GU2 7XH",
          latitude: 51.242685,
          longitude: -0.587936
        },
        "ceb47a51-79fe-42fb-90e7-36ee8ca356dc" => {
          provider_name: "The University of Sussex",
          ukprn: "10007806",
          instid: "0162",
          name: "Entire HEP",
          country: "England",
          postcode: "BN1 9RH",
          latitude: 50.86447,
          longitude: -0.087076
        },
        "1ce506c6-3bd3-4646-8d4c-dbc6a4946c9d" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "Ayr Campus",
          country: "Scotland",
          postcode: "KA8 0SX",
          latitude: 55.458036,
          longitude: -4.615296
        },
        "5c72692f-26f7-4b3d-8a24-0a4118705170" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "Dumfries Campus",
          country: "Scotland",
          postcode: "DG1 4ZN",
          latitude: 55.049484,
          longitude: -3.589292
        },
        "812e565f-1d02-4973-a63c-9a9d0ca46218" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "Hamilton Campus",
          country: "Scotland",
          postcode: "ML3 0JB",
          latitude: 55.780129,
          longitude: -4.047587
        },
        "b847ba82-8f52-4ecd-a519-22600b30b376" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "Lanarkshire Campus",
          country: "Scotland",
          postcode: "G72 0LH",
          latitude: 55.779379,
          longitude: -4.106649
        },
        "d3877dad-079c-4a7c-8dd9-bf58b4db53ce" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "London Campus",
          country: "England",
          postcode: "SE1 6NP",
          latitude: 51.498513,
          longitude: -0.099778
        },
        "5737906b-9cda-4869-8300-bdac05064f65" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "London Republic Campus",
          country: "England",
          postcode: "E14 2BE",
          latitude: 51.510185,
          longitude: -0.0049
        },
        "030b57fa-1aa3-4ac5-b879-f7ff2a63655e" => {
          provider_name: "The University of the West of Scotland",
          ukprn: "10007800",
          instid: "0105",
          name: "Main campus",
          country: "Scotland",
          postcode: "PA1 2BE",
          latitude: 55.843478,
          longitude: -4.429969
        },
        "be1f1ea3-753f-421e-829b-cc3ed867860a" => {
          provider_name: "The University of Wales (central functions)",
          ukprn: "10008574",
          instid: "0186",
          name: "Centre for Advanced Welsh and Celtic Studies",
          country: "Wales",
          postcode: "SY23 3HH",
          latitude: 52.414476,
          longitude: -4.068488
        },
        "c5576aa5-7b83-48c5-9290-59dc9742a8c0" => {
          provider_name: "The University of Wales (central functions)",
          ukprn: "10008574",
          instid: "0186",
          name: "Entire HEP",
          country: "Wales",
          postcode: "CF10 3NS",
          latitude: 51.485538,
          longitude: -3.181031
        },
        "81914947-718e-437b-b88e-944bfa6bae8b" => {
          provider_name: "The University of Wales (central functions)",
          ukprn: "10008574",
          instid: "0186",
          name: "Gregynog",
          country: "Wales",
          postcode: "SY16 3PW",
          latitude: 52.567459,
          longitude: -3.352254
        },
        "9a946117-0c14-4952-830e-7f8a64b95331" => {
          provider_name: "The University of Wales (central functions)",
          ukprn: "10008574",
          instid: "0186",
          name: "Welsh Centre for Advanced Batch Manufacture",
          country: "Wales",
          postcode: "SA1 8AS",
          latitude: 51.620446,
          longitude: -3.933053
        },
        "b7737e51-1ddb-4ddc-a8b9-d3293080cef6" => {
          provider_name: "The University of Wales (central functions)",
          ukprn: "10008574",
          instid: "0186",
          name: "Welsh Centre for Advanced Batch Manufacture",
          country: "Wales",
          postcode: "SA1 8AS",
          latitude: 51.620446,
          longitude: -3.933053
        },
        "207a4891-d491-41df-9f72-bfea64a1fc55" => {
          provider_name: "The University of Wales (central functions)",
          ukprn: "10008574",
          instid: "0186",
          name: "Y Galeri, Caernarfon",
          country: "Wales",
          postcode: "LL55 1SQ",
          latitude: 53.143461,
          longitude: -4.275081
        },
        "6d117d23-0e6d-4ba4-b1d7-56b11e138dec" => {
          provider_name: "The University of Wales, Newport",
          ukprn: "10007853",
          instid: "0086",
          name: "Entire institution",
          country: "Wales",
          postcode: "NP18 3QT",
          latitude: 51.616517,
          longitude: -2.961925
        },
        "34afec87-2a63-461d-9007-1260e5b268ea" => {
          provider_name: "The University of Warwick",
          ukprn: "10007163",
          instid: "0163",
          name: "Main campus",
          country: "England",
          postcode: "CV4 7AL",
          latitude: 52.38581,
          longitude: -1.564814
        },
        "67fdf802-2eb7-44c3-8a5e-8b18a35ff5fd" => {
          provider_name: "The University of Warwick",
          ukprn: "10007163",
          instid: "0163",
          name: "Warwick Business School - London Base",
          country: "England",
          postcode: "SE1 9SG",
          latitude: 51.504962,
          longitude: -0.087651
        },
        "2b7eba95-38db-4db6-9cdc-8ab7481b0c6d" => {
          provider_name: "The University of West London",
          ukprn: "10006566",
          instid: "0080",
          name: "Brentford campis",
          country: "England",
          postcode: "TW8 9GA",
          latitude: 51.489441,
          longitude: -0.313902
        },
        "299f0b0b-de6c-4b61-a656-c82db2e3780a" => {
          provider_name: "The University of West London",
          ukprn: "10006566",
          instid: "0080",
          name: "Main campus",
          country: "England",
          postcode: "W5 5RF",
          latitude: 51.507259,
          longitude: -0.303013
        },
        "0ae091c8-9ad0-4ebe-acda-fed9b5a60c35" => {
          provider_name: "The University of West London",
          ukprn: "10006566",
          instid: "0080",
          name: "Reading Campus",
          country: "England",
          postcode: "RG1 7QF",
          latitude: 51.454545,
          longitude: -0.97732
        },
        "68765681-e769-4aa8-a12f-e820cfe435da" => {
          provider_name: "The University of West London",
          ukprn: "10006566",
          instid: "0080",
          name: "Ruskin Campus",
          country: "England",
          postcode: "OX3 9BZ",
          latitude: 51.766077,
          longitude: -1.214914
        },
        "65ffabf9-db2c-4481-bfbe-c09586e6b18d" => {
          provider_name: "The University of West London",
          ukprn: "10006566",
          instid: "0080",
          name: "Slough campus",
          country: "England",
          postcode: "SL1 4UT",
          latitude: 51.519717,
          longitude: -0.614647
        },
        "c2e6ba42-8933-4c9a-8f12-d36aedcebc9e" => {
          provider_name: "The University of Westminster",
          ukprn: "10007165",
          instid: "0083",
          name: "Cavendish Campus",
          country: "England",
          postcode: "W1W 6UW",
          latitude: 51.520832,
          longitude: -0.140132
        },
        "9536040d-7b11-413c-a646-5c07617c0cbd" => {
          provider_name: "The University of Westminster",
          ukprn: "10007165",
          instid: "0083",
          name: "Harrow Campus",
          country: "England",
          postcode: "HA1 3TP",
          latitude: 51.57732,
          longitude: -0.324377
        },
        "12e1cc99-e1e0-4e02-877d-d2c8d75c5c71" => {
          provider_name: "The University of Westminster",
          ukprn: "10007165",
          instid: "0083",
          name: "Main campus",
          country: "England",
          postcode: "W1B 2HW",
          latitude: 51.516978,
          longitude: -0.14306
        },
        "1b0fb0c4-1359-4f6f-b857-1de4b912d16b" => {
          provider_name: "The University of Westminster",
          ukprn: "10007165",
          instid: "0083",
          name: "Marylebone Campus",
          country: "England",
          postcode: "NW1 5LS",
          latitude: 51.522023,
          longitude: -0.154599
        },
        "befd6381-8ff9-4372-8230-01425ba066c9" => {
          provider_name: "The University of Westminster",
          ukprn: "10007165",
          instid: "0083",
          name: "Regent Campus",
          country: "England",
          postcode: "W1B 2HW",
          latitude: 51.516978,
          longitude: -0.14306
        },
        "52c5d61a-bd44-4e49-b11f-7b5af5fecb9d" => {
          provider_name: "The University of Winchester",
          ukprn: "10003614",
          instid: "0021",
          name: "Chute House",
          country: "England",
          postcode: "RG21 7QT",
          latitude: 51.265868,
          longitude: -1.088904
        },
        "bcd0137b-f5f3-44fc-ac5f-8501a2570d9e" => {
          provider_name: "The University of Winchester",
          ukprn: "10003614",
          instid: "0021",
          name: "Entire HEP",
          country: "England",
          postcode: "SO22 4NR",
          latitude: 51.060002,
          longitude: -1.32674
        },
        "1dc13d7d-0576-40a9-a1b1-5bc96deb9b99" => {
          provider_name: "The University of Wolverhampton",
          ukprn: "10007166",
          instid: "0085",
          name: "Burton campus",
          country: "England",
          postcode: "DE13 0RB",
          latitude: 52.817775,
          longitude: -1.656384
        },
        "50278f45-8c68-4057-8fcc-afe1f9f2a148" => {
          provider_name: "The University of Wolverhampton",
          ukprn: "10007166",
          instid: "0085",
          name: "Main campus",
          country: "England",
          postcode: "WV1 1LY",
          latitude: 52.588182,
          longitude: -2.12807
        },
        "e2d61a9a-495d-47cf-895b-a9ef3d4b7266" => {
          provider_name: "The University of Wolverhampton",
          ukprn: "10007166",
          instid: "0085",
          name: "Southwater Campus",
          country: "England",
          postcode: "TF3 4HZ",
          latitude: 52.675653,
          longitude: -2.451787
        },
        "e8e94fc8-13ff-4def-a270-4261ec59a3a1" => {
          provider_name: "The University of Wolverhampton",
          ukprn: "10007166",
          instid: "0085",
          name: "Telford campus",
          country: "England",
          postcode: "TF2 9NT",
          latitude: 52.683309,
          longitude: -2.425994
        },
        "c7cde45f-7270-409f-ad1d-367afd03c078" => {
          provider_name: "The University of Wolverhampton",
          ukprn: "10007166",
          instid: "0085",
          name: "Walsall campus",
          country: "England",
          postcode: "WS1 3BD",
          latitude: 52.571979,
          longitude: -1.970329
        },
        "5b8434a6-f03e-428a-b021-da227963d232" => {
          provider_name: "The University of York",
          ukprn: "10007167",
          instid: "0164",
          name: "Entire HEP",
          country: "England",
          postcode: "YO10 5DD",
          latitude: 53.948419,
          longitude: -1.053544
        },
        "fa375364-6c9a-4ec6-b2a5-18188c2d714e" => {
          provider_name: "The Windsor Forest Colleges Group",
          ukprn: "10002107",
          instid: "1010",
          name: "Main campus",
          country: "England",
          postcode: "SL3 8BY",
          latitude: 51.505512,
          longitude: -0.545036
        },
        "9f25e5e8-b2f4-4846-9b55-1020d7f45ebb" => {
          provider_name: "The WKCIC Group",
          ukprn: "10007455",
          instid: "1008",
          name: "Main campus",
          country: "England",
          postcode: "NW1 3HB",
          latitude: 51.526244,
          longitude: -0.141122
        },
        "29397814-d93f-44a7-8ed8-50aeb76b99a6" => {
          provider_name: "ThinkSpace Education Limited",
          ukprn: "10082743",
          instid: "0437",
          name: "Entire HEP",
          country: "England",
          postcode: "PO20 7LB",
          latitude: 50.77421,
          longitude: -0.832107
        },
        "0149cff7-4b2a-47cb-90e6-b566c6a78426" => {
          provider_name: "Tottenham Hotspur Foundation",
          ukprn: "10037822",
          instid: "0267",
          name: "Main campus",
          country: "England",
          postcode: "N17 0AP",
          latitude: 51.603307,
          longitude: -0.065778
        },
        "1680aecc-b891-4dc7-b72d-bd57f1b88cdd" => {
          provider_name: "Trinity College Bristol",
          ukprn: "10023464",
          instid: "0317",
          name: "Entire HEP",
          country: "England",
          postcode: "BS9 1JP",
          latitude: 51.476822,
          longitude: -2.629429
        },
        "a581b3b5-a32a-46c3-8751-cfc46b1b1a74" => {
          provider_name: "Trinity Laban Conservatoire of Music and Dance",
          ukprn: "10008017",
          instid: "0041",
          name: "Entire HEP",
          country: "England",
          postcode: "SE10 9LS",
          latitude: 51.484468,
          longitude: -0.004005
        },
        "0514a018-160b-41c2-9618-cc5dbf4cf2d2" => {
          provider_name: "Trinity University College",
          ukprn: "10007048",
          instid: "0092",
          name: "Entire institution",
          country: "Wales",
          postcode: "SA31 3EP",
          latitude: 51.858361,
          longitude: -4.328713
        },
        "fb0a21d6-b6f8-4fe6-855c-a2c6c3b9594b" => {
          provider_name: "Truro and Penwith College",
          ukprn: "10007063",
          instid: "1066",
          name: "Main campus",
          country: "England",
          postcode: "TR1 3XX",
          latitude: 50.262794,
          longitude: -5.100783
        },
        "31dc9f65-4ddb-4b62-a760-e08225d3d01c" => {
          provider_name: "Tyne Coast College",
          ukprn: "10005999",
          instid: "1022",
          name: "Main campus",
          country: "England",
          postcode: "NE34 6ET",
          latitude: 54.986229,
          longitude: -1.419756
        },
        "a2414ce8-4afb-49d2-9e60-b7f9b517dd23" => {
          provider_name: "UK Business College Ltd",
          ukprn: "10042737",
          instid: "0358",
          name: "Main campus",
          country: "England",
          postcode: "LU1 3HG",
          latitude: 51.875664,
          longitude: -0.408448
        },
        "52ac1bd3-d11c-49af-9bd0-6221771e2c8b" => {
          provider_name: "UK College of Business and Computing",
          ukprn: "10022021",
          instid: "0249",
          name: "Main campus",
          country: "England",
          postcode: "IG2 6NW",
          latitude: 51.576329,
          longitude: 0.061441
        },
        "19a2870c-4eb2-4bcc-879b-ef48f92fad3f" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "Belfast",
          country: "Northern Ireland",
          postcode: "BT15 1ED",
          latitude: 54.603927,
          longitude: -5.929119
        },
        "4cc38c68-9752-4907-9fd2-5f4483510975" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "Birmingham",
          country: "England",
          postcode: "B5 4UA",
          latitude: 52.476224,
          longitude: -1.898516
        },
        "9ace7171-2e81-470d-a065-4ae1a5920845" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "Coleraine",
          country: "Northern Ireland",
          postcode: "BT52 1SA",
          latitude: 55.149335,
          longitude: -6.676089
        },
        "1a74b9d1-7032-4a7b-874e-54d5b843a5bc" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "Jordanstown",
          country: "Northern Ireland",
          postcode: "BT37 0QB",
          latitude: 54.685388,
          longitude: -5.883037
        },
        "3ae2acbc-f827-4ef6-8734-555e6445b88c" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "London",
          country: "England",
          postcode: "EC1R 4TF",
          latitude: 51.522532,
          longitude: -0.111449
        },
        "3233bca3-3be5-4a71-95bd-5ee85717982a" => {
          provider_name: "Ulster University",
          ukprn: "10007807",
          instid: "0185",
          name: "Magee",
          country: "Northern Ireland",
          postcode: "BT48 7JL",
          latitude: 55.005997,
          longitude: -7.323686
        },
        "1e3ba3b3-1fab-4674-9f01-be47181d7e68" => {
          provider_name: "Unified Seevic Palmer's College",
          ukprn: "10005736",
          instid: "1048",
          name: "Main campus",
          country: "England",
          postcode: "SS7 1TW",
          latitude: 51.56276,
          longitude: 0.583347
        },
        "f7d28742-0012-4027-9c03-d85fea677b27" => {
          provider_name: "Union Foundation",
          ukprn: "10024766",
          instid: "1198",
          name: "Main campus",
          country: "Wales",
          postcode: "CF31 4DX"
        },
        "110d3c05-44ad-4bdd-8c48-5db3c1fe6c20" => {
          provider_name: "United Colleges Group",
          ukprn: "10001476",
          instid: "1021",
          name: "Main campus",
          country: "England",
          postcode: "W2 1NB",
          latitude: 51.521032,
          longitude: -0.174603
        },
        "a090c7ea-9d47-494b-978d-d37f8709a49c" => {
          provider_name: "University Academy 92 Limited",
          ukprn: "10067648",
          instid: "0434",
          name: "Entire HEP",
          country: "England",
          postcode: "M16 0PU",
          latitude: 53.458178,
          longitude: -2.285023
        },
        "a4095b96-dd22-4568-a9d6-dc4b02125895" => {
          provider_name: "University Centre Peterborough",
          ukprn: "10068157",
          instid: "0408",
          name: "Addict Dance Academy",
          country: "England",
          postcode: "LE1 4LF",
          latitude: 52.633886,
          longitude: -1.139833
        },
        "3d1fc1f0-3591-4a0e-b9b0-052883dbe124" => {
          provider_name: "University Centre Peterborough",
          ukprn: "10068157",
          instid: "0408",
          name: "Main campus",
          country: "England",
          postcode: "PE1 4DZ",
          latitude: 52.586783,
          longitude: -0.230191
        },
        "6971dbc2-ac19-4c9b-b9a1-5b6da8b48a3b" => {
          provider_name: "University Centre Peterborough",
          ukprn: "10068157",
          instid: "0408",
          name: "Stamford",
          country: "England",
          postcode: "PE9 1XA",
          latitude: 52.658967,
          longitude: -0.471523
        },
        "7a11dae3-f147-4810-93a4-5318d30bc1a4" => {
          provider_name: "University Centre Quayside Limited",
          ukprn: "10025197",
          instid: "0418",
          name: "Entire HEP",
          country: "England",
          postcode: "NE6 1LL",
          latitude: 54.972121,
          longitude: -1.587142
        },
        "f7ec9a1c-ce78-4064-890e-1acfe9d0d300" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Aston Institute",
          country: "Hong Kong (Special Administrative Region of China) [Hong Kong]",
          latitude: 52.48184,
          longitude: -1.905939
        },
        "188aabf5-ef99-4536-9238-5bb9d01c2c6b" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Birmingham City Football Club Community Trust",
          country: "England",
          postcode: "B9 4NH",
          latitude: 52.476284,
          longitude: -1.867907
        },
        "713670a9-c00d-42c7-af0e-8dd3c08dac6b" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Brown Town Community College",
          country: "Jamaica",
          latitude: -3.0,
          longitude: -3.0
        },
        "766fca75-2c9e-41d0-8e34-85014a423ebf" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Caritas",
          country: "Hong Kong (Special Administrative Region of China) [Hong Kong]",
          latitude: -3.0,
          longitude: -3.0
        },
        "f094ce2a-d4db-4b4d-b821-b656f79b67b8" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Caritas (Macau)",
          country: "Macao (Special Administrative Region of China) [Macao]",
          latitude: -3.0,
          longitude: -3.0
        },
        "a049a85c-883e-41dd-9e68-9c92193ae32d" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Institute of Technology",
          country: "Ireland",
          latitude: 52.48184,
          longitude: -1.905939
        },
        "143b405d-b1c0-4037-b94c-bf11cca0f19a" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Main campus",
          country: "England",
          postcode: "B3 1JB",
          latitude: 52.48184,
          longitude: -1.905939
        },
        "2c53076d-f93e-474c-913b-074764a8866b" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Maldives College of HE",
          country: "Maldives",
          latitude: -3.0,
          longitude: -3.0
        },
        "ab6d4168-2252-4ba1-9db9-78fea54a75f2" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "Rushmore Business School",
          country: "Mauritius",
          latitude: -3.0,
          longitude: -3.0
        },
        "d963a5aa-b3dc-4028-8184-4c63297daa0e" => {
          provider_name: "University College Birmingham",
          ukprn: "10000712",
          instid: "0200",
          name: "TUV",
          country: "Germany",
          latitude: -3.0,
          longitude: -3.0
        },
        "e5639a7c-9fd1-48e0-9be6-aaa30c4913bb" => {
          provider_name: "University College London",
          ukprn: "10007784",
          instid: "0149",
          name: "BCA Academy of the Built Environment, Singapore",
          country: "Singapore",
          latitude: 51.523569,
          longitude: -0.132424
        },
        "147ac694-bab1-4974-961f-09286ce35fb7" => {
          provider_name: "University College London",
          ukprn: "10007784",
          instid: "0149",
          name: "Main campus",
          country: "England",
          postcode: "WC1E 6BT",
          latitude: 51.523569,
          longitude: -0.132424
        },
        "c4b53723-c5bc-4afa-8ee1-ad02de2899f6" => {
          provider_name: "University College London",
          ukprn: "10007784",
          instid: "0149",
          name: "UCL at Here East",
          country: "England",
          postcode: "E20 3BS",
          latitude: 51.547521,
          longitude: -0.022262
        },
        "3df7721b-6bb7-48bb-ab63-df0ab9043e8e" => {
          provider_name: "University College London",
          ukprn: "10007784",
          instid: "0149",
          name: "UCL East",
          country: "England",
          postcode: "E20 2AE",
          latitude: 51.536238,
          longitude: -0.013941
        },
        "708481ea-4a5a-49ba-beee-81295127ec69" => {
          provider_name: "University College London",
          ukprn: "10007784",
          instid: "0149",
          name: "UCL Qatar",
          country: "Qatar",
          latitude: 51.523569,
          longitude: -0.132424
        },
        "0a8a53b3-0dfa-4388-952c-6529a7593e61" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "Canterbury",
          country: "England",
          postcode: "CT1 3AN",
          latitude: 51.274926,
          longitude: 1.09084
        },
        "ebdc4522-37a6-4a26-8a2e-1ab78675be88" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "Epsom",
          country: "England",
          postcode: "KT18 5BE",
          latitude: 51.329839,
          longitude: -0.265045
        },
        "22dac24e-42ca-480b-8558-5728f1b0efb2" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "ICI",
          country: "China",
          latitude: 51.215682,
          longitude: -0.805956
        },
        "84df46a0-66bd-499c-8483-17f87aa2a47c" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "LCCA",
          country: "England",
          postcode: "EC3N 4DX",
          latitude: 51.509939,
          longitude: -0.073608
        },
        "0c6416d7-66d3-4493-91a2-2522fb7c11f4" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "LCCM",
          country: "England",
          postcode: "SE1 0LR",
          latitude: 51.503421,
          longitude: -0.102271
        },
        "12f80843-6e8e-45fa-b97e-a4f57f8e6081" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "Main campus",
          country: "England",
          postcode: "GU9 7DS",
          latitude: 51.215682,
          longitude: -0.805956
        },
        "7fbe4cbb-97ec-4101-9680-0b0c2fe37609" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "OCA",
          country: "England",
          postcode: "S75 1JN",
          latitude: 53.567767,
          longitude: -1.505446
        },
        "45d93ff5-1084-43dc-b642-6c51dd0f8ff7" => {
          provider_name: "University for the Creative Arts",
          ukprn: "10006427",
          instid: "0206",
          name: "Rochester",
          country: "England",
          postcode: "ME1 1DZ",
          latitude: 51.381523,
          longitude: 0.514272
        },
        "960b2500-f7ae-4e76-b1b4-0e9236a18f69" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "Aylesbury Campus",
          country: "England",
          postcode: "HP21 8AL",
          latitude: 51.797983,
          longitude: -0.801989
        },
        "8bf5cdf5-98c6-4248-9463-6883998cfb20" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "Bedford campus",
          country: "England",
          postcode: "MK41 9EA",
          latitude: 52.141357,
          longitude: -0.442323
        },
        "27f20461-bc53-4f57-aa38-1b6bd8d17a46" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "Birmingham Study Centre",
          country: "England",
          postcode: "B4 7LR",
          latitude: 52.48199,
          longitude: -1.892318
        },
        "220449ec-c58f-4668-ad11-819dd7bff37d" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "London Study Centre",
          country: "England",
          postcode: "SE1 1NX",
          latitude: 51.504573,
          longitude: -0.08963
        },
        "0d76c7cf-38bf-4ad0-928c-4dcd7052302e" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "Main campus",
          country: "England",
          postcode: "LU1 3JU",
          latitude: 51.87825,
          longitude: -0.411539
        },
        "a85197a1-374d-4ea6-b34b-effaf0b910ec" => {
          provider_name: "University of Bedfordshire",
          ukprn: "10007152",
          instid: "0026",
          name: "Milton Keynes",
          country: "England",
          postcode: "MK9 3HS",
          latitude: 52.03895,
          longitude: -0.755881
        },
        "a640680e-53ab-400b-beba-dd1568378954" => {
          provider_name: "University of Chester",
          ukprn: "10007848",
          instid: "0011",
          name: "Main campus",
          country: "England",
          postcode: "CH1 4BJ",
          latitude: 53.198604,
          longitude: -2.898165
        },
        "945b2617-268a-44f1-a05c-bbcb0b88e009" => {
          provider_name: "University of Chester",
          ukprn: "10007848",
          instid: "0011",
          name: "Shrewsbury",
          country: "England",
          postcode: "SY3 8HQ",
          latitude: 52.71139,
          longitude: -2.756354
        },
        "ff9d014d-e807-4276-a92a-f1e9ff6d6fa3" => {
          provider_name: "University of Chester",
          ukprn: "10007848",
          instid: "0011",
          name: "Warrington",
          country: "England",
          postcode: "WA2 0DB",
          latitude: 53.415991,
          longitude: -2.546743
        },
        "1796a583-7667-46ac-af61-d5ab50cebf94" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Ambleside campus",
          country: "England",
          postcode: "LA22 9BB",
          latitude: 54.435442,
          longitude: -2.964565
        },
        "1e9bf9a0-8258-4218-9128-0d1f8f15bb7a" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Carlisle Business School Paternoster Row",
          country: "England",
          postcode: "CA3 8TB",
          latitude: 54.895264,
          longitude: -2.939769
        },
        "09371547-f5df-4581-b28c-f7a7f8498fc0" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Cumbria Brampton Road",
          country: "England",
          postcode: "CA3 9AY",
          latitude: 54.906107,
          longitude: -2.932036
        },
        "d4bfa78d-9ae2-49f1-822d-c78fd991f0eb" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "East India Dock Road",
          country: "England",
          postcode: "E14 6JE",
          latitude: 51.511078,
          longitude: -0.024663
        },
        "2e5bd127-6746-4ed9-aae1-ff13205eff34" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Lancaster",
          country: "England",
          postcode: "LA1 3JD",
          latitude: 54.040797,
          longitude: -2.787727
        },
        "a08f9a56-425a-46f5-a82e-e86636d43e9b" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Main campus",
          country: "England",
          postcode: "CA1 2HH",
          latitude: 54.891163,
          longitude: -2.921417
        },
        "c014703b-e510-4ff1-b2cf-d0a79ba15d51" => {
          provider_name: "University of Cumbria",
          ukprn: "10007842",
          instid: "0038",
          name: "Penrith Newton Rigg",
          country: "England",
          postcode: "CA11 0AH",
          latitude: 54.671033,
          longitude: -2.788514
        },
        "ed818806-cd0a-436b-8882-a4b8ff7d2aa7" => {
          provider_name: "University of Derby",
          ukprn: "10007851",
          instid: "0057",
          name: "Buxton campus",
          country: "England",
          postcode: "SK17 6RY",
          latitude: 53.260938,
          longitude: -1.91712
        },
        "10b46b69-9b6a-46cc-b0fc-6d568bfacf47" => {
          provider_name: "University of Derby",
          ukprn: "10007851",
          instid: "0057",
          name: "Chesterfield campus",
          country: "England",
          postcode: "S41 7LL",
          latitude: 53.239674,
          longitude: -1.427438
        },
        "01bfac2a-4636-4e22-adf1-b85a4af03958" => {
          provider_name: "University of Derby",
          ukprn: "10007851",
          instid: "0057",
          name: "Leek Campus",
          country: "England",
          postcode: "ST13 6DP",
          latitude: 53.107542,
          longitude: -2.023486
        },
        "02b32352-6e75-41c9-8f62-5292025c203c" => {
          provider_name: "University of Derby",
          ukprn: "10007851",
          instid: "0057",
          name: "Main campus",
          country: "England",
          postcode: "DE22 1GB",
          latitude: 52.938473,
          longitude: -1.496678
        },
        "2e98d642-6d7a-42e8-975c-26037a6fbb73" => {
          provider_name: "University of Derby",
          ukprn: "10007851",
          instid: "0057",
          name: "Overseas",
          latitude: -3.0,
          longitude: -3.0
        },
        "4303753a-beac-4c60-9efa-07d8ce113c47" => {
          provider_name: "University of Durham",
          ukprn: "10007143",
          instid: "0116",
          name: "Entire HEP",
          country: "England",
          postcode: "DH1 3LE",
          latitude: 54.768112,
          longitude: -1.571874
        },
        "1d2a4686-e1ec-49c5-98e3-af4b4eaf379e" => {
          provider_name: "University of Durham",
          ukprn: "10007143",
          instid: "0116",
          name: "Queen's Campus, Stockton",
          country: "England",
          postcode: "TS17 6BH",
          latitude: 54.563169,
          longitude: -1.296768
        },
        "dbf4de30-46e8-4c79-b7cb-53d20fa6fa70" => {
          provider_name: "University of Gloucestershire",
          ukprn: "10007145",
          instid: "0054",
          name: "Francis Close Hall Campus, Cheltenham",
          country: "England",
          postcode: "GL50 4AZ",
          latitude: 51.905503,
          longitude: -2.079317
        },
        "f190f1d7-5147-415c-bd8d-d9547e92671b" => {
          provider_name: "University of Gloucestershire",
          ukprn: "10007145",
          instid: "0054",
          name: "London Campus",
          country: "England",
          postcode: "E14 6JE",
          latitude: 51.51117,
          longitude: -0.024931
        },
        "e0eb8fb5-dd56-4834-baf8-9fddcb266c66" => {
          provider_name: "University of Gloucestershire",
          ukprn: "10007145",
          instid: "0054",
          name: "Main campus",
          country: "England",
          postcode: "GL50 2RH",
          latitude: 51.887603,
          longitude: -2.087706
        },
        "9dbabc78-ebed-40da-97c9-d0484c5da921" => {
          provider_name: "University of Gloucestershire",
          ukprn: "10007145",
          instid: "0054",
          name: "Oxstalls Campus, Gloucester",
          country: "England",
          postcode: "GL2 9HW",
          latitude: 51.872481,
          longitude: -2.224464
        },
        "dc99ff0a-3187-4074-a2bf-a1fa73768c19" => {
          provider_name: "University of Greater Manchester",
          ukprn: "10006841",
          instid: "0049",
          name: "Main campus",
          country: "England",
          postcode: "BL3 5AB",
          latitude: 53.573511,
          longitude: -2.436238
        },
        "d3b4e0d3-d431-4bd6-948e-f9384817be04" => {
          provider_name: "University of Hertfordshire",
          ukprn: "10007147",
          instid: "0060",
          name: "Entire HEP",
          country: "England",
          postcode: "AL10 9AB",
          latitude: 51.752882,
          longitude: -0.242179
        },
        "cc131263-2c21-48c9-826f-89249bfee0c2" => {
          provider_name: "University of Hertfordshire",
          ukprn: "10007147",
          instid: "0060",
          name: "Hatfield campus",
          country: "England",
          postcode: "AL10 9AB"
        },
        "4a62a36a-d49e-4faf-b67d-6b1d08cbb81c" => {
          provider_name: "University of Hertfordshire",
          ukprn: "10007147",
          instid: "0060",
          name: "St Albans campus",
          country: "England",
          postcode: "AL1 3RR",
          latitude: 51.75431,
          longitude: -0.3338
        },
        "d0ac9f97-bf83-49d2-8559-ff2bad105b10" => {
          provider_name: "University of Lancashire",
          ukprn: "10007141",
          instid: "0053",
          name: "Main campus",
          country: "England",
          postcode: "PR1 2HE",
          latitude: 53.761338,
          longitude: -2.707384
        },
        "417d4603-3a79-47e5-8710-817cfbb5171a" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Advanced Legal Studies",
          country: "England",
          postcode: "WC1B 5DR",
          latitude: 51.522483,
          longitude: -0.127452
        },
        "187eb347-bca5-484e-a677-d88a14e2e9c7" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Classical Studies",
          country: "England",
          postcode: "WC1E 7HU",
          latitude: 51.520642,
          longitude: -0.128724
        },
        "dff12100-84ff-4226-9675-d7af48e50914" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Commonwealth Studies",
          country: "England",
          postcode: "WC1E 7HU",
          latitude: 51.520642,
          longitude: -0.128724
        },
        "0119c2a6-9c7e-4eef-bfac-08fb74ceb93d" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of English Studies",
          country: "England",
          postcode: "WC1E 7HU",
          latitude: 51.520642,
          longitude: -0.128724
        },
        "dfe87bc3-9089-4c30-b5a4-2acb811e2329" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Historical Research",
          country: "England",
          postcode: "WC1E 7HU",
          latitude: 51.520642,
          longitude: -0.128724
        },
        "a79647ca-d4c6-44fa-9372-4469851606fc" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Latin American Studies",
          country: "England",
          postcode: "WC1E 7HU",
          latitude: 51.520642,
          longitude: -0.128724
        },
        "98da98e2-5c86-4881-a122-87b324ef083a" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Institute of Modern Languages Research",
          country: "England",
          postcode: "WC1E 7HU",
          latitude: 51.520642,
          longitude: -0.128724
        },
        "96fb2916-5069-4b9e-84ad-00e9a55a3419" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Main campus",
          country: "England",
          postcode: "WC1E 7HU",
          latitude: 51.520642,
          longitude: -0.128724
        },
        "6b8af64e-4d61-4b94-8fa4-cd6ea0b9bfbc" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "School of Advanced Study Central",
          country: "England",
          postcode: "WC1E 7HU",
          latitude: 51.520642,
          longitude: -0.128724
        },
        "d3307440-2f8e-463d-b3ff-6fbffec6deb3" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "University Marine Biological Station",
          country: "Scotland",
          postcode: "KA28 0EG",
          latitude: 55.749424,
          longitude: -4.908452
        },
        "52c9c00f-5c21-4578-86a5-4a4570118a92" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "University of London Institute in Paris",
          country: "France",
          latitude: 51.520642,
          longitude: -0.128724
        },
        "e5a631e2-07bd-449e-8d01-f12cd58dbc4f" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "University of London Worldwide",
          country: "England",
          postcode: "WC1E 7HU",
          latitude: 51.520642,
          longitude: -0.128724
        },
        "334ad490-91a3-40af-8ef1-40b6d1b1356d" => {
          provider_name: "University of London (Institutes and activities)",
          ukprn: "10007797",
          instid: "0151",
          name: "Warburg Institute",
          country: "England",
          postcode: "WC1H 0AB",
          latitude: 51.523271,
          longitude: -0.130648
        },
        "7bdecdd6-38eb-4a33-b27a-b7e539d088f1" => {
          provider_name: "University of London Institute in Paris",
          ukprn: "10007812",
          instid: "7007",
          name: "Main campus",
          country: "France {includes Corsica}",
          latitude: -3.0,
          longitude: -3.0
        },
        "fd485ad5-8e49-4b8c-929f-0404974adb8a" => {
          provider_name: "University of Northumbria at Newcastle",
          ukprn: "10001282",
          instid: "0069",
          name: "Amsterdam",
          country: "Netherlands",
          latitude: 54.976634,
          longitude: -1.60745
        },
        "1761921e-588f-4363-9fb3-a3144459c302" => {
          provider_name: "University of Northumbria at Newcastle",
          ukprn: "10001282",
          instid: "0069",
          name: "Coach Lane",
          country: "England",
          postcode: "NE7 7XA",
          latitude: 55.003283,
          longitude: -1.574001
        },
        "9dac70d9-ab0e-4bad-a8bd-cf9ad6589692" => {
          provider_name: "University of Northumbria at Newcastle",
          ukprn: "10001282",
          instid: "0069",
          name: "London",
          country: "England",
          postcode: "E1 7HT",
          latitude: 51.517807,
          longitude: -0.077974
        },
        "2b906316-d3ac-42a5-88c0-5e44a471f360" => {
          provider_name: "University of Northumbria at Newcastle",
          ukprn: "10001282",
          instid: "0069",
          name: "Main campus",
          country: "England",
          postcode: "NE1 8ST",
          latitude: 54.976634,
          longitude: -1.60745
        },
        "2f0a6903-914b-4bc2-afd3-6955e2373322" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Boston Education Centre",
          country: "England",
          postcode: "PE21 9QS",
          latitude: 52.991125,
          longitude: -0.009968
        },
        "de7795ce-5ea6-44f5-9741-46e35b4dd67c" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Derby Education Centre",
          country: "England",
          postcode: "DE22 3DT",
          latitude: 52.909021,
          longitude: -1.51333
        },
        "27da0304-9196-461e-94d9-b5c329a00447" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Lincoln Education Centre",
          country: "England",
          postcode: "LN2 5QY",
          latitude: 53.233575,
          longitude: -0.519635
        },
        "651e8919-a80a-45f7-9915-3c28203cbed3" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Lincoln Medical School",
          country: "England",
          postcode: "LN6 7TS",
          latitude: 53.228487,
          longitude: -0.547796
        },
        "f53074a8-2aef-484c-acb2-817aa1371be2" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Main campus",
          country: "England",
          postcode: "NG7 2RD",
          latitude: 52.940521,
          longitude: -1.191193
        },
        "4c9fdd9b-df11-4e43-94d7-e1d6dccfab82" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "Mansfield Education Centre",
          country: "England",
          postcode: "NG17 4JL",
          latitude: 53.134573,
          longitude: -1.233579
        },
        "74ca72be-0c6d-463b-b12a-cdccf6acc746" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "University of Nottingham Malaysia",
          country: "Malaysia",
          latitude: 52.940521,
          longitude: -1.191193
        },
        "142a5858-cb53-4942-9b5c-0f4589d05c1d" => {
          provider_name: "University of Nottingham",
          ukprn: "10007154",
          instid: "0155",
          name: "University of Nottingham Ningbo",
          country: "China",
          latitude: 52.940521,
          longitude: -1.191193
        },
        "0b4d24df-271e-45da-bf17-0ecb135590af" => {
          provider_name: "University of Plymouth",
          ukprn: "10007801",
          instid: "0073",
          name: "Entire HEP",
          country: "England",
          postcode: "PL4 8AA",
          latitude: 50.375438,
          longitude: -4.13794
        },
        "00eace9f-209f-4578-9167-3642857a2023" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Caerleon Campus",
          country: "Wales",
          postcode: "NP18 3QT",
          latitude: 51.616517,
          longitude: -2.961925
        },
        "f8f0c5d6-220d-4e45-a02f-315a99edeb79" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Cardiff Campus",
          country: "Wales",
          postcode: "CF24 2FN",
          latitude: 51.478786,
          longitude: -3.170142
        },
        "acf9a2b8-89d9-4e49-a38d-e25569a23d4d" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Glyntaff Campus",
          country: "Wales",
          postcode: "CF37 4BE",
          latitude: 51.594268,
          longitude: -3.319309
        },
        "a9eb5451-3dde-4e06-b80b-d6c5f188aa42" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Main campus",
          country: "Wales",
          postcode: "CF37 1DL",
          latitude: 51.589204,
          longitude: -3.326002
        },
        "99f38668-d585-4050-bd40-d902eb0a2fe4" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Merthyr College",
          country: "Wales",
          postcode: "CF48 1AR",
          latitude: 51.745022,
          longitude: -3.383241
        },
        "21573d76-c695-49bd-b44d-878dc7e8a835" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Newport Campus",
          country: "Wales",
          postcode: "NP20 2BP",
          latitude: 51.583826,
          longitude: -2.986671
        },
        "70bee635-7815-4eb4-b0c5-d767fbd691b5" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Renewable Hydrogen Research and Demonstration Cent",
          country: "Wales",
          postcode: "SA12 7AX",
          latitude: 51.61977,
          longitude: -3.82217
        },
        "0e2a7b64-84ec-4f5a-80d0-9d073620e0f9" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "Royal Welsh College of Music and Drama",
          country: "Wales",
          postcode: "CF10 3ER",
          latitude: 51.486163,
          longitude: -3.184152
        },
        "beffa8ab-019c-402e-90af-99bd9629c7cb" => {
          provider_name: "University of South Wales",
          ukprn: "10007793",
          instid: "0090",
          name: "The Centre for Automotive and Power Systems Engine",
          country: "Wales",
          postcode: "CF44 0ND",
          latitude: 51.757834,
          longitude: -3.450428
        },
        "ab1688cb-08ad-4b70-ae10-0f042f3c4702" => {
          provider_name: "University of St Mark and St John",
          ukprn: "10037449",
          instid: "0014",
          name: "Entire HEP",
          country: "England",
          postcode: "PL6 8BH",
          latitude: 50.420866,
          longitude: -4.110758
        },
        "fa8b9b7a-53c6-48e6-916a-ba172f0ed3c0" => {
          provider_name: "University of Staffordshire",
          ukprn: "10006299",
          instid: "0077",
          name: "Main campus",
          country: "England",
          postcode: "ST4 2DF",
          latitude: 53.009074,
          longitude: -2.175522
        },
        "666a47b6-9a5a-444b-bebb-e196ff5f5f89" => {
          provider_name: "University of Suffolk",
          ukprn: "10014001",
          instid: "0210",
          name: "Entire HEP",
          country: "England",
          postcode: "IP4 1QJ",
          latitude: 52.052548,
          longitude: 1.162595
        },
        "696f1c85-6614-43b1-870d-091f83a94dd4" => {
          provider_name: "University of the Arts, London",
          ukprn: "10007162",
          instid: "0024",
          name: "Entire HEP",
          country: "England",
          postcode: "WC1V 7EY",
          latitude: 51.517765,
          longitude: -0.116388
        },
        "d298e5d6-550b-43a8-8ed8-6a90d1857b63" => {
          provider_name: "University of the Arts, London",
          ukprn: "10007162",
          instid: "0024",
          name: "Wimbledon College of Art",
          country: "England",
          postcode: "SW19 3QA",
          latitude: 51.413335,
          longitude: -0.212374
        },
        "d937867a-7d24-4fda-ac4c-f01eca097ee0" => {
          provider_name: "University of the Built Environment",
          ukprn: "10008173",
          instid: "0294",
          name: "Entire HEP",
          country: "England",
          postcode: "RG1 4BS",
          latitude: 51.453236,
          longitude: -0.963583
        },
        "5213a16b-37f0-477f-834c-0804482ac94b" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Argyll College UHI",
          country: "Scotland",
          postcode: "PA23 7HP",
          latitude: 55.946439,
          longitude: -4.927075
        },
        "3ecbd3ce-9f20-4fe8-a34d-adb2316be5a0" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Argyll College UHI",
          country: "Scotland",
          postcode: "PA23 7HP",
          latitude: 55.946439,
          longitude: -4.927075
        },
        "bb292581-08cf-4e73-b76e-8b404aa7c366" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Executive Office UHI",
          country: "Scotland",
          postcode: "IV3 5SQ",
          latitude: 57.469389,
          longitude: -4.230244
        },
        "1c5af959-d2f9-4d4b-ab24-58f4c6bca1ce" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Highland Theological College UHI",
          country: "Scotland",
          postcode: "G3 7PR",
          latitude: 55.866448,
          longitude: -4.275055
        },
        "646d6595-3bea-4264-a9a1-f1770b53d150" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Highland Theological College UHI",
          country: "Scotland",
          postcode: "IV15 9HA",
          latitude: 57.594897,
          longitude: -4.424619
        },
        "f37d146a-15c4-43d8-b893-cd2b984c8791" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Inverness College UHI",
          country: "Scotland",
          postcode: "IV2 5NA",
          latitude: 57.477365,
          longitude: -4.181591
        },
        "e2102349-70f5-44b1-9264-36d45bd1730c" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Lews Castle College UHI",
          country: "Scotland",
          postcode: "HS2 0XR",
          latitude: 58.213516,
          longitude: -6.396666
        },
        "ddb39717-184f-43f2-bdce-ea5a97aa2d27" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Moray College UHI",
          country: "Scotland",
          postcode: "IV30 1JJ",
          latitude: 57.645135,
          longitude: -3.316553
        },
        "3a1ab3be-fb6e-4770-ade6-e79d437e48de" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "NAFC Marine Centre UHI",
          country: "Scotland",
          postcode: "ZE1 0UN",
          latitude: 60.133297,
          longitude: -1.286969
        },
        "d555d42f-2931-4442-9a42-78c4408e79a7" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Ness Foundation",
          country: "Scotland",
          postcode: "IV3 8GY",
          latitude: 57.421683,
          longitude: -4.325257
        },
        "c7691853-ac6f-488a-976d-97076b642e7b" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "North Highland College UHI",
          country: "Scotland",
          postcode: "KW14 7EE",
          latitude: 58.585698,
          longitude: -3.534681
        },
        "3e89230e-6676-404c-837c-2fffe4d4d035" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "North Highland College UHI (Burgfield)",
          country: "Scotland",
          postcode: "IV25 3HN",
          latitude: 57.881552,
          longitude: -4.034115
        },
        "2f82adc9-5eb6-49c4-a43f-3d9305b7c598" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Orkney College UHI",
          country: "Scotland",
          postcode: "KW15 1LX",
          latitude: 58.984759,
          longitude: -2.948483
        },
        "3e3e97ec-7c09-40b1-b648-efc79da3e040" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Perth College UHI",
          country: "Scotland",
          postcode: "PH1 2NX",
          latitude: 56.405604,
          longitude: -3.460611
        },
        "133434bd-bab9-48b5-a74c-7a4d57cdd799" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Sabhal Mor Ostaig UHI",
          country: "Scotland",
          postcode: "IV44 8RQ",
          latitude: 57.086198,
          longitude: -5.879852
        },
        "6098f0fc-d8da-47c7-86bd-d650d9fa6e6e" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Scottish Association for Marine Science UHI",
          country: "Scotland",
          postcode: "PA37 1QA",
          latitude: 56.451314,
          longitude: -5.440431
        },
        "ec489e99-94e4-49bf-8103-0fc1b04585dc" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Shetland College UHI",
          country: "Scotland",
          postcode: "ZE1 0PX",
          latitude: 60.169353,
          longitude: -1.166141
        },
        "3912ce00-c735-4111-8b3a-2815f79a044a" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "Sustainable Development Research Centre",
          country: "Scotland",
          postcode: "IV36 2AB",
          latitude: 57.614464,
          longitude: -3.57289
        },
        "6d8ac390-7d52-494c-98d4-c21aeee8518b" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "UHI Centre for Health Science",
          country: "Scotland",
          postcode: "IV2 3JH",
          latitude: 57.476244,
          longitude: -4.191332
        },
        "479cd6c2-c59a-4c40-9dd1-654835e8b7a4" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "West Highland College UHI",
          country: "Scotland",
          postcode: "PH33 6FF",
          latitude: 56.823417,
          longitude: -5.106918
        },
        "8b14b6ae-df79-448c-96d9-163a133e4b65" => {
          provider_name: "University of the Highlands and Islands",
          ukprn: "10007114",
          instid: "0196",
          name: "West Highland College UHI (Portree)",
          country: "Scotland",
          postcode: "IV51 9EG",
          latitude: 57.414317,
          longitude: -6.210008
        },
        "a593091a-7a54-48b2-b8cc-fec0f57fdf50" => {
          provider_name: "University of the West of England, Bristol",
          ukprn: "10007164",
          instid: "0081",
          name: "Entire HEP",
          country: "England",
          postcode: "BS16 1QY",
          latitude: 51.501079,
          longitude: -2.547458
        },
        "5badaade-4e1e-43e9-bb83-8c05c4ae1d63" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Birmingham",
          country: "England",
          postcode: "B11 4AR",
          latitude: 52.449196,
          longitude: -1.861994
        },
        "ebd3f7e1-0c52-418e-93dc-f812861ef22a" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Cardiff",
          country: "Wales",
          postcode: "CF10 3NS",
          latitude: 51.485538,
          longitude: -3.181031
        },
        "2f7def04-9a3e-4666-bdfc-4603f99b4ad4" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Coleg Sir Gar",
          country: "Wales",
          postcode: "SA15 4DN",
          latitude: 51.686417,
          longitude: -4.188594
        },
        "20362aae-339f-47db-81db-0d07b2761b0d" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Lampeter",
          country: "Wales",
          postcode: "SA48 7ED",
          latitude: 52.113836,
          longitude: -4.076418
        },
        "4e8c68e7-1496-4fae-9838-6eee4382ef17" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "London",
          country: "England",
          postcode: "SW9 6EJ",
          latitude: 51.479817,
          longitude: -0.109714
        },
        "5dd54056-7b47-4d7a-9b35-56d08b6b4f8d" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Main campus",
          country: "Wales",
          postcode: "SA31 3EP",
          latitude: 51.858361,
          longitude: -4.328713
        },
        "53c2ce20-f7f8-4143-abc0-4efcf6342a59" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "Swansea",
          country: "Wales",
          postcode: "SA1 8EW",
          latitude: 51.617356,
          longitude: -3.9255
        },
        "14106078-0cdb-464f-8ea5-3c908941286b" => {
          provider_name: "University of Wales Trinity Saint David",
          ukprn: "10007858",
          instid: "0176",
          name: "University of Wales (Central Functions)",
          country: "Wales",
          postcode: "CF10 3NS",
          latitude: 51.485538,
          longitude: -3.181031
        },
        "7e52aaae-c5f5-4df0-8774-fc906b60da21" => {
          provider_name: "University of Worcester",
          ukprn: "10007139",
          instid: "0046",
          name: "Entire HEP",
          country: "England",
          postcode: "WR2 6AJ",
          latitude: 52.197366,
          longitude: -2.243085
        },
        "f2f351a0-147d-4da7-884a-04423826afc0" => {
          provider_name: "Walbrook Institute London Limited",
          ukprn: "10089591",
          instid: "0452",
          name: "Main campus",
          country: "England",
          postcode: "EC3R 8LJ",
          latitude: 51.509679,
          longitude: -0.085219
        },
        "37665fa4-8967-4f35-9166-5166e7d80c61" => {
          provider_name: "Walsall College",
          ukprn: "10007315",
          instid: "1017",
          name: "Main campus",
          country: "England",
          postcode: "WS2 8ES",
          latitude: 52.589449,
          longitude: -1.982554
        },
        "1550d52b-947d-4001-8daa-a509176e27c1" => {
          provider_name: "Waltham Forest College",
          ukprn: "10007321",
          instid: "1016",
          name: "Main campus",
          country: "England",
          postcode: "E17 4JB",
          latitude: 51.591435,
          longitude: -0.010378
        },
        "a62efba4-9af9-4a62-9c39-63f92977a864" => {
          provider_name: "Waltham International College Limited",
          ukprn: "10029843",
          instid: "0343",
          name: "Entire HEP",
          country: "England",
          postcode: "IG11 7NR",
          latitude: 51.53735,
          longitude: 0.081555
        },
        "76490711-18d9-418c-8861-011419ba4bd4" => {
          provider_name: "Warrington & Vale Royal College",
          ukprn: "10007339",
          instid: "1020",
          name: "Main campus",
          country: "England",
          postcode: "WA2 8QA",
          latitude: 53.407537,
          longitude: -2.59283
        },
        "18821c3f-ffa3-4ff7-abb7-f2171c276b6b" => {
          provider_name: "Warwickshire College",
          ukprn: "10007859",
          instid: "1015",
          name: "Main campus",
          country: "England",
          postcode: "CV32 5JE",
          latitude: 52.287561,
          longitude: -1.549577
        },
        "85e04ab3-b496-4616-8cf6-4e505ea55e6f" => {
          provider_name: "Waverley Abbey College",
          ukprn: "10007361",
          instid: "0295",
          name: "Bradford",
          country: "England",
          postcode: "BD10 8SA",
          latitude: 53.824991,
          longitude: -1.735387
        },
        "eb1164bf-6886-4cab-b560-5e8c3b08dd4d" => {
          provider_name: "Waverley Abbey College",
          ukprn: "10007361",
          instid: "0295",
          name: "Main campus",
          country: "England",
          postcode: "GU9 8EP",
          latitude: 51.203363,
          longitude: -0.757692
        },
        "46b33e8e-be67-4555-8c35-203d35821572" => {
          provider_name: "West Dean College",
          ukprn: "10032288",
          instid: "0312",
          name: "Chelsea Harbour",
          country: "England",
          postcode: "SW10 0XF",
          latitude: 51.476339,
          longitude: -0.182695
        },
        "073c0add-0b31-4cbe-97f0-9b3a13a29464" => {
          provider_name: "West Dean College",
          ukprn: "10032288",
          instid: "0312",
          name: "Main campus",
          country: "England",
          postcode: "PO18 0QZ",
          latitude: 50.906435,
          longitude: -0.775243
        },
        "191c18d7-8ae4-4332-b532-026e41293607" => {
          provider_name: "West Herts College",
          ukprn: "10007417",
          instid: "1012",
          name: "Main campus",
          country: "England",
          postcode: "WD17 3EZ",
          latitude: 51.660054,
          longitude: -0.406211
        },
        "9b309277-3aeb-4423-935c-d3fd3e30e210" => {
          provider_name: "West Kent and Ashford College",
          ukprn: "10007419",
          instid: "1007",
          name: "Main campus",
          country: "England",
          postcode: "TN9 2PW",
          latitude: 51.186726,
          longitude: 0.263001
        },
        "4e02b45b-9458-41a0-963f-0eb17e0d9ce1" => {
          provider_name: "West London College",
          ukprn: "10000939",
          instid: "0233",
          name: "Main campus",
          country: "England",
          postcode: "W1U 1LN",
          latitude: 51.514996,
          longitude: -0.151525
        },
        "cdf131f3-2051-41c4-8776-14698fbe5477" => {
          provider_name: "West London College of Business and Management Sciences Limited",
          ukprn: "10023290",
          instid: "0275",
          name: "Main campus",
          country: "England",
          postcode: "TW5 9WA",
          latitude: 51.481278,
          longitude: -0.413948
        },
        "81391c00-9522-4105-9b3c-f1c967329e1d" => {
          provider_name: "West Nottinghamshire College",
          ukprn: "10007427",
          instid: "1006",
          name: "Main campus",
          country: "England",
          postcode: "NG18 5BH",
          latitude: 53.121674,
          longitude: -1.191505
        },
        "3948493e-9b65-4404-bf90-4ece05fb236d" => {
          provider_name: "West Suffolk College",
          ukprn: "10007431",
          instid: "1190",
          name: "Main campus",
          country: "England",
          postcode: "IP33 3RL",
          latitude: 52.249242,
          longitude: 0.700211
        },
        "88a0ec7f-45a4-43ef-9a17-f92140fa2af4" => {
          provider_name: "West Thames College",
          ukprn: "10007434",
          instid: "1003",
          name: "Main campus",
          country: "England",
          postcode: "TW7 4HS",
          latitude: 51.475195,
          longitude: -0.342176
        },
        "0cf511c2-fcfe-4e5e-8d40-768a120cd034" => {
          provider_name: "Weston College of Further and Higher Education",
          ukprn: "10007459",
          instid: "1014",
          name: "Main campus",
          country: "England",
          postcode: "BS23 2AL",
          latitude: 51.350953,
          longitude: -2.981524
        },
        "207e92bc-6fc3-4066-b6ea-79e7818e8021" => {
          provider_name: "Weymouth College",
          ukprn: "10007469",
          instid: "1013",
          name: "Main campus",
          country: "England",
          postcode: "DT4 7LQ",
          latitude: 50.622896,
          longitude: -2.451425
        },
        "dba87f72-9bb7-4963-a64e-5b488c822617" => {
          provider_name: "Wigan and Leigh College",
          ukprn: "10007500",
          instid: "1093",
          name: "Main campus",
          country: "England",
          postcode: "WN1 9LB",
          latitude: 53.546967,
          longitude: -2.635089
        },
        "813da015-2e05-4c91-9d21-7bd19d07feee" => {
          provider_name: "William Booth College",
          ukprn: "10021256",
          instid: "0316",
          name: "Entire HEP",
          country: "England",
          postcode: "SE5 8BQ",
          latitude: 51.467544,
          longitude: -0.089302
        },
        "b0a55e41-d807-4f50-83af-c7126751e0cf" => {
          provider_name: "Wiltshire College and University Centre",
          ukprn: "10007527",
          instid: "1011",
          name: "Main campus",
          country: "England",
          postcode: "SN15 3QD",
          latitude: 51.463002,
          longitude: -2.110726
        },
        "f6ead82e-45fd-4127-b000-247a07f9cf28" => {
          provider_name: "Wimbledon School of Art",
          ukprn: "10007532",
          instid: "0084",
          name: "Entire institution",
          country: "England",
          postcode: "SW19 3QA",
          latitude: 51.413335,
          longitude: -0.212374
        },
        "5cc531c4-bed9-44d9-8567-604f8a4f626e" => {
          provider_name: "Wirral Metropolitan College",
          ukprn: "10007553",
          instid: "1009",
          name: "Main campus",
          country: "England",
          postcode: "CH41 4NT",
          latitude: 53.393088,
          longitude: -3.021491
        },
        "96e75301-39ce-452c-8d0f-c5559e7418c4" => {
          provider_name: "Wrexham University",
          ukprn: "10007833",
          instid: "0087",
          name: "Flintshire",
          country: "Wales",
          postcode: "CH7 6AA",
          latitude: 53.211996,
          longitude: -3.144851
        },
        "6acda1e0-2850-485d-8a89-910eedfdf28d" => {
          provider_name: "Wrexham University",
          ukprn: "10007833",
          instid: "0087",
          name: "London",
          country: "England",
          postcode: "KT1 1TY",
          latitude: 51.412286,
          longitude: -0.305806
        },
        "7aa0b7c8-fa9d-427e-8be3-68a2522dd6bf" => {
          provider_name: "Wrexham University",
          ukprn: "10007833",
          instid: "0087",
          name: "Main campus",
          country: "Wales",
          postcode: "LL11 2AW",
          latitude: 53.052626,
          longitude: -3.006109
        },
        "bc0042d3-41d7-4003-bdaa-1e686e24bbee" => {
          provider_name: "Wrexham University",
          ukprn: "10007833",
          instid: "0087",
          name: "St Asaph",
          country: "Wales",
          postcode: "LL17 0JD",
          latitude: 53.255931,
          longitude: -3.475585
        },
        "c77e0cf1-77a1-4c89-b982-bf9c78e80233" => {
          provider_name: "Writtle University College",
          ukprn: "10007657",
          instid: "0189",
          name: "Entire HEP",
          country: "England",
          postcode: "CM1 3RR",
          latitude: 51.737196,
          longitude: 0.428133
        },
        "9f3d6a67-3a47-4ed5-8487-50989172a372" => {
          provider_name: "Writtle University College",
          ukprn: "10007657",
          instid: "0189",
          name: "Shuttleworth College",
          country: "England",
          postcode: "SG18 9EA",
          latitude: 52.085577,
          longitude: -0.325139
        },
        "4ea2477f-b538-41bd-b55d-ade0720e12a9" => {
          provider_name: "Yeovil College",
          ukprn: "10007696",
          instid: "1002",
          name: "Main campus",
          country: "England",
          postcode: "BA21 4DR",
          latitude: 50.948522,
          longitude: -2.63778
        },
        "a6ab075f-033c-4000-997c-f629664c74a1" => {
          provider_name: "York College",
          ukprn: "10007709",
          instid: "1001",
          name: "Main campus",
          country: "England",
          postcode: "YO23 2BB",
          latitude: 53.929705,
          longitude: -1.113609
        },
        "04ea6ef1-6494-4c83-875a-84a9847f3915" => {
          provider_name: "York St John University",
          ukprn: "10007713",
          instid: "0013",
          name: "London Campus",
          country: "England",
          postcode: "EC1A 4JT",
          latitude: 51.521589,
          longitude: -0.098028
        },
        "f6f24c36-37a6-481e-99f0-69576a070a8d" => {
          provider_name: "York St John University",
          ukprn: "10007713",
          instid: "0013",
          name: "Main campus",
          country: "England",
          postcode: "YO31 7EX",
          latitude: 53.964844,
          longitude: -1.079543
        }
      }.freeze

      CAMPUSES = DfE::ReferenceData::HardcodedReferenceList.new(
        DATA,
        schema: SCHEMA,
        list_description: 'Campuses of UK higher-education providers',
        list_usage_guidance: 'To find the campuses operated by a higher-education provider, and their locations',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_campus_data.md#dfereferencedatacampusdatacampuses',
        field_descriptions: FIELD_DESCRIPTIONS
      )

      DATASETS = [CAMPUSES].freeze
    end
  end
end
