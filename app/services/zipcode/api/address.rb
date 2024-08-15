# frozen_string_literal: true

module Zipcode
  module Api
    class Address
      def self.find(zipcode, xml: false)
        mode = xml ? "xml" : "json"

        response = Zipcode.client(xml:).get("/#{mode}/#{zipcode}")
        response = response.dig("xml") if xml

        Zipcode::Adapter::Address::Response.new(response)
      end
    end
  end
end
