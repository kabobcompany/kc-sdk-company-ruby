module KcSdkCompany
  class Api
    class Orders < Base
      def surplus(query)
        validate_keys!(query, %i[company_id plan scope])
        resp = resource['v1/orders/surplus'].get({ params: query })
        JSON.parse(resp.body)
      end

      def consuming(data)
        validate_keys!(data, %i[company_id plan scope quantity taken_at uid])
        resp = resource['v1/orders/consuming'].post(data)
        JSON.parse(resp.body)
      end
    end
  end
end
