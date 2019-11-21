class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.mostPopularShow
    self.where("rating = ?", self.highest_rating).first 
  end
  
  def self.lowest_rating
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
  
  def showsByAlphabeticalOrder
    self.order(:name)
  end
end