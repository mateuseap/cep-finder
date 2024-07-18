# frozen_string_literal: true

module Zipcode
  module Adapter
    class Address::Response < Response
      def street
        payload['address']
      end

      def state
        payload['state']
      end

      def city
        payload['city']
      end

      def neighborhood
        payload['district']
      end

      def areacode
        payload['ddd']
      end
    end
  end
end
