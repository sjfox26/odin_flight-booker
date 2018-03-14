class Booking < ApplicationRecord
  belongs_to :flight
  has_many :tickets
  has_many :passengers, through: :tickets
end
