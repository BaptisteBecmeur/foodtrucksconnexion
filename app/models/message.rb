class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :foodtruck

  validates :date, presence: true
  validates :content, presence: true
  validates :user_id, presence: true
  validates :foodtruck, presence: true

end
