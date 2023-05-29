# frozen_string_literal: true

require_relative 'src/weather_service'

service = WeatherService::CurrentWeatherService.new
puts("Which location interests you?")
service.place = gets
weather = service.get_weather
if weather.nil?
  puts "Go look outside bitch boy"
  return
end
puts weather
