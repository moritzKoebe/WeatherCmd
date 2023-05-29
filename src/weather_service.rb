# frozen_string_literal: true

require_relative '../utility/api/api_caller'

module WeatherService
  class CurrentWeatherService
    attr_accessor :place
    def initialize
      @weather_service = WeatherApi::ApiCaller.new
    end

    def get_weather
      if @place.nil?
        puts "No place has been defined."
      else
        @weather_service.get_simple_weather_from @place
      end
    end
  end
end
