class AddIndexToAuthrId < ActiveRecord::Migration[6.1]
  def change
    add_column :authr_ids, :autor_id, :string
    add_index :authr_ids, :autor_id
  end
end
