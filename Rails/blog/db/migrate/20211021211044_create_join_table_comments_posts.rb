class CreateJoinTableCommentsPosts < ActiveRecord::Migration[6.1]
  def change 
    create_join_table :comments, :posts, table_name: :pcomments
  end
end
