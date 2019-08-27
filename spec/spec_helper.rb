require "awesome_print"
require "json_matchers/rspec"
require 'httparty'
require 'rspec/retry'

JsonMatchers.schema_root = "spec/schemas"

RSpec.configure do |config|
  config.tty = true
  config.formatter = :documentation
  
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

end
