require 'net/http'
# Parase the data using json
require 'json'

class WeatherDetail 
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
        "http://api.weatherapi.com/v1/current.json?key=ba0fc5acc907496d80c185358221606&q=#{postcode}&aqi=no"
    end

end
