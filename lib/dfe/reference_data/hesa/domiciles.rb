require_relative '../countries_and_territories'

module DfE
  module ReferenceData
    module HESA
      module Domiciles
        # https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L29-L44
        COUNTRIES_AND_TERRITORIES = DfE::ReferenceData::TweakedReferenceList.new(
          DfE::ReferenceData::CountriesAndTerritories::COUNTRIES_AND_TERRITORIES,
          {
            'QO' => { name: 'Kosovo', official_name: 'Kosovo', citizen_names: nil },
            'XC' => { name: 'Cyprus', official_name: 'Cyprus', citizen_names: nil },
            'XF' => { name: 'England', official_name: 'England', citizen_names: nil },
            'XG' => { name: 'Northern Ireland', official_name: 'Northern Ireland', citizen_names: nil },
            'XH' => { name: 'Scotland', official_name: 'Scotland', citizen_names: nil },
            'XI' => { name: 'Wales', official_name: 'Wales', citizen_names: nil },
            'XK' => { name: 'United Kingdom', official_name: 'United Kingdom', citizen_names: nil },
            'XL' => { name: 'Channel Islands', official_name: 'Channel Islands', citizen_names: nil },
            'XX' => { name: 'Antarctica', official_name: 'Antarctica', citizen_names: nil },
          }
        )

        # https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L3-L12
        SPECIAL_ISO_CODES = DfE::ReferenceData::HardcodedReferenceList.new(
          {
            'AQ' => { code: 'XX' },
            'CY' => { code: 'XC' },
            'XK' => { code: 'QO' }
          },
          schema: {
            id: { schema: :string, kind: :optional },
            code: :string
          }
        )

        # https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L14-L27
        CODES_FOR_UK_AND_CI = DfE::ReferenceData::HardcodedReferenceList.new(
          {
            nil => { code: 'ZZ' },
            'England' => { code: 'XF' },
            'Guernsey' => { code: 'GG' },
            'Jersey' => { code: 'JE' },
            'Northern Ireland' => { code: 'XG' },
            'Scotland' => { code: 'XH' },
            'Wales' => { code: 'XI' },
            'other' => { code: 'XK' }
          },
          schema: {
            id: { schema: :string, kind: :optional },
            code: :string
          }
        )
      end
    end
  end
end