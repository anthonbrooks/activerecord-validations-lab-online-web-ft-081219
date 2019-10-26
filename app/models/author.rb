class Author < ActiveRecord::Base
  validates_presence_of :name 
  validates :name, uniqueness: true 
  
end
