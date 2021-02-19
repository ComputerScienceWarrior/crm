class ClientController < ApplicationController

    def index
        @clients = Client.all
    end

    def show
        @client = Client.find(params[:id])
    end

    def new
        @client = Client.new
    end

    def create
        # logic to create a Client
    end

    def edit
        @client = Client.find(params[:id])
    end

    def update
        # logic to update client information
    end

    def destroy
        # logic to destroy a client and it's associations
    end
end
