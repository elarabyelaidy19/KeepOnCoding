class CreatePrice < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.decimal :amount
      t.integer :curr

      t.timestamps
    end
  end
end
