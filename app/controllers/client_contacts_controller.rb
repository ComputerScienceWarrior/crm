class ClientContactsController < ApplicationController
    before_action :find_client_contact, only: [:show, :edit, :update, :destroy]

    def index
        @client_contacts = ClientContact.all
    end

    def show
    end

    def new
        @client_contact = ClientContact.new 
    end

    def create
        @client_contact = ClientContact.new(client_contact_params)
        byebug
        if @client_contact.save
            redirect_to client_client_contact_path(@client, @client_contact)
        else
            render :new
        end
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
        params.require(:client_contact).permit(:first_name, :last_name, :email, :phone, :title)
    end

    def find_client_contact
        @client_contact = ClientContact.find(params[:id])
    end
end
