class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    params[:passenger_count].to_i.times { @booking.passengers.build }
  end

  def show
  end
end
