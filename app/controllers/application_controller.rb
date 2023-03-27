class ApplicationController < ActionController::API
  respond_to :json
  before_action :authenticate_user!, only: [:return_current_user]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def return_current_user
    render json: current_user
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation, :remember_me])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :username, :email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :current_password])
  end 
end
