class Flight < ApplicationRecord
  belongs_to :from_airport, foreign_key: "start_city", class_name: "Airport"
  belongs_to :to_airport, foreign_key: "end_city", class_name: "Airport"

end
