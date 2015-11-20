class Foodtruck < ActiveRecord::Base
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :messages

  CATEGORIES = ["bagel", "burger", "chicken","wrap"]

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
  validates :category, inclusion: { in: Foodtruck::CATEGORIES, allow_nil: false }
  # geocoded_by :address
  # after_validation :geocode, if: :address_changed?

  # validates :city, presence: true, uniqueness: true
  # validates :phone_number, presence: true
  # validates :user_id, presence: true

  mount_uploader :image, ImageUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
