# To send weather query URL to the weather server 
# and get response
require 'net/http'
# Parse the data using json
require 'json'

class WeatherDetail < ApplicationRecord
    # Ensures alid data is saved 
    validates :postcode, presence: true

    # Connect to the url. Set uri to url
    # usage
    # WeatherDetails.new('http://api.weatherapi.com/v1/current.json?key=&q=M14 4BG&aqi=no').request_api
    def initialize(uri)
        @uri = URI(uri)
    end

    # Get uri information and send to http (net) and save results in 
    # response instance variable
    def api_response
        Net::HTTP.get(@uri)
    end
    
    # Finds weather using weather API by passing in search input by the user
    # to the params of find weather
    def self.postcode_uri(postcode)
        "http://api.weatherapi.com/v1/forecast.json?key=0022a1b05bde4b43af0101946211112&q=#{postcode}&days=1&aqi=no"
    end

end
