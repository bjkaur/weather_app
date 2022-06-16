Rails.application.routes.draw do
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  
  # Weather Search and Weather results routes
  get 'search', to: 'home#search'

  # Path for action in pages controller calling 
  # ApiController to get weather data
  get '/weather_search', to: 'weather_details#weather_search'
end
