class UserMailer < ApplicationMailer
  default from: 'notifications@rentme4aselfie.com'

  def welcome_email
    @user = params[:user] # Instance variable => available in view
    mail(to: @user.email, subject: 'Your account is confirmed')
    # This will render a view in `app/views/user_mailer`!
  end

  #  def confirmation_booking
  #   @user = params[:user]
  #   mail(to: @user.email, subject: 'Your RentMe4ASelfie booking is confirmed')
  # end
end
