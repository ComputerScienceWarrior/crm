class SessionController < ApplicationController
    def login
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id 
            redirect_to root
        else
            render :new
        end
    end

    def destroy
        reset_session
        redirect_to login_path
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_conf, :email, :company_id)
    end
end
