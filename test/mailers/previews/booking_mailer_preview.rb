# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class BookingMailerPreview < ActionMailer::Preview
  def confirmation
    user = User.first
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.with(user: user).confirmation_booking
  end
end
