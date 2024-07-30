# frozen_string_literal: true

module Zipcode
  DEFAULTS = {
    endpoint: "https://cep.awesomeapi.com.br/xml/",
  }

  def self.options
    DEFAULTS.dup
  end

  def self.client
    Zipcode::Client.new(options)
  end

  # Imports a addressess from a list of zipcodes
  def self.import_addresses(zipcodes)
    zipcodes.each do |zipcode|
      Zipcode::Service::Address.emerge(zipcode)
    end
  end
end
