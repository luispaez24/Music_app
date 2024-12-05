#class ApplicationController < ActionController::Base
#end

#class ApplicationController < ActionController::Base
    #before_action :authenticate_user!  # Ensures user is logged in for actions
  #end
  class ApplicationController < ActionController::Base
    # Before any other controller actions, configure permitted parameters for Devise
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      # Permit email, password, and password_confirmation for sign-up
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation])
  
      # If you have additional fields, add them here
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password])
    end
  end