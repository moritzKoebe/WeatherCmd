# frozen_string_literal: true

module WeatherService
  class LondonWeatherService
    attr_reader :place
    def initialize
      @place = "London"
    end
    def get_weather
      puts "There is no weather in #{@place}"
    end
  end
end
