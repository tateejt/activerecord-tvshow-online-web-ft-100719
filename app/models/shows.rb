class Show < ActiveRecord::Base 
  def self.highestRating
    self.maximum(:rating)
  end
  
  def self.mostPopularShow
    self.where("rating = ?", self.highestRating)
  end
end