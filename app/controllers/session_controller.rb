class SessionController < ApplicationController
    
    def new
        @user = User.new
    end
    
    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to root_path
        else
            render :login
        end
    end

    def destroy
        reset_session
        redirect_to login_path
    end

end
