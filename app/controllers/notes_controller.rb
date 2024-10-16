class NotesController < ApplicationController

    def index
        @notes = Note.all
    end

    def create
        debugger
        @note = Note.new(title: params[:title], content: params[:content], created_by: params[:created_by])
        if @note.save
            render json: @note, status: :created
        else
            render json: @note.errors, status: :unprocessable_entity
        end
    end

    def new
        debugger
        @note = Note.new
        render json: @note
    end
end
