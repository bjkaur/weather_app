class CreateWeatherDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :weather_details do |t|

      t.timestamps
    end
  end
end
