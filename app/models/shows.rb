class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    self.where("rating = ?", self.highest_rating).first 
  end
  
  def self.lowest_rating
    self.minimum(:rating)
  end
  
  def self.least_popular_show
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