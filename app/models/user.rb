class User < ActiveRecord::Base
  has_many :foodtrucks

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
