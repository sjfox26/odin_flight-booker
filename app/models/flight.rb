class Flight < ApplicationRecord
  belongs_to :from_airport, foreign_key: "start_city_id", class_name: "Airport"
  belongs_to :to_airport, foreign_key: "end_city_id", class_name: "Airport"

end
