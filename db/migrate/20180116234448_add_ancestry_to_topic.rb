class AddAncestryToTopic < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :ancestry, :string
    add_index :topics, :ancestry
  end
end
