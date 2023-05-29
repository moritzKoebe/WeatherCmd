# frozen_string_literal: true

require_relative 'src/weather_service'

service = WeatherService::LondonWeatherService.new
service.get_weather
puts service.place