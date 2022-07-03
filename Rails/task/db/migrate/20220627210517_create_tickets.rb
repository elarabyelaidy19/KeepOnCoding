class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :name 
      t.string :body 
      t.string :status

      t.timestamps
    end
  end
end
