require 'simplecov'

SimpleCov.add_filter "/spec/"
# SimpleCov.add_filter "engine.rb"

if ENV['COVERAGE']
  SimpleCov.start
end

Dir[File.dirname(__FILE__) + "/support/active_record/*.rb"].each do |file|
  require file
end

require "bundler/setup"
require 'rspec/its'
require "kc-sdk-company"

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each do |file|
  require file
end

KcSdkCompany.configure do |config|
  config.access_token = '1234'

  config.logger = STDOUT
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
