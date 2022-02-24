class Metaverse < ApplicationRecord

  CATEGORIES = ["history", "future", "fantasy"]
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :users, through: :bookings

  validates :title, presence: true
  validates :price, presence: true
  validates :category, presence: true, inclusion: {
    in: CATEGORIES,
    message: "it's is not a valid category"
  }

  has_many_attached :pictures
end
