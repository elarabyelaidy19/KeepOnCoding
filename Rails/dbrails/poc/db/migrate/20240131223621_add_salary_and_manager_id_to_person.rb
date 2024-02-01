class AddSalaryAndManagerIdToPerson < ActiveRecord::Migration[7.1]
  def change 
    add_column :people, :salary, :integer 
    add_reference :people, :manager, foreign_key: {to_table: :people}
  end
end
