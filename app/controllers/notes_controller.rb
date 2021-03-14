class NotesController < ApplicationController
    before_action :find_note, only: [:show, :edit, :update, :destroy]
    before_action :find_client, only: [:new]
    def index
        @notes = Note.all
    end

    def show
    end

    def new
        @note = Note.new
    end

    def create
        @note = Note.new(note_params)
        @note.user_id = current_user.id
        @note.client_id = params[:client_id]
        if @note.save
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
        @client = Client.find(params[:client_id])
    end

end
