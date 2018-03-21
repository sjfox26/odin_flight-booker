class PassengerMailer < ApplicationMailer

  def thank_you_email(booking)
    @booking = booking
    @customer = @booking.passengers.first
    mail(to: @customer.email, subject: "Your flight confirmation")
  end

end
