class CreateTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :trips do |t|
      t.integer :trip_request_id, index: true, null: false # index: FK
      t.integer :driver_id, index: true, null: false # index: FK
      t.timestamp :completed_at # nullable
      t.integer :rating, index: true
      t.timestamps
    end
  end
end
