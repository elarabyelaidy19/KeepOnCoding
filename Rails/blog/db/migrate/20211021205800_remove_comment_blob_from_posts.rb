class RemoveCommentBlobFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :comment_blob, :string
  end
end
