class NoteController < ApplicationController
    def index
        @notes = Note.all
    end

    def show
        @note = Note.find(params[:id])
    end

    def new
        @note = Note.new
    end

    def create
        # logic to create a new note
    end

    def edit 
        @note = Note.find(params[:id])
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

end
