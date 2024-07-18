# frozen_string_literal: true

module Zipcode
  module Api
    class Address
      def self.find(zipcode)
        response = Zipcode.client.get(zipcode)
        Zipcode::Adapter::Address::Response.new(response.dig("xml"))
      end
    end
  end
end
