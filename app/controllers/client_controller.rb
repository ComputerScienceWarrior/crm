class ClientController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def index
        @clients = Client.all
    end

    def show
    end

    def new
        @client = Client.new
    end

    def create
        # logic to create a Client
    end

    def edit
    end

    def update
        # logic to update client information
    end

    def destroy
        # logic to destroy a client and it's associations
    end

    private 

    def client_params
        params.require(:client).permit(:name, :business, :size, :industry, :company_id)
    end

    def find_client
        @client = Client.find(params[:id])
    end
end
