class AddCoordinatesToFoodtrucks < ActiveRecord::Migration
  def change
    add_column :foodtrucks, :latitude, :float
    add_column :foodtrucks, :longitude, :float
  end
end
