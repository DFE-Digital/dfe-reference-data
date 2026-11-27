require_relative 'hardcoded_reference_list'
require_relative 'uptime/transformer'

# Although this file is included in the gem, it is not intended to be used by
# users of the gem - it is referenced only at build/deploy time, from the
# corresponding rspecs and the Rakefile, to push Upptime's uptime data into
# BigQuery via the existing DfE::ReferenceData::BigQuery module.

module DfE
  module ReferenceData
    module Uptime
      SCHEMA = {
        id: :string,
        name: :string,
        slug: :string,
        downtime_date: :datetime,
        minutes_down: :integer,
        minutes_monitored: :integer,
        uptime_pct: :real
      }.freeze

      FIELD_DESCRIPTIONS = {
        id: 'A unique identifier composed of the service slug and the downtime date',
        name: 'The human readable name of the service',
        slug: 'The unique slug identifying the service',
        downtime_date: 'The date the downtime was recorded on',
        minutes_down: 'The number of minutes the service was down on this date',
        minutes_monitored: 'The number of minutes in the day that were monitored (always 1440)',
        uptime_pct: 'The percentage of the day the service was up'
      }.freeze

      def self.build_list(services)
        DfE::ReferenceData::HardcodedReferenceList.new(
          Transformer.call(services),
          schema: SCHEMA,
          list_description: 'Daily uptime/downtime statistics for Teacher Services, sourced from Upptime',
          list_docs_url: 'https://github.com/DFE-Digital/teacher-services-upptime',
          field_descriptions: FIELD_DESCRIPTIONS
        )
      end
    end
  end
end
