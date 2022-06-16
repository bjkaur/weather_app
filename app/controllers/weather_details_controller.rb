class WeatherDetailsController < ApplicationController

    def request_api(url)
        # Goes to http and collects data
        require 'net/http'

        # Collect and parse the data using json
        require 'json'

        # Connect to the URL. 
        # Set URI to URL 
        @uri = URI(url)

        # Get URI information and send to HTTP (net)
        # get and save results in response instance variable 
        @response = Net::HTTP.get(@uri)

        # Parse results from response instance variable as JSON
        # and store in output variable 
        @output = JSON.parse(@response)  
    end
    
    # Finds weather using weather API by passing in search input 
    # by the user to the params to find weathers
    def find_weather(postcode)
        query = URI.escape("#{params[:postcode]}")
        request_api = ("http://api.weatherapi.com/v1/forecast.json?key=0022a1b05bde4b43af0101946211112&q=#{query}&days=1&aqi=no&alerts=no")
    end

    # Data displays on weather_search form
    def weather_search
        @weather = find_weather(params[:postcode])

        #Saves temperature in degree C for the search input
        #byebug
        @temperature = @weather['current']['temp_c']
    end

end
