module WeatherDetailsHelper
    def temperature
        if @temperature.to_i <= 15
            "Weather is Cold."
        elsif @temperature.to_i >= 16 && @temperature.to_i <= 20
            "Weather is Warm."
        else @temperature.to_i > 20 && @temperature.to_i <= 35
            "Weather is Hot"
        end
    end
end