class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.datetime :date
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.references :foodtruck, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
