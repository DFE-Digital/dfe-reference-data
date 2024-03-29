module DfE
  module ReferenceData
    module CountriesAndTerritories
      # https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/config/initializers/countries_and_territories.rb
      # https://github.com/alphagov/govuk-country-and-territory-autocomplete/blob/5214c44/dist/location-autocomplete-canonical-list.json
      COUNTRIES_AND_TERRITORIES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          'AD' => { name: 'Andorra' },
          'AE-AJ' => { name: 'Ajman' },
          'AE-AZ' => { name: 'Abu Dhabi' },
          'AE-DU' => { name: 'Dubai' },
          'AE-FU' => { name: 'Fujairah' },
          'AE-RK' => { name: 'Ras al-Khaimah' },
          'AE-SH' => { name: 'Sharjah' },
          'AE-UQ' => { name: 'Umm al-Quwain' },
          'AE' => { name: 'United Arab Emirates' },
          'AF' => { name: 'Afghanistan' },
          'AG' => { name: 'Antigua and Barbuda' },
          'AI' => { name: 'Anguilla' },
          'AL' => { name: 'Albania' },
          'AM' => { name: 'Armenia' },
          'AO' => { name: 'Angola' },
          'AQ' => { name: 'Antarctica' },
          'AR' => { name: 'Argentina' },
          'AS' => { name: 'American Samoa' },
          'AT' => { name: 'Austria' },
          'AU' => { name: 'Australia' },
          'AW' => { name: 'Aruba' },
          'AX' => { name: 'Åland Islands' },
          'AZ' => { name: 'Azerbaijan' },
          'BA' => { name: 'Bosnia and Herzegovina' },
          'BAT' => { name: 'British Antarctic Territory' },
          'BB' => { name: 'Barbados' },
          'BD' => { name: 'Bangladesh' },
          'BE' => { name: 'Belgium' },
          'BF' => { name: 'Burkina Faso' },
          'BG' => { name: 'Bulgaria' },
          'BH' => { name: 'Bahrain' },
          'BI' => { name: 'Burundi' },
          'BJ' => { name: 'Benin' },
          'BL' => { name: 'Saint Barthélemy' },
          'BM' => { name: 'Bermuda' },
          'BN' => { name: 'Brunei' },
          'BO' => { name: 'Bolivia' },
          'BQ-BO' => { name: 'Bonaire' },
          'BQ-SA' => { name: 'Saba' },
          'BQ-SE' => { name: 'Sint Eustatius' },
          'BR' => { name: 'Brazil' },
          'BS' => { name: 'The Bahamas' },
          'BT' => { name: 'Bhutan' },
          'BV' => { name: 'Bouvet Island' },
          'BW' => { name: 'Botswana' },
          'BY' => { name: 'Belarus' },
          'BZ' => { name: 'Belize' },
          'CA' => { name: 'Canada' },
          'CC' => { name: 'Cocos (Keeling) Islands' },
          'CD' => { name: 'Congo (Democratic Republic)' },
          'CF' => { name: 'Central African Republic' },
          'CG' => { name: 'Congo' },
          'CH' => { name: 'Switzerland' },
          'CI' => { name: 'Ivory Coast' },
          'CK' => { name: 'Cook Islands' },
          'CL' => { name: 'Chile' },
          'CM' => { name: 'Cameroon' },
          'CN' => { name: 'China' },
          'CO' => { name: 'Colombia' },
          'CR' => { name: 'Costa Rica' },
          'CS' => { name: 'Czechoslovakia' },
          'CU' => { name: 'Cuba' },
          'CV' => { name: 'Cape Verde' },
          'CW' => { name: 'Curaçao' },
          'CX' => { name: 'Christmas Island' },
          'CY' => { name: 'Cyprus' },
          'CZ' => { name: 'Czechia' },
          'DD' => { name: 'East Germany' },
          'DE' => { name: 'Germany' },
          'DJ' => { name: 'Djibouti' },
          'DK' => { name: 'Denmark' },
          'DM' => { name: 'Dominica' },
          'DO' => { name: 'Dominican Republic' },
          'DZ' => { name: 'Algeria' },
          'EC' => { name: 'Ecuador' },
          'EE' => { name: 'Estonia' },
          'EG' => { name: 'Egypt' },
          'EH' => { name: 'Western Sahara' },
          'ER' => { name: 'Eritrea' },
          'ES-CE' => { name: 'Ceuta' },
          'ES-ML' => { name: 'Melilla' },
          'ES' => { name: 'Spain' },
          'ET' => { name: 'Ethiopia' },
          'FI' => { name: 'Finland' },
          'FJ' => { name: 'Fiji' },
          'FK' => { name: 'Falkland Islands' },
          'FM' => { name: 'Micronesia' },
          'FO' => { name: 'Faroe Islands' },
          'FR' => { name: 'France' },
          'GA' => { name: 'Gabon' },
          'GB' => { name: 'United Kingdom' },
          'GD' => { name: 'Grenada' },
          'GE' => { name: 'Georgia' },
          'GF' => { name: 'French Guiana' },
          'GG' => { name: 'Guernsey' },
          'GH' => { name: 'Ghana' },
          'GI' => { name: 'Gibraltar' },
          'GL' => { name: 'Greenland' },
          'GM' => { name: 'The Gambia' },
          'GN' => { name: 'Guinea' },
          'GP' => { name: 'Guadeloupe' },
          'GQ' => { name: 'Equatorial Guinea' },
          'GR' => { name: 'Greece' },
          'GS' => { name: 'South Georgia and South Sandwich Islands' },
          'GT' => { name: 'Guatemala' },
          'GU' => { name: 'Guam' },
          'GW' => { name: 'Guinea-Bissau' },
          'GY' => { name: 'Guyana' },
          'HK' => { name: 'Hong Kong' },
          'HM' => { name: 'Heard Island and McDonald Islands' },
          'HN' => { name: 'Honduras' },
          'HR' => { name: 'Croatia' },
          'HT' => { name: 'Haiti' },
          'HU' => { name: 'Hungary' },
          'ID' => { name: 'Indonesia' },
          'IE' => { name: 'Ireland' },
          'IL' => { name: 'Israel' },
          'IM' => { name: 'Isle of Man' },
          'IN' => { name: 'India' },
          'IO' => { name: 'British Indian Ocean Territory' },
          'IQ' => { name: 'Iraq' },
          'IR' => { name: 'Iran' },
          'IS' => { name: 'Iceland' },
          'IT' => { name: 'Italy' },
          'JE' => { name: 'Jersey' },
          'JM' => { name: 'Jamaica' },
          'JO' => { name: 'Jordan' },
          'JP' => { name: 'Japan' },
          'KE' => { name: 'Kenya' },
          'KG' => { name: 'Kyrgyzstan' },
          'KH' => { name: 'Cambodia' },
          'KI' => { name: 'Kiribati' },
          'KM' => { name: 'Comoros' },
          'KN' => { name: 'St Kitts and Nevis' },
          'KP' => { name: 'North Korea' },
          'KR' => { name: 'South Korea' },
          'KW' => { name: 'Kuwait' },
          'KY' => { name: 'Cayman Islands' },
          'KZ' => { name: 'Kazakhstan' },
          'LA' => { name: 'Laos' },
          'LB' => { name: 'Lebanon' },
          'LC' => { name: 'St Lucia' },
          'LI' => { name: 'Liechtenstein' },
          'LK' => { name: 'Sri Lanka' },
          'LR' => { name: 'Liberia' },
          'LS' => { name: 'Lesotho' },
          'LT' => { name: 'Lithuania' },
          'LU' => { name: 'Luxembourg' },
          'LV' => { name: 'Latvia' },
          'LY' => { name: 'Libya' },
          'MA' => { name: 'Morocco' },
          'MC' => { name: 'Monaco' },
          'MD' => { name: 'Moldova' },
          'ME' => { name: 'Montenegro' },
          'MF' => { name: 'Saint-Martin (French part)' },
          'MG' => { name: 'Madagascar' },
          'MH' => { name: 'Marshall Islands' },
          'MK' => { name: 'North Macedonia' },
          'ML' => { name: 'Mali' },
          'MM' => { name: 'Myanmar (Burma)' },
          'MN' => { name: 'Mongolia' },
          'MO' => { name: 'Macao' },
          'MP' => { name: 'Northern Mariana Islands' },
          'MQ' => { name: 'Martinique' },
          'MR' => { name: 'Mauritania' },
          'MS' => { name: 'Montserrat' },
          'MT' => { name: 'Malta' },
          'MU' => { name: 'Mauritius' },
          'MV' => { name: 'Maldives' },
          'MW' => { name: 'Malawi' },
          'MX' => { name: 'Mexico' },
          'MY' => { name: 'Malaysia' },
          'MZ' => { name: 'Mozambique' },
          'NA' => { name: 'Namibia' },
          'NC' => { name: 'New Caledonia' },
          'NE' => { name: 'Niger' },
          'NF' => { name: 'Norfolk Island' },
          'NG' => { name: 'Nigeria' },
          'NI' => { name: 'Nicaragua' },
          'NL' => { name: 'Netherlands' },
          'NO' => { name: 'Norway' },
          'NP' => { name: 'Nepal' },
          'NR' => { name: 'Nauru' },
          'NU' => { name: 'Niue' },
          'NZ' => { name: 'New Zealand' },
          'OM' => { name: 'Oman' },
          'PA' => { name: 'Panama' },
          'PE' => { name: 'Peru' },
          'PF' => { name: 'French Polynesia' },
          'PG' => { name: 'Papua New Guinea' },
          'PH' => { name: 'Philippines' },
          'PK' => { name: 'Pakistan' },
          'PL' => { name: 'Poland' },
          'PM' => { name: 'Saint Pierre and Miquelon' },
          'PN' => { name: 'Pitcairn, Henderson, Ducie and Oeno Islands' },
          'PR' => { name: 'Puerto Rico' },
          'PS' => { name: 'Occupied Palestinian Territories' },
          'PT' => { name: 'Portugal' },
          'PW' => { name: 'Palau' },
          'PY' => { name: 'Paraguay' },
          'QA' => { name: 'Qatar' },
          'RE' => { name: 'Réunion' },
          'RO' => { name: 'Romania' },
          'RS' => { name: 'Serbia' },
          'RU' => { name: 'Russia' },
          'RW' => { name: 'Rwanda' },
          'SA' => { name: 'Saudi Arabia' },
          'SB' => { name: 'Solomon Islands' },
          'SC' => { name: 'Seychelles' },
          'SD' => { name: 'Sudan' },
          'SE' => { name: 'Sweden' },
          'SG' => { name: 'Singapore' },
          'SH-AC' => { name: 'Ascension' },
          'SH-HL' => { name: 'Saint Helena' },
          'SH-TA' => { name: 'Tristan da Cunha' },
          'SI' => { name: 'Slovenia' },
          'SJ' => { name: 'Svalbard and Jan Mayen' },
          'SK' => { name: 'Slovakia' },
          'SL' => { name: 'Sierra Leone' },
          'SM' => { name: 'San Marino' },
          'SN' => { name: 'Senegal' },
          'SO' => { name: 'Somalia' },
          'SR' => { name: 'Suriname' },
          'SS' => { name: 'South Sudan' },
          'ST' => { name: 'Sao Tome and Principe' },
          'SU' => { name: 'USSR' },
          'SV' => { name: 'El Salvador' },
          'SX' => { name: 'Sint Maarten (Dutch part)' },
          'SY' => { name: 'Syria' },
          'SZ' => { name: 'Eswatini' },
          'TC' => { name: 'Turks and Caicos Islands' },
          'TD' => { name: 'Chad' },
          'TF' => { name: 'French Southern Territories' },
          'TG' => { name: 'Togo' },
          'TH' => { name: 'Thailand' },
          'TJ' => { name: 'Tajikistan' },
          'TK' => { name: 'Tokelau' },
          'TL' => { name: 'East Timor' },
          'TM' => { name: 'Turkmenistan' },
          'TN' => { name: 'Tunisia' },
          'TO' => { name: 'Tonga' },
          'TR' => { name: 'Turkey' },
          'TT' => { name: 'Trinidad and Tobago' },
          'TV' => { name: 'Tuvalu' },
          'TW' => { name: 'Taiwan' },
          'TZ' => { name: 'Tanzania' },
          'UA' => { name: 'Ukraine' },
          'UG' => { name: 'Uganda' },
          'UM-67' => { name: 'Johnston Atoll' },
          'UM-71' => { name: 'Midway Islands' },
          'UM-76' => { name: 'Navassa Island' },
          'UM-79' => { name: 'Wake Island' },
          'UM-81' => { name: 'Baker Island' },
          'UM-84' => { name: 'Howland Island' },
          'UM-86' => { name: 'Jarvis Island' },
          'UM-89' => { name: 'Kingman Reef' },
          'UM-95' => { name: 'Palmyra Atoll' },
          'US' => { name: 'United States' },
          'UY' => { name: 'Uruguay' },
          'UZ' => { name: 'Uzbekistan' },
          'VA' => { name: 'Vatican City' },
          'VC' => { name: 'St Vincent' },
          'VE' => { name: 'Venezuela' },
          'VG' => { name: 'British Virgin Islands' },
          'VI' => { name: 'United States Virgin Islands' },
          'VN' => { name: 'Vietnam' },
          'VU' => { name: 'Vanuatu' },
          'WF' => { name: 'Wallis and Futuna' },
          'WS' => { name: 'Samoa' },
          'XA' => { name: 'Cyprus (European Union)' },
          'XB' => { name: 'Cyprus (non European Union)' },
          'XK' => { name: 'Kosovo' },
          'XQZ' => { name: 'Akrotiri' },
          'XXD' => { name: 'Dhekelia' },
          'YE' => { name: 'Yemen' },
          'YT' => { name: 'Mayotte' },
          'YU' => { name: 'Yugoslavia' },
          'ZA' => { name: 'South Africa' },
          'ZM' => { name: 'Zambia' },
          'ZW' => { name: 'Zimbabwe' }
        },
        schema: {
          id: :string,
          name: :string
        },
        list_description: 'A mapping of ISO country/territory codes to country/territory names.',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_countries_and_territories.md#dfereferencedatacountriesandterritoriescountries_and_territories',
        field_descriptions: {
          id: 'The country or territory\'s ISO code',
          name: 'The human-readable name of the country or territory'
        }
      )

      # https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L47-L59
      UK_AND_CI_POSTCODE_PREFIX_COUNTRIES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          'England' => {
            prefixes: ['AL', 'B', 'BA', 'BB', 'BD', 'BH', 'BL', 'BN', 'BR', 'BS', 'CA', 'CB', 'CM', 'CO', 'CR', 'CT', 'CV', 'CW', 'DA', 'DE', 'DH', 'DL', 'DN', 'DT', 'DY', 'E', 'EC', 'EN', 'EX', 'FY', 'GL', 'GU', 'HA', 'HD', 'HG', 'HP', 'HU', 'HX', 'IG', 'IP', 'KT', 'L', 'LA', 'LE', 'LN', 'LS', 'LU', 'M', 'ME', 'MK', 'N', 'NE', 'NG', 'NN', 'NR', 'NW', 'OL', 'OX', 'PE', 'PL', 'PO', 'PR', 'RG', 'RH', 'RM', 'S', 'SE', 'SG', 'SK', 'SL', 'SM', 'SN', 'SO', 'SP', 'SR', 'SS', 'ST', 'SW', 'TA', 'TF', 'TN', 'TQ', 'TR', 'TS', 'TW', 'UB', 'W', 'WA', 'WC', 'WD', 'WF', 'WN', 'WR', 'WS', 'WV', 'YO']
          },
          'Guernsey' => { prefixes: ['GY'] },
          'Jersey' => { prefixes: ['JE'] },
          'Northern Ireland' => { prefixes: ['BT'] },
          'Scotland' => { prefixes: ['AB', 'DD', 'EH', 'FK', 'G', 'HS', 'IV', 'KA', 'KW', 'KY', 'ML', 'PA', 'PH', 'ZE'] },
          'Spanning Two Countries' => { prefixes: ['CH', 'DG', 'HR', 'LD', 'LL', 'NP', 'SY', 'TD'] },
          'Wales' => { prefixes: ['CF', 'SA'] }
        },
        schema: {
          id: :string,
          prefixes: { kind: :array, element_schema: :string }
        },
        list_description: 'Postcode prefixes for the UK and Channel Islands grouped by country/territory.',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_countries_and_territories.md#dfereferencedatacountriesandterritoriesuk_and_ci_postcode_prefix_countries',
        field_descriptions: {
          id: 'The human readable country/territory name',
          prefixes: 'A list of postcode prefixes (letters only)'
        }
      )
    end
  end
end
