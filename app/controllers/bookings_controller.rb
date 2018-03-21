class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    params[:passenger_count].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:success] = "Your flight has been booked!  Enjoy your travels!"
      PassengerMailer.thank_you_email(@booking).deliver
      redirect_to @booking
    else
      flash[:error] = "You must enter all information for all passengers."
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def booking_params
    params.require(:booking).permit(:flight_id, :passengers_attributes => [:id, :name, :email])
  end
end
