require "test_helper"

class WeatherDetailsControllerTest < ActionDispatch::IntegrationTest
  test "Can see weather search details" do 
    get "/"
    assert_select "h1", "WealtherDetails#weather_search"
  end

  test "Parses JSON details of weather" do
    postcode_uri = WealtherDetail.postcode_uri(postcode: "LE1")
    @weather = JSON.parse WeatherDetail.new(postcode_uri).api_response
    get @temperature
    expect(response).to be_successful
    expect(response.body).to include("Test parsing JSON")
  end
end
