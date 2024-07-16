class AddLatLngToPlaces < ActiveRecord::Migration[7.1]
  def change
    add_column :places, :lat, :decimal, precision: 16, scale: 10 
    add_column :places, :lng, :decimal, precision: 16, scale: 10 
  end
end
