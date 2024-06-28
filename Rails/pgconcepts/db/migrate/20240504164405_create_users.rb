class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false 
      t.string :last_name, null: false # index: no
      t.string :email, null: false # index: true
      t.string :type, null: false # index: maybe in future, partitioning

      t.timestamps # nullability: Rails adds null: false
    end 

    add_index :users, :email, unique: true
  end
end
