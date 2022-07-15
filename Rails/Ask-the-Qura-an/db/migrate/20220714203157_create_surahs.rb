class CreateSurahs < ActiveRecord::Migration[6.1]
  def change
    create_table :surahs do |t|
      t.string :name
      t.integer :surah_id
      t.string :place

      t.timestamps
    end
  end
end
