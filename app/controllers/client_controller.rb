class ClientController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def index
        @clients = Client.all
    end

    def show
    end

    def new
        @client = Client.new
        # @client_contact = @client.client_contacts.build
    end

    def create
        @client = Client.new(client_params)
        if @client.save
            redirect_to client_path(@client)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @client.update(client_params)
    end

    def destroy
        @client.client_contacts.destroy_all
        @client.destroy
        redirect_to root_path
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
