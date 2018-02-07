class Topic < ApplicationRecord
  include Tree
  has_ancestry
  
  enum status: { admin: 0, non_admin: 1 }
  
  has_many :documents, dependent: :destroy
  validates_presence_of :title
  

end
