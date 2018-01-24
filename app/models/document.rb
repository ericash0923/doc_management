class Document < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  
  belongs_to :topic
  
  validates_presence_of :name
end
