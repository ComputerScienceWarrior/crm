class ClientContactController < ApplicationController
    before_action :find_client_contact, only: [:index, :show, :edit, :update, :destroy]
    
    def index
        @client_contacts = ClientContact.all
    end

    def show
    end

    def new
        @client_contact = ClientContact.new 
    end

    def create
        # logic for creating a client_contact
    end

    def edit
    end

    def update
        # logic to update a client_contact
    end

    def destroy
        # logic to destroy a resource
    end

    private

    def client_contact_params
        params.require(:client).permit(:first_name, :last_name, :email, :phone, :title, :client_id)
    end

    def find_client_contact
        @client_contact = ClientContact.find(params[:id])
    end
end
