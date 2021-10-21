class CreateCommentsLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :comments_likes do |t|
      t.integer :comment_count
      t.text :comment_type

      t.timestamps
    end
  end
end
