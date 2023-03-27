class ApplicationController < ActionController::API
  respond_to :json
  before_action :authenticate_user!, only: [:return_current_user]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def return_current_user
    render json: current_user
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end 
end
