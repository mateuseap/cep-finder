# frozen_string_literal: true

module Zipcode
  module Service
    class Address
      def self.emerge(zipcode)
        address = Zipcode::Api::Address.find(zipcode)

        ::Address.find_or_create_by(zipcode: zipcode) do
          _1.street = address.street,
          _1.state = address.state,
          _1.city = address.city,
          _1.neighborhood = address.neighborhood,
          _1.areacode = address.areacode
          _1.zipcode = address.zipcode
        end
      end
    end
  end
end
