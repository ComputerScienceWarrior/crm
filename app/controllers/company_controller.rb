class CompanyController < ApplicationController
    before_action :find_company, only: [:show, :create, :edit, :update, :destroy]
    # does it makes sense to have an index of companies? Probably not. Maybe for Admin routes, 
    # but not stadard user routes
    # create a 'home route'
    def show
    end

    def new
        @company = Company.new
    end

    def create
        @company = Company.new(company_params)
        if @company.save
            redirect_to root_path
        else
            render :new
        end
    end

    def edit
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

    def find_company
        @company = Company.find(params[:id])
    end
end
