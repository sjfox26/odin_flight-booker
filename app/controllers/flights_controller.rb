class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| [a.airport_code, a.id] }
    @dates_ordered = Flight.all.order(:start_time)
    @dates = @dates_ordered.all.map { |d| d.start_time.strftime("%m/%d/%Y")}
    @dates.uniq!
    @passengers = [1,2,3,4]
    @from_chosen = params[:from]
    @to_chosen = params[:to]
    @date_chosen = params[:date]
    @passengers_chosen= params[:passengers]
  end
end
