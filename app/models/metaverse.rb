class Metaverse < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :users, through: :bookings

  validates :title, presence: true
  validates :price, presence: true
  validates :category, presence: true, inclusion: {
    in: ["history", "future", "fantasy"],
    message: "it's is not a valid category"
  }

  has_one_attached :principal_picture
end
