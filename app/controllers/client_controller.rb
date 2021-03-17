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
        @client.company_id = current_company.id
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
        params.require(:client).permit(:name, :business, :size, :industry, :company_id, client_contacts_attributes: [:first_name, :last_name, :email, :phone, :title, :client_id])
    end

    def find_client
        @client = Client.friendly.find(params[:id])
    end

end
