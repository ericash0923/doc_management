class Document < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  
  belongs_to :topic
  
  validates_presence_of :name, :attachment
  
  def self.most_recent(limit)
    order("created_at desc").limit(limit)
  end
end
