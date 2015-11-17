class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :foodtruck


  validates :date, presence: true
  validates :price, presence: true
  validates :comment, presence: true
  validates :rating, inclusion: { in: [1,2,3,4,5], allow_nil: false }
  validates :user_id, presence: true
  validates :foodtruck_id, presence: true

end


 # t.date     "date"
 #    t.float    "price"
 #    t.string   "comment"
 #    t.integer  "rating"
 #    t.integer  "user_id"
 #    t.integer  "foodtruck_id"
 #    t.datetime "created_at",   null: false
 #    t.datetime "updated_at",   null: false
