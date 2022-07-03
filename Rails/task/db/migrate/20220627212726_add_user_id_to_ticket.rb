class AddUserIdToTicket < ActiveRecord::Migration[6.1]
  def change 
    add_reference :tickets, :user, foreign_key: true
    add_column :tickets, :assignee, :string
  end
end
