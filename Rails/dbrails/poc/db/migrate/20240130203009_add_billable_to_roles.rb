class AddBillableToRoles < ActiveRecord::Migration[7.1]
  def change
    add_column :roles, :billable, :boolean
  end
end
