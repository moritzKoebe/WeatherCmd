# frozen_string_literal: true
require 'net/http'
require 'json'

require_relative '../config_utility'

module WeatherApi
  class ApiCaller
    def get_simple_weather_from(place)
      util = UrlUtility.new('current_weather', place)
      response = Net::HTTP.get_response(util.get_uri)
      if response.is_a?(Net::HTTPSuccess)
        response.body
      else
        nil
      end
    end
  end

  class UrlUtility
    def initialize(api_method, q)
      @config = ConfigUtility.new
      @url = @config.fetch_config 'database_url'
      @url += @config.fetch_config api_method
      append_key(@config.fetch_config 'key')
      append_param q
    end

    def append_param(p)
      @url += '&q='
      @url += p
    end

    def append_key(key)
      @url += 'key='
      @url += key
    end

    def get_uri
      URI(@url)
    end
  end
end
