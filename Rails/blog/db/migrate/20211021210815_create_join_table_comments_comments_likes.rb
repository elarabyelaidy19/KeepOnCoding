class CreateJoinTableCommentsCommentsLikes < ActiveRecord::Migration[6.1]
  def change
    create_join_table :comments, :comments_likes do |t|
      # t.index [:comment_id, :comments_like_id]
      # t.index [:comments_like_id, :comment_id]
    end
  end
end
