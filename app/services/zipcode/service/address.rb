# frozen_string_literal: true

module Zipcode
  module Service
    class Address
      def self.emerge(zipcode)
        address = Zipcode::Api::Address.find(zipcode)

        ::Address.find_or_create_by(
          street: address.street,
          state: address.state,
          city: address.city,
          neighborhood: address.neighborhood,
          areacode: address.areacode
        )
      end
    end
  end
end
