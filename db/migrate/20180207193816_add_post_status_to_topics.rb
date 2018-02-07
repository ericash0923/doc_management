class AddPostStatusToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :status, :integer, default: 0
  end
end
