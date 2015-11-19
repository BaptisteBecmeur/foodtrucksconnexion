class AddAddressToFoodtrucks < ActiveRecord::Migration
  def change
    add_column :foodtrucks, :address, :string
  end
end
