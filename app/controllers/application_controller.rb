class ApplicationController < ActionController::Base
    helper_method :current_user
    helper_method :is_guest?
    helper_method :current_company

    def current_user
        User.find(session[:user_id])
    end

    def is_guest?
        if session[:user_id].nil?
            redirect_to root_path
        end
    end

    def current_company
        Company.find(session[:company_id])
    end
end
