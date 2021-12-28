class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :company
  before_action :authenticate_user!
  # before_action :authenticate_company!
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :info, :error, :warning, :alert, :notice

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
