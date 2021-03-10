class SessionController < ApplicationController
    
    def login
        @user = User.new
    end
    
    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to company_path(Company.find(@user.company_id))
        else
            render :login
        end
    end

    def destroy
        reset_session
        redirect_to login_path
    end

end
