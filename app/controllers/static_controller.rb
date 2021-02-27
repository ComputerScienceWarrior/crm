class StaticController < ApplicationController
    def home
        @page_title = "Home"
    end

    def about
        @page_title = "About"
    end
    
    def services
        @page_title = "Services"
    end

    def help
        @page_title = "Help"
    end

end
