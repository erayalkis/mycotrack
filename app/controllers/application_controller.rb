class ApplicationController < ActionController::API
  respond_to :json
  before_action :authenticate_user!, only: [:return_current_user]

  def return_current_user
    render json: current_user
  end
end
