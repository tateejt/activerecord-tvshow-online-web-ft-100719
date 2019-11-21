class CreateShows < ActiveRecord::Migrate[5.2]
  def change
    create_table :shows do |t|
      t.string :name 
      t.string :network
      t.
    end
  end
end