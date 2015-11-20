class AddPeopleToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :people, :integer
  end
end
