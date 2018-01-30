class Topic < ApplicationRecord
  include Tree
  has_ancestry
  
  has_many :documents, dependent: :destroy
  validates_presence_of :title
  

end
