class Topic < ApplicationRecord
  has_ancestry
  
  validates_presence_of :title
end
