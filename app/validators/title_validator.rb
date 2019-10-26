class TitleValidator < ActiveModel::Validator
  def validate(record)
    unless record.title.include? %w[ 'Won\'t Believe' 'Secret' 'Top /0-9/' 'Guess' ]
      record.errors[:title] << 
  end 
end 