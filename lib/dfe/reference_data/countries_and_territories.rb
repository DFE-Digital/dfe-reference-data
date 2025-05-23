module DfE
  module ReferenceData
    module CountriesAndTerritories
      COUNTRIES_AND_TERRITORIES = DfE::ReferenceData::HardcodedReferenceList.new(
        {
          'AF' => { name: 'Afghanistan', official_name: 'The Islamic Republic of Afghanistan', citizen_names: 'Afghan' },
          'XQZ' => { name: 'Akrotiri', official_name: 'Akrotiri', citizen_names: 'Not applicable' },
          'AL' => { name: 'Albania', official_name: 'The Republic of Albania', citizen_names: 'Albanian' },
          'DZ' => { name: 'Algeria', official_name: 'The People\'s Democratic Republic of Algeria', citizen_names: 'Algerian' },
          'AD' => { name: 'Andorra', official_name: 'The Principality of Andorra', citizen_names: 'Andorran' },
          'AO' => { name: 'Angola', official_name: 'The Republic of Angola', citizen_names: 'Angolan' },
          'AI' => { name: 'Anguilla', official_name: 'Anguilla', citizen_names: 'Anguillan' },
          'AG' => { name: 'Antigua and Barbuda', official_name: 'Antigua and Barbuda', citizen_names: 'Citizen of Antigua and Barbuda' },
          'AR' => { name: 'Argentina', official_name: 'The Argentine Republic', citizen_names: 'Argentine' },
          'AM' => { name: 'Armenia', official_name: 'The Republic of Armenia', citizen_names: 'Armenian' },
          'AU' => { name: 'Australia', official_name: 'The Commonwealth of Australia', citizen_names: 'Australian' },
          'AT' => { name: 'Austria', official_name: 'The Republic of Austria', citizen_names: 'Austrian' },
          'AZ' => { name: 'Azerbaijan', official_name: 'The Republic of Azerbaijan', citizen_names: 'Azerbaijani' },
          'BH' => { name: 'Bahrain', official_name: 'The Kingdom of Bahrain', citizen_names: 'Bahraini' },
          'BD' => { name: 'Bangladesh', official_name: 'The People\'s Republic of Bangladesh', citizen_names: 'Bangladeshi' },
          'BB' => { name: 'Barbados', official_name: 'Barbados', citizen_names: 'Barbadian' },
          'BY' => { name: 'Belarus', official_name: 'The Republic of Belarus', citizen_names: 'Belarusian' },
          'BE' => { name: 'Belgium', official_name: 'The Kingdom of Belgium', citizen_names: 'Belgian' },
          'BZ' => { name: 'Belize', official_name: 'Belize', citizen_names: 'Belizean' },
          'BJ' => { name: 'Benin', official_name: 'The Republic of Benin', citizen_names: 'Beninese' },
          'BM' => { name: 'Bermuda', official_name: 'Bermuda', citizen_names: 'Bermudan' },
          'BT' => { name: 'Bhutan', official_name: 'The Kingdom of Bhutan', citizen_names: 'Bhutanese' },
          'BO' => { name: 'Bolivia', official_name: 'The Plurinational State of Bolivia', citizen_names: 'Bolivian' },
          'BA' => { name: 'Bosnia and Herzegovina', official_name: 'Bosnia and Herzegovina', citizen_names: 'Citizen of Bosnia and Herzegovina' },
          'BW' => { name: 'Botswana', official_name: 'The Republic of Botswana', citizen_names: 'Botswanan' },
          'BR' => { name: 'Brazil', official_name: 'The Federative Republic of Brazil', citizen_names: 'Brazilian' },
          'BAT' => { name: 'British Antarctic Territory', official_name: 'British Antarctic Territory', citizen_names: 'Not applicable' },
          'IO' => { name: 'British Indian Ocean Territory', official_name: 'The British Indian Ocean Territory', citizen_names: 'Not applicable' },
          'VG' => { name: 'British Virgin Islands', official_name: 'The Virgin Islands', citizen_names: 'British Virgin Islander' },
          'BN' => { name: 'Brunei', official_name: 'Brunei Darussalam', citizen_names: 'Bruneian' },
          'BG' => { name: 'Bulgaria', official_name: 'The Republic of Bulgaria', citizen_names: 'Bulgarian' },
          'BF' => { name: 'Burkina Faso', official_name: 'Burkina Faso', citizen_names: 'Burkinan' },
          'BI' => { name: 'Burundi', official_name: 'The Republic of Burundi', citizen_names: 'Burundian' },
          'KH' => { name: 'Cambodia', official_name: 'The Kingdom of Cambodia', citizen_names: 'Cambodian' },
          'CM' => { name: 'Cameroon', official_name: 'The Republic of Cameroon', citizen_names: 'Cameroonian' },
          'CA' => { name: 'Canada', official_name: 'Canada', citizen_names: 'Canadian' },
          'CV' => { name: 'Cape Verde', official_name: 'The Republic of Cabo Verde', citizen_names: 'Cape Verdean' },
          'KY' => { name: 'Cayman Islands', official_name: 'Cayman Islands', citizen_names: 'Cayman Islander, Caymanian' },
          'CF' => { name: 'Central African Republic', official_name: 'The Central African Republic', citizen_names: 'Central African' },
          'TD' => { name: 'Chad', official_name: 'The Republic of Chad', citizen_names: 'Chadian' },
          'CL' => { name: 'Chile', official_name: 'The Republic of Chile', citizen_names: 'Chilean' },
          'CN' => { name: 'China', official_name: 'The People\'s Republic of China', citizen_names: 'Chinese' },
          'CO' => { name: 'Colombia', official_name: 'The Republic of Colombia', citizen_names: 'Colombian' },
          'KM' => { name: 'Comoros', official_name: 'The Union of the Comoros', citizen_names: 'Comoran' },
          'CG' => { name: 'Congo', official_name: 'The Republic of the Congo', citizen_names: 'Congolese (Republic of the Congo)' },
          'CD' => { name: 'Congo (Democratic Republic)', official_name: 'The Democratic Republic of the Congo', citizen_names: 'Congolese (DRC)' },
          'CR' => { name: 'Costa Rica', official_name: 'The Republic of Costa Rica', citizen_names: 'Costa Rican' },
          'HR' => { name: 'Croatia', official_name: 'The Republic of Croatia', citizen_names: 'Croatian' },
          'CU' => { name: 'Cuba', official_name: 'The Republic of Cuba', citizen_names: 'Cuban' },
          'CY' => { name: 'Cyprus', official_name: 'The Republic of Cyprus', citizen_names: 'Cypriot' },
          'CZ' => { name: 'Czechia', official_name: 'The Czech Republic', citizen_names: 'Czech' },
          'DK' => { name: 'Denmark', official_name: 'The Kingdom of Denmark', citizen_names: 'Danish' },
          'XXD' => { name: 'Dhekelia', official_name: 'Dhekelia', citizen_names: 'Not applicable' },
          'DJ' => { name: 'Djibouti', official_name: 'The Republic of Djibouti', citizen_names: 'Djiboutian' },
          'DM' => { name: 'Dominica', official_name: 'The Commonwealth of Dominica', citizen_names: 'Dominican' },
          'DO' => { name: 'Dominican Republic', official_name: 'The Dominican Republic', citizen_names: 'Citizen of the Dominican Republic' },
          'TL' => { name: 'East Timor', official_name: 'The Democratic Republic of Timor-Leste', citizen_names: 'East Timorese' },
          'EC' => { name: 'Ecuador', official_name: 'The Republic of Ecuador', citizen_names: 'Ecuadorean' },
          'EG' => { name: 'Egypt', official_name: 'The Arab Republic of Egypt', citizen_names: 'Egyptian' },
          'SV' => { name: 'El Salvador', official_name: 'The Republic of El Salvador', citizen_names: 'Salvadorean' },
          'GB-ENG' => { name: 'England', official_name: 'England', citizen_names: 'Briton, British' },
          'GQ' => { name: 'Equatorial Guinea', official_name: 'The Republic of Equatorial Guinea', citizen_names: 'Equatorial Guinean' },
          'ER' => { name: 'Eritrea', official_name: 'The State of Eritrea', citizen_names: 'Eritrean' },
          'EE' => { name: 'Estonia', official_name: 'The Republic of Estonia', citizen_names: 'Estonian' },
          'SZ' => { name: 'Eswatini', official_name: 'Kingdom of Eswatini', citizen_names: 'Swazi' },
          'ET' => { name: 'Ethiopia', official_name: 'The Federal Democratic Republic of Ethiopia', citizen_names: 'Ethiopian' },
          'FK' => { name: 'Falkland Islands', official_name: 'Falkland Islands', citizen_names: 'Falkland Islander' },
          'FM' => { name: 'Federated States of Micronesia', official_name: 'Federated States of Micronesia', citizen_names: 'Micronesian' },
          'FJ' => { name: 'Fiji', official_name: 'The Republic of Fiji', citizen_names: 'Fijian' },
          'FI' => { name: 'Finland', official_name: 'The Republic of Finland', citizen_names: 'Finnish' },
          'FR' => { name: 'France', official_name: 'The French Republic', citizen_names: 'French' },
          'GA' => { name: 'Gabon', official_name: 'The Gabonese Republic', citizen_names: 'Gabonese' },
          'GE' => { name: 'Georgia', official_name: 'Georgia', citizen_names: 'Georgian' },
          'DE' => { name: 'Germany', official_name: 'The Federal Republic of Germany', citizen_names: 'German' },
          'GH' => { name: 'Ghana', official_name: 'The Republic of Ghana', citizen_names: 'Ghanaian' },
          'GI' => { name: 'Gibraltar', official_name: 'Gibraltar', citizen_names: 'Gibraltarian' },
          'GR' => { name: 'Greece', official_name: 'The Hellenic Republic', citizen_names: 'Greek' },
          'GD' => { name: 'Grenada', official_name: 'Grenada', citizen_names: 'Grenadian' },
          'GT' => { name: 'Guatemala', official_name: 'The Republic of Guatemala', citizen_names: 'Guatemalan' },
          'GG' => { name: 'Guernsey, Alderney, Sark', official_name: 'Bailiwick of Guernsey', citizen_names: 'Guernseyman/Guernseywoman or Giernési, Ridunian, Sarkee as appropriate' },
          'GN' => { name: 'Guinea', official_name: 'The Republic of Guinea', citizen_names: 'Guinean' },
          'GW' => { name: 'Guinea-Bissau', official_name: 'The Republic of Guinea-Bissau', citizen_names: 'Citizen of Guinea-Bissau' },
          'GY' => { name: 'Guyana', official_name: 'The Co-operative Republic of Guyana', citizen_names: 'Guyanese' },
          'HT' => { name: 'Haiti', official_name: 'The Republic of Haiti', citizen_names: 'Haitian' },
          'HN' => { name: 'Honduras', official_name: 'The Republic of Honduras', citizen_names: 'Honduran' },
          'HU' => { name: 'Hungary', official_name: 'Hungary', citizen_names: 'Hungarian' },
          'HK' => { name: 'Hong Kong', official_name: 'Hong Kong Special Administrative Region of the People\'s Republic of China', citizen_names: 'Hongkonger or Cantonese' },
          'IS' => { name: 'Iceland', official_name: 'Iceland', citizen_names: 'Icelandic' },
          'IN' => { name: 'India', official_name: 'The Republic of India', citizen_names: 'Indian' },
          'ID' => { name: 'Indonesia', official_name: 'The Republic of Indonesia', citizen_names: 'Indonesian' },
          'IR' => { name: 'Iran', official_name: 'The Islamic Republic of Iran', citizen_names: 'Iranian' },
          'IQ' => { name: 'Iraq', official_name: 'The Republic of Iraq', citizen_names: 'Iraqi' },
          'IE' => { name: 'Ireland', official_name: 'Ireland', citizen_names: 'Irish' },
          'IM' => { name: 'Isle of Man', official_name: 'Isle of Man', citizen_names: 'Manxman/Manxwoman or Manx' },
          'IL' => { name: 'Israel', official_name: 'The State of Israel', citizen_names: 'Israeli' },
          'IT' => { name: 'Italy', official_name: 'The Italian Republic', citizen_names: 'Italian' },
          'CI' => { name: 'Ivory Coast', official_name: 'The Republic of Côte D’Ivoire', citizen_names: 'Ivorian' },
          'JM' => { name: 'Jamaica', official_name: 'Jamaica', citizen_names: 'Jamaican' },
          'JP' => { name: 'Japan', official_name: 'Japan', citizen_names: 'Japanese' },
          'JE' => { name: 'Jersey', official_name: 'Bailiwick of Jersey', citizen_names: 'Jerseyman/Jerseywoman' },
          'JO' => { name: 'Jordan', official_name: 'The Hashemite Kingdom of Jordan', citizen_names: 'Jordanian' },
          'KZ' => { name: 'Kazakhstan', official_name: 'The Republic of Kazakhstan', citizen_names: 'Kazakh' },
          'KE' => { name: 'Kenya', official_name: 'The Republic of Kenya', citizen_names: 'Kenyan' },
          'KI' => { name: 'Kiribati', official_name: 'The Republic of Kiribati', citizen_names: 'Citizen of Kiribati' },
          'XK' => { name: 'Kosovo', official_name: 'The Republic of Kosovo', citizen_names: 'Kosovan' },
          'KW' => { name: 'Kuwait', official_name: 'The State of Kuwait', citizen_names: 'Kuwaiti' },
          'KG' => { name: 'Kyrgyzstan', official_name: 'The Kyrgyz Republic', citizen_names: 'Kyrgyz' },
          'LA' => { name: 'Laos', official_name: 'The Lao People\'s Democratic Republic', citizen_names: 'Lao' },
          'LV' => { name: 'Latvia', official_name: 'The Republic of Latvia', citizen_names: 'Latvian' },
          'LB' => { name: 'Lebanon', official_name: 'The Lebanese Republic', citizen_names: 'Lebanese' },
          'LS' => { name: 'Lesotho', official_name: 'The Kingdom of Lesotho', citizen_names: 'Citizen of Lesotho' },
          'LR' => { name: 'Liberia', official_name: 'The Republic of Liberia', citizen_names: 'Liberian' },
          'LY' => { name: 'Libya', official_name: 'State of Libya', citizen_names: 'Libyan' },
          'LI' => { name: 'Liechtenstein', official_name: 'The Principality of Liechtenstein', citizen_names: 'Liechtenstein citizen' },
          'LT' => { name: 'Lithuania', official_name: 'The Republic of Lithuania', citizen_names: 'Lithuanian' },
          'LU' => { name: 'Luxembourg', official_name: 'The Grand Duchy of Luxembourg', citizen_names: 'Luxembourger' },
          'MG' => { name: 'Madagascar', official_name: 'The Republic of Madagascar', citizen_names: 'Citizen of Madagascar' },
          'MW' => { name: 'Malawi', official_name: 'The Republic of Malawi', citizen_names: 'Malawian' },
          'MY' => { name: 'Malaysia', official_name: 'Malaysia', citizen_names: 'Malaysian' },
          'MV' => { name: 'Maldives', official_name: 'The Republic of Maldives', citizen_names: 'Maldivian' },
          'ML' => { name: 'Mali', official_name: 'The Republic of Mali', citizen_names: 'Malian' },
          'MT' => { name: 'Malta', official_name: 'The Republic of Malta', citizen_names: 'Maltese' },
          'MH' => { name: 'Marshall Islands', official_name: 'The Republic of the Marshall Islands', citizen_names: 'Marshallese' },
          'MR' => { name: 'Mauritania', official_name: 'The Islamic Republic of Mauritania', citizen_names: 'Mauritanian' },
          'MU' => { name: 'Mauritius', official_name: 'The Republic of Mauritius', citizen_names: 'Mauritian' },
          'MX' => { name: 'Mexico', official_name: 'The United Mexican States', citizen_names: 'Mexican' },
          'MD' => { name: 'Moldova', official_name: 'The Republic of Moldova', citizen_names: 'Moldovan' },
          'MC' => { name: 'Monaco', official_name: 'The Principality of Monaco', citizen_names: 'Monegasque' },
          'MN' => { name: 'Mongolia', official_name: 'Mongolia', citizen_names: 'Mongolian' },
          'ME' => { name: 'Montenegro', official_name: 'Montenegro', citizen_names: 'Montenegrin' },
          'MS' => { name: 'Montserrat', official_name: 'Montserrat', citizen_names: 'Montserratian' },
          'MA' => { name: 'Morocco', official_name: 'The Kingdom of Morocco', citizen_names: 'Moroccan' },
          'MZ' => { name: 'Mozambique', official_name: 'The Republic of Mozambique', citizen_names: 'Mozambican' },
          'MM' => { name: 'Myanmar (Burma)', official_name: 'The Republic of the Union of Myanmar', citizen_names: 'Citizen of Myanmar' },
          'NA' => { name: 'Namibia', official_name: 'The Republic of Namibia', citizen_names: 'Namibian' },
          'NR' => { name: 'Nauru', official_name: 'The Republic of Nauru', citizen_names: 'Nauruan' },
          'NP' => { name: 'Nepal', official_name: 'Nepal', citizen_names: 'Nepalese' },
          'NL' => { name: 'Netherlands', official_name: 'The Kingdom of the Netherlands', citizen_names: 'Dutch' },
          'NZ' => { name: 'New Zealand', official_name: 'New Zealand', citizen_names: 'New Zealander' },
          'NI' => { name: 'Nicaragua', official_name: 'The Republic of Nicaragua', citizen_names: 'Nicaraguan' },
          'NE' => { name: 'Niger', official_name: 'The Republic of Niger', citizen_names: 'Nigerien' },
          'NG' => { name: 'Nigeria', official_name: 'The Federal Republic of Nigeria', citizen_names: 'Nigerian' },
          'KP' => { name: 'North Korea', official_name: 'The Democratic People\'s Republic of Korea', citizen_names: 'North Korean' },
          'MK' => { name: 'North Macedonia', official_name: 'Republic of North Macedonia', citizen_names: 'Macedonian' },
          'GB-NIR' => { name: 'Northern Ireland', official_name: 'Northern Ireland', citizen_names: 'Briton, British' },
          'NO' => { name: 'Norway', official_name: 'The Kingdom of Norway', citizen_names: 'Norwegian' },
          'OM' => { name: 'Oman', official_name: 'The Sultanate of Oman', citizen_names: 'Omani' },
          'PK' => { name: 'Pakistan', official_name: 'The Islamic Republic of Pakistan', citizen_names: 'Pakistani' },
          'PW' => { name: 'Palau', official_name: 'The Republic of Palau', citizen_names: 'Palauan' },
          'PA' => { name: 'Panama', official_name: 'The Republic of Panama', citizen_names: 'Panamanian' },
          'PG' => { name: 'Papua New Guinea', official_name: 'The Independent State of Papua New Guinea', citizen_names: 'Papua New Guinean' },
          'PY' => { name: 'Paraguay', official_name: 'The Republic of Paraguay', citizen_names: 'Paraguayan' },
          'PE' => { name: 'Peru', official_name: 'The Republic of Peru', citizen_names: 'Peruvian' },
          'PH' => { name: 'Philippines', official_name: 'The Republic of the Philippines', citizen_names: 'Filipino' },
          'PN' => { name: 'Pitcairn, Henderson, Ducie and Oeno Islands', official_name: 'Pitcairn, Henderson, Ducie and Oeno Islands', citizen_names: 'Pitcairn Islander or Pitcairner' },
          'PL' => { name: 'Poland', official_name: 'The Republic of Poland', citizen_names: 'Polish' },
          'PT' => { name: 'Portugal', official_name: 'The Portuguese Republic', citizen_names: 'Portuguese' },
          'QA' => { name: 'Qatar', official_name: 'The State of Qatar', citizen_names: 'Qatari' },
          'RO' => { name: 'Romania', official_name: 'Romania', citizen_names: 'Romanian' },
          'RU' => { name: 'Russia', official_name: 'The Russian Federation', citizen_names: 'Russian' },
          'RW' => { name: 'Rwanda', official_name: 'The Republic of Rwanda', citizen_names: 'Rwandan' },
          'WS' => { name: 'Samoa', official_name: 'The Independent State of Samoa', citizen_names: 'Samoan' },
          'SM' => { name: 'San Marino', official_name: 'The Republic of San Marino', citizen_names: 'San Marinese' },
          'ST' => { name: 'Sao Tome and Principe', official_name: 'The Democratic Republic of Sao Tome and Principe', citizen_names: 'Sao Tomean' },
          'SA' => { name: 'Saudi Arabia', official_name: 'The Kingdom of Saudi Arabia', citizen_names: 'Saudi Arabian' },
          'GB-SCT' => { name: 'Scotland', official_name: 'Scotland', citizen_names: 'Briton, British' },
          'SN' => { name: 'Senegal', official_name: 'The Republic of Senegal', citizen_names: 'Senegalese' },
          'RS' => { name: 'Serbia', official_name: 'The Republic of Serbia', citizen_names: 'Serbian' },
          'SC' => { name: 'Seychelles', official_name: 'The Republic of Seychelles', citizen_names: 'Citizen of Seychelles' },
          'SL' => { name: 'Sierra Leone', official_name: 'The Republic of Sierra Leone', citizen_names: 'Sierra Leonean' },
          'SG' => { name: 'Singapore', official_name: 'The Republic of Singapore', citizen_names: 'Singaporean' },
          'SK' => { name: 'Slovakia', official_name: 'The Slovak Republic', citizen_names: 'Slovak' },
          'SI' => { name: 'Slovenia', official_name: 'The Republic of Slovenia', citizen_names: 'Slovenian' },
          'SB' => { name: 'Solomon Islands', official_name: 'Solomon Islands', citizen_names: 'Solomon Islander' },
          'SO' => { name: 'Somalia', official_name: 'Federal Republic of Somalia', citizen_names: 'Somali' },
          'ZA' => { name: 'South Africa', official_name: 'The Republic of South Africa', citizen_names: 'South African' },
          'GS' => { name: 'South Georgia and South Sandwich Islands', official_name: 'South Georgia and the South Sandwich Islands', citizen_names: 'Not applicable' },
          'KR' => { name: 'South Korea', official_name: 'The Republic of Korea', citizen_names: 'South Korean' },
          'SS' => { name: 'South Sudan', official_name: 'The Republic of South Sudan', citizen_names: 'South Sudanese' },
          'ES' => { name: 'Spain', official_name: 'The Kingdom of Spain', citizen_names: 'Spanish' },
          'LK' => { name: 'Sri Lanka', official_name: 'The Democratic Socialist Republic of Sri Lanka', citizen_names: 'Sri Lankan' },
          'SH' => { name: 'St Helena, Ascension and Tristan da Cunha', official_name: 'St Helena, Ascension and Tristan da Cunha', citizen_names: 'St Helenian or Tristanian as appropriate. Ascension has no indigenous population' },
          'KN' => { name: 'St Kitts and Nevis', official_name: 'The Federation of Saint Christopher and Nevis', citizen_names: 'Citizen of St Christopher (St Kitts) and Nevis' },
          'LC' => { name: 'St Lucia', official_name: 'Saint Lucia', citizen_names: 'St Lucian' },
          'VC' => { name: 'St Vincent', official_name: 'Saint Vincent and the Grenadines', citizen_names: 'Vincentian' },
          'SD' => { name: 'Sudan', official_name: 'The Republic of the Sudan', citizen_names: 'Sudanese' },
          'SR' => { name: 'Suriname', official_name: 'The Republic of Suriname', citizen_names: 'Surinamese' },
          'SE' => { name: 'Sweden', official_name: 'The Kingdom of Sweden', citizen_names: 'Swedish' },
          'CH' => { name: 'Switzerland', official_name: 'The Swiss Confederation', citizen_names: 'Swiss' },
          'SY' => { name: 'Syria', official_name: 'The Syrian Arab Republic', citizen_names: 'Syrian' },
          'TJ' => { name: 'Tajikistan', official_name: 'The Republic of Tajikistan', citizen_names: 'Tajik' },
          'TZ' => { name: 'Tanzania', official_name: 'The United Republic of Tanzania', citizen_names: 'Tanzanian' },
          'TH' => { name: 'Thailand', official_name: 'The Kingdom of Thailand', citizen_names: 'Thai' },
          'BS' => { name: 'The Bahamas', official_name: 'The Commonwealth of The Bahamas', citizen_names: 'Bahamian' },
          'GM' => { name: 'The Gambia', official_name: 'The Republic of The Gambia', citizen_names: 'Gambian' },
          'TG' => { name: 'Togo', official_name: 'The Togolese Republic', citizen_names: 'Togolese' },
          'TO' => { name: 'Tonga', official_name: 'The Kingdom of Tonga', citizen_names: 'Tongan' },
          'TT' => { name: 'Trinidad and Tobago', official_name: 'The Republic of Trinidad and Tobago', citizen_names: 'Trinidad and Tobago citizen' },
          'TN' => { name: 'Tunisia', official_name: 'Republic of Tunisia', citizen_names: 'Tunisian' },
          'TR' => { name: 'Turkey', official_name: 'Republic of Türkiye', citizen_names: 'Turk, Turkish' },
          'TM' => { name: 'Turkmenistan', official_name: 'Turkmenistan', citizen_names: 'Turkmen' },
          'TC' => { name: 'Turks and Caicos Islands', official_name: 'Turks and Caicos Islands', citizen_names: 'Turks and Caicos Islander' },
          'TV' => { name: 'Tuvalu', official_name: 'Tuvalu', citizen_names: 'Tuvaluan' },
          'UG' => { name: 'Uganda', official_name: 'The Republic of Uganda', citizen_names: 'Ugandan' },
          'UA' => { name: 'Ukraine', official_name: 'Ukraine', citizen_names: 'Ukrainian' },
          'AE' => { name: 'United Arab Emirates', official_name: 'The United Arab Emirates', citizen_names: 'Citizen of the United Arab Emirates' },
          'GB' => { name: 'United Kingdom', official_name: 'The United Kingdom of Great Britain and Northern Ireland', citizen_names: 'Briton, British' },
          'US' => { name: 'United States', official_name: 'The United States of America', citizen_names: 'American' },
          'UY' => { name: 'Uruguay', official_name: 'The Oriental Republic of Uruguay', citizen_names: 'Uruguayan' },
          'UZ' => { name: 'Uzbekistan', official_name: 'The Republic of Uzbekistan', citizen_names: 'Uzbek' },
          'VU' => { name: 'Vanuatu', official_name: 'The Republic of Vanuatu', citizen_names: 'Citizen of Vanuatu' },
          'VA' => { name: 'Vatican City', official_name: 'Vatican City State', citizen_names: 'Vatican citizen' },
          'VE' => { name: 'Venezuela', official_name: 'The Bolivarian Republic of Venezuela', citizen_names: 'Venezuelan' },
          'VN' => { name: 'Vietnam', official_name: 'The Socialist Republic of Viet Nam', citizen_names: 'Vietnamese' },
          'GB-WLS' => { name: 'Wales', official_name: 'Wales', citizen_names: 'Briton, British' },
          'GB-CYM' => { name: 'Wales (Cymru)', official_name: 'Wales', citizen_names: 'Briton, British' },
          'YE' => { name: 'Yemen', official_name: 'The Republic of Yemen', citizen_names: 'Yemeni' },
          'ZM' => { name: 'Zambia', official_name: 'The Republic of Zambia', citizen_names: 'Zambian' },
          'ZW' => { name: 'Zimbabwe', official_name: 'The Republic of Zimbabwe', citizen_names: 'Zimbabwean' }
        },
        schema: {
          id: :string,
          name: :string,
          official_name: :string,
          citizen_names: { schema: :string, kind: :optional }
        },
        list_description: 'A mapping of ISO country codes to country names, official names, and citizen names.',
        list_docs_url: 'https://github.com/DFE-Digital/dfe-reference-data/blob/main/docs/lists_countries_and_territories.md#dfereferencedatacountriesandterritoriescountries_and_territories',
        field_descriptions: {
          id: 'The country ISO code',
          name: 'The human-readable name of the country',
          official_name: 'The human-readable full ‘official name’. Used when the formal version of a country’s name is needed',
          citizen_names: 'The human-readable citizen names. They are not the legal names for the citizen, they do not relate to the citizen’s ethnicity.'
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
