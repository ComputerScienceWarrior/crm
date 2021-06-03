class ApplicationController < ActionController::Base
    include DeviseWhitelist
    helper_method :current_user
    helper_method :current_company
    helper_method :is_guest?

    def is_guest?
        
        if !user_signed_in?
            redirect_to root_path
        end
    end

    def current_company
        current_user.company
    end
end
