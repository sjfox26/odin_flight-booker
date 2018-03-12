class Airport < ApplicationRecord
  has_many :departures, foreign_key: "start_city_id", class_name: "Flight"
  has_many :arrivals, foreign_key: "end_city_id", class_name: "Flight"
end
