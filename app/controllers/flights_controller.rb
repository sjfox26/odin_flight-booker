class FlightsController < ApplicationController
  def index

    #select_tag needs an array of airport objects with display and id
    @airports = Airport.all.map { |a| [a.airport_code, a.id] }
    #order flights by their start time
    @dates_ordered = Flight.all.order(:start_time)
    #then make an array of dates for select_tag helper
    @dates = @dates_ordered.all.map { |d| d.start_time.strftime("%m/%d/%Y")}
    #get rid of duplicate dates
    @dates.uniq!
    #make array of passenger number for select_tag
    @passenger_options = [1,2,3,4]
    #variables to hold info passed in from params, the first argument of a select_tag
    @from_chosen = params[:from]
    @to_chosen = params[:to]
    @date_chosen = params[:date]
    @passengers_chosen = params[:passenger_number]

    @flights = Flight.search(params).order(:start_time)
  end
end
