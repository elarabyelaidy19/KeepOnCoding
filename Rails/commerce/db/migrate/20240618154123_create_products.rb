class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :description
      t.string :status, null: false, default: 'active'
      t.string :slug, null: false
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
