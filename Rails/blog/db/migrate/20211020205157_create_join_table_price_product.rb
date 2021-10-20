class CreateJoinTablePriceProduct < ActiveRecord::Migration[6.1]
  def change
    create_join_table :prices, :products do |t|
      # t.index [:price_id, :product_id]
      # t.index [:product_id, :price_id]
    end
  end
end
