class AddSeasonToShows < ActiveRecord::Migrate[5.2]
  def change 
    add_column :shows, :season, :string
  end
end