class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :metaverses, dependent: :destroy
  has_many :reviews
  has_many :bookings
  has_many :booked_metaverses, through: :bookings, source: :metaverses
end
