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
        if @company.update(company_params)
            redirect_to company_path(@company)
        else
            render :edit
        end
    end

    def destroy
        @company.destroy_all
        @company.destroy
        redirect_to root_path
    end

    private 

    def company_params
        params.require(:company).permit(:name, :industry, :size, :price_plan)
    end

    def find_company
        @company = Company.find(params[:id])
    end
end
