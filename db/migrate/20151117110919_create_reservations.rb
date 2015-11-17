class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :date
      t.float :price
      t.string :comment
      t.integer :rating
      t.references :user, index: true, foreign_key: true
      t.references :foodtruck, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
