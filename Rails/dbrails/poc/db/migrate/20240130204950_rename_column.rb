class RenameColumn < ActiveRecord::Migration[7.1]
  
  def up 
    rename_column :roles, :type, :name
  end 

  def down
    rename_column :roles, :name, :type
  end 


end
