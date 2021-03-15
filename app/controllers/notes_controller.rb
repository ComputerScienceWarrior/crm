class NotesController < ApplicationController
    before_action :find_note, only: [:show, :edit, :update, :destroy]
    before_action :find_client, only: [:new]
    before_action :define_user_and_client, only: [:create]
    def index
        @notes = Note.all
    end

    def show
    end

    def new
        @note = Note.new
    end

    def create
        if @note.save!
            redirect_to company_path(current_company)
        else
            render :new
        end
    end

    def edit 
    end

    def update
        # logic to update a note
    end

    def destroy
        @note.destroy
        redirect_to copmany_path(session[:company_id])
    end

    private

    def find_note
        @note = Note.find(params[:id])
    end

    def note_params
        params.require(:note).permit(:subject, :content, :client_id, :user_id)
    end

    def find_client
        @client = Client.friendly.find(params[:client_id])
    end

    def define_user_and_client
        @client = Client.friendly.find(params[:client_id])
        @note = Note.new(note_params)
        @note.user_id = current_user.id
        @note.client_id = @client.id
    end

end
