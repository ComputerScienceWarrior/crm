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
        # logic to destroy a note and it's resources.
    end
end
