class AddPointToLocations < ActiveRecord::Migration[7.1]
  def change
    add_column :locations, :latlon, :st_point, geographic: true
  end
end
