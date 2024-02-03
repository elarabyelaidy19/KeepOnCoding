class AddPostgisToplogy < ActiveRecord::Migration[7.1]
  def change 
    enable_extension "postgis_topology"
  end
end
