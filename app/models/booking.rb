class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :metaverse
  has_one :review

  validates :start_at, presence: true
  validates :end_at, presence: true

  def current_user_can_leave_review?
    end_at < Date.today && self.review.nil?
  end
end
