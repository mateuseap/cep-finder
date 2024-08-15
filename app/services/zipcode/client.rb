# frozen_string_literal: true

module Zipcode
  class Client < MultiTools::ApiClient
    private
      def parse(response)
        if !valid?(response)
          raise MultiTools::ApiClient::Error.new "#{@logname}: Invalid response received - #{log_sanitizer(response.body)}", log_sanitizer(response.body), response.code
        elsif response.body.present?
          if @options[:xml]
            Hash.from_xml(response.body)
          else
            JSON.parse(response.body)
          end
        end
      end
  end
end
