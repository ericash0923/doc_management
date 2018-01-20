class AddTopicsToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_reference :documents, :topic, foreign_key: true
  end
end
