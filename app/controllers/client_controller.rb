class ClientController < ApplicationController

    before_action :find_client, only: [:show, :edit, :update, :destroy]
    before_action :is_guest?

    def index
        @clients = Client.all
    end

    def show
    end

    def new
        @client = Client.new
        @client.client_contacts.build
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
    end

    private 

    def client_params
        params.require(:client).permit(:name, :business, :size, :industry, :company_id)
    end

    def find_client
        @client = Client.find(params[:id])
    end

end
