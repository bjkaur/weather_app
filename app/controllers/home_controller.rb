class HomeController < ApplicationController
  def index 
  end 

  def api_web_data
    @api = WeatherDetailsController.new
    @api_output = @api.api_data
  end

  def search 
  end
end

