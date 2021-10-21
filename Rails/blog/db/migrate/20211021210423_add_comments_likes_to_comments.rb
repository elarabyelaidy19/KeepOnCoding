class AddCommentsLikesToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :comments_likes, null: false, foreign_key: true
  end
end
