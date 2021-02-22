class SessionController < ApplicationController
    def login
    end

    def new
        @user = User.new
    end

    def create
        # logic to create a user
    end
end
