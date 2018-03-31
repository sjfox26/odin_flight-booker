class Passenger < ApplicationRecord
  has_many :flights, through: :bookings
  has_many :tickets
  has_many :bookings, through: :tickets

  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,
            presence: true,
            length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }
end
