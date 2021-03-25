class OmniauthController < Devise::OmniauthCallbacksController

    def google_oauth2
        @user = User.create_from_provider_data(request.env["omniauth.auth"])
        @user.company_id = 1
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to new_user_registration_url
        end
    end
    
    def failure
        flash[:error] = "There was an error signing into the page, please try again later."
        redirect_to new_user_registration_url
    end
end
