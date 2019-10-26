class Post < ActiveRecord::Base
  validates_presence_of :title 
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
end
