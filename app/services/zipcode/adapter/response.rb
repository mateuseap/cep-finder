# frozen_string_literal: true

module Zipcode
  module Adapter
    class Response
      attr_reader :payload

      def initialize(payload)
        @payload = payload
      end
    end
  end
end
