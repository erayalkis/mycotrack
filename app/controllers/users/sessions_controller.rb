class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private  

  def respond_with(resource, _opts = {})
    render json: { message: 'Successfully logged in!' }, status: :ok
  end  
  
  def respond_to_on_destroy
    current_user ? log_out_success : log_out_failure
  end  
  
  def log_out_success
    render json: { message: "Successfully logged out." }, status: :ok
  end  
  
  def log_out_failure
    render json: { message: "Error while logging out! :("}, status: :unauthorized
  end
end