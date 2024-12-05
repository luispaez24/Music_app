#class RegistrationsController < ApplicationController
#end
#class RegistrationsController < Devise::RegistrationsController
    #protected
  
    #def after_sign_up_path_for(resource)
     # songs_path # Redirect to the songs page after sign-up
    #end
  #end


 # class RegistrationsController < Devise::RegistrationsController
    # Redirect to the songs page after sign-up
 #   protected
#    def after_sign_up_path_for(resource)
#      songs_path
#    end
  
    # Ensure the `new` action is present
#    def new
#      super
#    end
  
    # Ensure the `create` action is present
#    def create
#      super
 #   end
 # end


 class RegistrationsController < Devise::RegistrationsController
    before_action :set_devise_mapping
  
    protected
  
    def after_sign_up_path_for(resource)
      songs_path
    end
  
    def after_sign_in_path_for(resource)
      songs_path
    end
  
    def new
      super
    end
  
    def create
      super
    end
  
    private
  
    def set_devise_mapping
      @request.env["devise.mapping"] = Devise.mappings[:user]
    end
  end

 