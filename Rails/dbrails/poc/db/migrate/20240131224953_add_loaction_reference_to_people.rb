class AddLoactionReferenceToPeople < ActiveRecord::Migration[7.1]
  def change
    add_reference :people, :location, foreign_key: true
  end
end
