class CompanyController < ApplicationController
    before_action :find_company, only: [:show, :edit, :update, :destroy]
    
    def index
        @companies = Company.all
    end
    
    def show
    end

    def new
        @company = Company.new
        @company.users.build
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
        @company.users.destroy_all
        @company.clients.destroy_all
        @company.destroy
        reset_session
        redirect_to root_path
    end

    private 

    def company_params
        params.require(:company).permit(:name, :industry, :size, users_attributes: [:first_name, :last_name, :username, :password, :password_confirmation, :email, :company_id])
    end

    def find_company
        @company = Company.friendly.find(params[:id])
    end
end
