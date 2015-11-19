class AddAddressToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :address, :string
  end
end
