class Document < ApplicationRecord
  belongs_to :topic
  
  validates_presence_of :name, :topic
end
