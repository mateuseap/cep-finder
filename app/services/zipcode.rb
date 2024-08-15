# frozen_string_literal: true

module Zipcode
  DEFAULTS = {
    endpoint: "https://cep.awesomeapi.com.br",
  }

  def self.options
    DEFAULTS.dup
  end

  def self.client(xml: false)
    Zipcode::Client.new(options.merge(xml: xml))
  end

  # Import addresses from a list of zipcodes
  def self.import_addresses(zipcodes)
    zipcodes.map do |zipcode|
      Zipcode::Service::Address.emerge(zipcode)
    end
  end
end
