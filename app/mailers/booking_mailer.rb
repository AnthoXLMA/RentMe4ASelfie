class BookingMailer < ApplicationMailer
  default from: 'notifications@rentme4aselfie.com'

  def confirmation_booking
    @user = params[:user]
    @booking = params[:booking]
    mail(to: @booking.user.email, subject: 'Your booking is confirmed')
  end
end
