class StaticController < ApplicationController
    before_action :set_page_titles

    def home
    end

    def about
    end
    
    def services
    end

    def help
    end

    private 

    def set_page_titles
        @page_title =  params[:action].capitalize
    end


end
