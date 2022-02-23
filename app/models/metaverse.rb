class Metaverse < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :users, through: :bookings

  validates :title, presence: true
  validates :price, presence: true

  has_one_attached :principal_picture
end
