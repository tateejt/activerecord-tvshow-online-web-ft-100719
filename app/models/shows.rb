class Show < ActiveRecord::Base 
  def self.highestRating
    self.maximum(:rating)
  end
  
  def self.mostPopularShow
    self.where("rating = ?", self.highestRating).first 
  end
  
  def self.lowestRating
    self.minimum(:rating)
  end
  
  def self.leastPopularShow
    self.where("rating = ?", self.lowestRating).last
  end
  
  def ratingsSum
    self.sum(:rating)
  end
  
  def popularShow 
    self.where("rating >= ?", 5)
  end
end