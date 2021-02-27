module CurrentUser
    extend ActiveSupport::Concern

    included do 
        before_filter :current_user
    end
    
    def current_user
        User.find(session[:user_id])
    end
end