class SessionController < ApplicationController
    
    # def login
    #     @user = User.new
    # end
    
    # def create
    #     @user = User.find_by(username: params[:user][:username])
    #     if @user && @user.authenticate(params[:user][:password])
    #         session[:user_id] = @user.id
    #         session[:company_id] = @user.company.id
    #         redirect_to company_path(Company.find(@user.company_id))
    #     else
    #         render :login
    #     end
    # end

    def google_oauth2
         # Get access tokens from the google server
         byebug
         access_token = request.env["omniauth.auth"]
         @user = User.from_omniauth(access_token)
        #  login_path(@user)
 
         # Access_token is used to authenticate request made from the rails application to the google server
         @user.google_token = access_token.credentials.token
 
         # Refresh_token to request new access_token
         # Note: Refresh_token is only sent once during the first request
         refresh_token = access_token.credentials.refresh_token
         @user.google_refresh_token = refresh_token if refresh_token.present?
         if @user.save!
            session[:user_id] = @user.id
            redirect_to user_path(@user)
         else
            render :new
         end
    end

    def destroy
        reset_session
        redirect_to login_path
    end

end
