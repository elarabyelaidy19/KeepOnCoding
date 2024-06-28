class AddClientReferenceToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :client, null: false, foreign_key: true
  end
end
