class Topic < ApplicationRecord
  include Tree
  
  
  has_many :documents, dependent: :destroy
  validates_presence_of :title
  

end
