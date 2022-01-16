class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user] # Instance variable => available in view
    mail(to: @user.email, subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!
  end

  # def confirmation_booking
  #   @user = params[:user]
  #   @url  = 'http://example.com/login'
  #   mail(to: @user.email, subject: 'Your RentMe4ASelfie booking is confirmed')
  # end
end
