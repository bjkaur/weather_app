class WeatherDetailsController < ApplicationController
    
    # Fetching data from the apis 
        # Data displays on weather_search form
        def weather_search
            postcode_uri = WeatherDetail.postcode_uri(params[:postcode])
            @weather = JSON.parse WeatherDetail.new(postcode_uri).api_response

            # Saves temperature in degree celsius for the search input
            if @weather.keys.include? 'current'
                @temperature = @weather['current']['temp_c']
            else 
                redirect_to search_path, alert: @weather.to_s
            end
            
            #@forecast = @weather['forecast']
            #@forecastday = @weather['forecastday']
            #@forecast.byebug
        end

end