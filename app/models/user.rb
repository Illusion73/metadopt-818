class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :metaverses, dependent: :destroy
  has_many :reviews
  has_many :bookings
  has_many :user_booked_metaverses, through: :bookings, source: :metaverse
  ##has_many :owner_booked_metaverses, through: :metaverses, source: :booking   TODO ca marche pas a voir pk un jour inchalah

  validates :first_name, presence: true
  validates :last_name, presence: true


  def owner_booked_metaverses
    Booking.joins(:metaverse).where(metaverse: { user_id: self.id })
  end

end
