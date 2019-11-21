class Show < ActiveRecord::Base 
  def self.highestRating
    self.maximum
  end
end