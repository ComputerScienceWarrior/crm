class CaseController < ApplicationController
    def index
        @cases = Case.all
    end

    def show
        @case = Case.find(params[:id])
    end

    def new 
        @case = Case.new
    end

    def create 
        # logic to create a new case
    end

    def edit
        @case = Case.find(params[:id])
    end

    def update
        # logic to update controller
    end

    def destroy
        # logic to destroy a case
    end
end
