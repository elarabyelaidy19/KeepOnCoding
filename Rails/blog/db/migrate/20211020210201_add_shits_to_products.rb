class AddShitsToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :price, :decimal, precision: 5, scale: 2
    add_reference :products, :supplier, polymprphic: true, null: false, foreign_key: true
  end
end
