class WeatherDetailsController < ApplicationController

    # Fetching data from the apis 
    # Data displays on weather_search form
    def weather_search
        postcode_uri = WeatherDetail.postcode_uri(params[:postcode])
        # JSON.parse takes the query response body and turns it into a hash
        @weather = JSON.parse WeatherDetail.new(postcode_uri).api_response

        # Saves temperature in degree celsius for the search input
        #byebug

        #if @weather.keys.include? 'current'
        #    @temperature = @weather['current']['temp_c']
        
        # For JSON e.g.
        # "forecast": {
        #    "forecastday": [
        #        {
        #            "date": "2022-06-17",
        #            "date_epoch": 1655424000,
        #            "day": {
        #                "maxtemp_c": 25.1,
        
        if @weather.keys.include? 'forecast'
            @temperature = @weather['forecast']['forecastday']['date'.to_i]['date_epoch']['day'.to_i]['maxtemp_c'.to_i]
        else 
            redirect_to search_path, alert: @weather.to_s
        end

    end

end