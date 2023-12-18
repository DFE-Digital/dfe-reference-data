require 'dfe/reference_data/bank_holidays'

RSpec.describe DfE::ReferenceData::BankHolidays::BANK_HOLIDAYS do
  it_should_behave_like 'a list of valid records'
end
