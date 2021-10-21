class RemoveCommentsCountFromPosts < ActiveRecord::Migration[6.1]
  def change 
    change_table :posts do |t| 
      t.remove :comment_count 
      t.string :comment_blob 
      t.index :comment_blob 
    end 
  end
end
