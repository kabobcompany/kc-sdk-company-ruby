require 'kc-sdk-company/api/base'
require 'kc-sdk-company/api/orders'

module KcSdkCompany
  class Api
    attr_accessor :orders

    def initialize
      self.orders = KcSdkCompany::Api::Orders.new(self)
    end

    def resource
      @resource ||= RestClient::Resource.new(
        "#{KcSdkCompany.configuration.api_url}/api/company",
        log: KcSdkCompany.configuration.logger,
        headers: { 'Authorization': "Bearer #{KcSdkCompany.configuration.access_token}" }
      )
    end
  end
end
