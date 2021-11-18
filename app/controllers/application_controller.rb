class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
        # check for the class of the object to determine what type it is
        case resource.class
        when @farmer
          farmer_path  
        when @officer
          officer_path
        end
    end

end
