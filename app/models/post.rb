class Post < ActiveRecord::Base
  validates_presence_of :title 
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w[ Fiction Non-Fiction] }
  validate :is_clickbait
  
  CLICKBAIT_PATTERNS = [
    /Won't Believe/i,
    /Secret/i,
    /Top [0-9]*/i,
    /Guess/i
  ]
  
  def is_clickbait
    if CLICKBAIT_PATTERNS.none? { |pattern| pattern.match title }
      errors[:title] << 'Title must be clickbait!'
    end 
  end 
end
