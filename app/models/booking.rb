class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :metaverse
  has_one :review
end
