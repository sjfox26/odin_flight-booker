class Passenger < ApplicationRecord
  has_many :flights, through: :bookings
end
