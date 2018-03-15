class Passenger < ApplicationRecord
  has_many :flights, through: :bookings
  has_many :tickets
  has_many :bookings, through: :tickets
end
