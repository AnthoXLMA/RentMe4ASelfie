class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :company
  before_action :authenticate_user!
  # before_action :authenticate_company!
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :info, :error, :warning, :alert, :notice

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.with(user: @user).welcome_email.deliver_later

        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :encrypted_password, :password_confirmation, :first_name, :last_name])
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :password, :remember_me) }
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :encrypted_password, :password_confirmation, :name, :adress, :category])
    # devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
  end

  def default_ursl_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
