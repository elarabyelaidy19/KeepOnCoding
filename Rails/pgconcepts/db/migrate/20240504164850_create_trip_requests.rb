class CreateTripRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :trip_requests do |t|
      t.integer :rider_id, index: true, null: false # index: FK
      t.integer :start_location_id, index: true, null: false # index: FK
      t.integer :end_location_id, index: true, null: false # index: FK

      t.timestamps # Rails adds null: false
    end
  end
end
