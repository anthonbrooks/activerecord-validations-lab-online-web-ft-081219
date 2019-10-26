class TitleValidator < ActiveModel::Validator
  def validate(record)
    unless record.title.include? 
  end 
end 