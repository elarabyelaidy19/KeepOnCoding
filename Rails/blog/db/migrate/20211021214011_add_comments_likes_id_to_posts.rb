class AddCommentsLikesIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :comments_likes
    add_foreign_key :posts, :comments_likes
  end
end
