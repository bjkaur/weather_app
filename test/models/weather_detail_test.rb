require "test_helper"

class WeatherDetailTest < ActiveSupport::TestCase
  test "GET request" do 
    api.get('api/uri')
    expect(api.status).to eq (200)
    expect(api.message).to eq('OK')
  end

  if "POST request" do 
    api.post('/api/uri', {"website": "abcdefg"})
    expect(api.status).to eq(201)
  end
end
