class ClientContactController < ApplicationController
    def index
        @client_contacts = ClientContact.all
    end

    def show
        @client_contact = ClientContact.find(params[:id])
    end

    def new
        @client_contact = ClientContact.new 
    end

    def create
        # logic for creating a client_contact
    end

    def edit
        @client_contact = ClientContact.find(params[:id])
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
end
