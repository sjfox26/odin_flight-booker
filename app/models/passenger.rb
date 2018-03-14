class Passenger < ApplicationRecord
  has_many :flights, through: :bookings
  has_many :tickets
  has_many :booking, through: :tickets
end
