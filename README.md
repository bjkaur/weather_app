Ruby version ruby 2.7.0p0
Rails version Rails 7.0.3

    • To create new app ran rails weather_app on Terminal
    • Did bundle install
    • Type cd weather_app on Terminal
    • Type rails s on Terminal to run the server
    • Go to http://localhost:3000/
    
Documentation:
* Generated home controller using 'rails g home index'
* Changed http://localhost:3000/ page to land on index of home controller using 'root' in routes file.
* Installed bootstrap gem using Gemfile
* Search bar on the page using bootsrap search navigation bar. Created a partial file navbar and render it in applicaion.html.erb
* Created a new controller weather details controller to fetch data from API and 
render data on a form. 
* Installed json gem to install json
* Generated rails model to deal with HTTP, JSON requests. 
* Helper method to check if weather is Hot, Warm or Cold depending on the temperature range.
* Search Form to allow user to search for weather.
* Weather search form to render current temperature and whether weather is Hot, Warm or Cold. 
* Added tests in test folder for controller and model
* Added Validation in Weather Detail model
*Rubocopy rails gem for code linter




