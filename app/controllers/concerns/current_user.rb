module CurrentUser
    extend ActiveSupport::Concern

    before_action :current_user
    
    def current_user
        User.find(session[:user_id])
    end
end