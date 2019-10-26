class Post < ActiveRecord::Base
  validates_presence_of :title 
  validates :content, lenth: { minimum: 250 }
  validates :summary, lenth: { maximum: 250 }
end
