require_relative '../countries_and_territories'

module DfE
  module ReferenceData
    module HESA
      class Domiciles
        # https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L29-L44
        COUNTRIES_AND_TERRITORIES = DfE::ReferenceData::TweakedReferenceList.new(
          DfE::ReferenceData::CountriesAndTerritories::COUNTRIES_AND_TERRITORIES,
          {
            'QO' => { name: 'Kosovo' },
            'XC' => { name: 'Cyprus' },
            'XF' => { name: 'England' },
            'XG' => { name: 'Northern Ireland' },
            'XH' => { name: 'Scotland' },
            'XI' => { name: 'Wales' },
            'XK' => { name: 'United Kingdom' },
            'XL' => { name: 'Channel Islands' },
            'XX' => { name: 'Antarctica' },
            'ZZ' => nil,
          },
        )

        # https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L3-L12
        SPECIAL_ISO_CODES = DfE::ReferenceData::HardcodedReferenceList.new(
          {
            nil => { code: 'ZZ' },
            'AQ' => { code: 'XX' },
            'CY' => { code: 'XC' },
            'XK' => { code: 'QO' },
          },
          {
            id: { schema: :string, kind: :optional },
            code: :string,
          },
        )

        # https://github.com/DFE-Digital/apply-for-teacher-training/blob/78c9421d8582f63cfdec564b5c0677bfd787552c/app/lib/domicile_resolver.rb#L14-L27
        CODES_FOR_UK_AND_CI = DfE::ReferenceData::HardcodedReferenceList.new(
          {
            nil => { code: 'ZZ' },
            'Channel Islands' => { code: 'XL' },
            'England' => { code: 'XF' },
            'Northern Ireland' => { code: 'XG' },
            'Scotland' => { code: 'XH' },
            'Wales' => { code: 'XI' },
            'other' => { code: 'XK' },
          },
          {
            id: { schema: :string, kind: :optional },
            code: :string,
          },
        )
      end
    end
  end
end
