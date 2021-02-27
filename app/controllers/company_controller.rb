class CompanyController < ApplicationController
    # does it makes sense to have an index of companies? Probably not. Maybe for Admin routes, but not stadard user routes
    # create a 'home route'
    def show
        @company = Company.find(params[:id])
    end

    def new
        @company = Company.new
    end

    def create
        # logic to create a new company
    end

    def edit
        @company = Company.find(params[:id])
    end

    def update
        # logic to update a companies information
    end

    def destroy
        # logic to destroy a company and their resources
    end

    private 

    def company_params
        params.require(:company).permit(:name, :industry, :size, :price_plan)
    end
end
