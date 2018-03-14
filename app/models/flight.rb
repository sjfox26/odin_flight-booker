class Flight < ApplicationRecord
  belongs_to :from_airport, foreign_key: "start_city_id", class_name: "Airport"
  belongs_to :to_airport, foreign_key: "end_city_id", class_name: "Airport"

  def self.search(params)
    if params[:search_clicked]
      date_formatted = format_date(params[:date])
      Flight.where("start_city_id = ? AND end_city_id = ? AND start_time LIKE ?", params[:from], params[:to], "%#{date_formatted}%")
    else
      Flight.none
    end

  end

  def self.format_date(date)
    year = date[6..9] #extract year
    month = date[0..1] #extract month
    day = date[3..4] #extract day
    return "#{year}-#{month}-#{day}"
  end
end
