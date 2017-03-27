class AddTopicToPosts < ActiveRecord::Migration
  def change
 # #5
    add_column :posts, :topic_id, :integer
 # #6
    add_index :posts, :topic_id
  end
end