class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| [a.airport_code, a.id] }
    @from_chosen = params[:from]
    @to_chosen = params[:to]
  end
end
