class Foodtruck < ActiveRecord::Base
  belongs_to :user

  CATEGORIES = ["burger", "bagel", "chicken"]

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
  validates :category, inclusion: { in: Foodtruck::CATEGORIES, allow_nil: false }
  validates :user_id, presence: true


end
