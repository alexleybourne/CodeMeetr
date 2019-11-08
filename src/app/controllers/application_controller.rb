class ApplicationController < ActionController::Base
    
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :dob, :profile_image, :email])
    end
  
    def update_resource (resource, params)
      resource.update_without_password(params)
    end

end
