class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json  
  
  private  
  
  def respond_with(resource, _opts = {})
    resource.persisted? ? register_success : register_failed
  end  
  
  def register_success
    render json: { message: 'Successfully signed up.' }
  end
  
  def register_failed
    render json: { message: "Error while signing up! :(" }
  end
end