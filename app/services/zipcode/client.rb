# frozen_string_literal: true

module Zipcode
  class Client < MultiTools::ApiClient
    private
      def parse(response)
        if !valid?(response)
          raise MultiTools::ApiClient::Error.new "#{@logname}: Invalid response received - #{log_sanitizer(response.body)}", log_sanitizer(response.body), response.code
        elsif response.body.present?
          Hash.from_xml(response.body)
        end
      end
  end
end
