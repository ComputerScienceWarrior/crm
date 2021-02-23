class UserController < ApplicationController
    
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to login_path
        else 
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        # logic to update a users information
    end

    def destroy
        # logic to destroy a user and their associated resources
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation, :email, :company_id)
    end
end
