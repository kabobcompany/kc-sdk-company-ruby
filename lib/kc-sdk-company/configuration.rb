module KcSdkCompany
  class Configuration
    attr_accessor :api_url, :access_token, :logger

    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
      @api_url ||= 'https://cloud.kabob.io'
    end
  end
end
