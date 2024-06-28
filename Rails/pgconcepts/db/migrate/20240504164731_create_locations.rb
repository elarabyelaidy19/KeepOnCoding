class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :address, null: false, index: true # store the string form of the address [See below], index: yes, search
      t.decimal :latitude, precision: 15, scale: 10, null: false, index: true # index: yes, search
      t.decimal :longitude, precision: 15, scale: 10, null: false, index: true # index: yes, search

      t.timestamps # Nullability: Rails adds null: false
    end
  end
end
