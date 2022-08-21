module KcSdkCompany
  class Api
    class Base
      def initialize(api)
        @api = api
      end

      def resource
        @api.resource
      end

      def validate_keys!(hash, keys)
        keys.each do |k|
          raise ArgumentError, "required keywords: #{keys.join(', ')}" unless hash.key?(k)
        end
      end
    end
  end
end
