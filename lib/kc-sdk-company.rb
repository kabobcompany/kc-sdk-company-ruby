require 'rest-client'
require 'kc-sdk-company/version'
require 'kc-sdk-company/configuration'
require 'kc-sdk-company/api'

require 'kc-sdk-company/engine' if defined?(::Rails)

module KcSdkCompany
  def self.configure
    yield configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.api
    @api ||= Api.new
  end
end
