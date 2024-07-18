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
end
