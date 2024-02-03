class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.st_point :latlon, srid: 4326

      t.timestamps
    end
  end
end
