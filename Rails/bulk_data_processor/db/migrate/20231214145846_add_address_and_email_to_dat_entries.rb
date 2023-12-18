class AddAddressAndEmailToDatEntries < ActiveRecord::Migration[7.0]
  def change 
    add_column :data_entries, :address, :string 
    add_column :data_entries, :email, :string
  end
end
